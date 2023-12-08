import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;

import mods.gregtech.predicate.IPredicate;
import mods.gregtech.predicate.ICandidates;
import mods.gregtech.multiblock.IBlockWorldState;
import crafttweaker.block.IBlockState;

import mods.gregtech.multiblock.IMultiblockShapeInfo;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import crafttweaker.world.IFacing;
import mods.gregtech.render.MoveType;

import crafttweaker.data.IData;
import mods.gregtech.multiblock.functions.IInvalidateStructureFunction;
import mods.gregtech.multiblock.functions.IFormStructureFunction;
import mods.gregtech.multiblock.IPatternMatchContext;
import mods.gregtech.multiblock.functions.ICheckRecipeFunction;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.multiblock.functions.IDisplayTextFunction;
import crafttweaker.formatting.IFormattedText;

import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.functions.IGetRealValueFunction;
import mods.gregtech.recipe.CustomRecipeProperty;

//线圈预注册 关联数组
val wire_coil_temperature_map = {
    "gregtech:wire_coil:0" : 1800,
    "gregtech:wire_coil:1" : 2700,
    "gregtech:wire_coil:2" : 3600,
    "gregtech:wire_coil:3" : 4500,
    "gregtech:wire_coil:4" : 5400,
    "gregtech:wire_coil:5" : 7200,
    "gregtech:wire_coil:6" : 9001,
    "gregtech:wire_coil:7" : 10800,
} as int[string];

//********** pattern + shaps builder **********//
val multiblockBuild = Builder.start("septic_tank", 32021)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                    val coilPredicate = function(blockWorldState as IBlockWorldState) as bool {
                        val blockState as IBlockState = blockWorldState.state;
                        if (blockState.block.definition.id == "gregtech:wire_coil") { 
                            val id as string = blockState.block.definition.id + ":" + blockState.withProperty("active", "false").meta;
                            if (id != blockWorldState.matchContext.getOrDefault("CoilType", id)) { 
                                blockWorldState.setError("all coils should be the same type");
                                return false;
                            } else {
                                blockWorldState.matchContext.set("CoilType", id);
                                blockWorldState.matchContext.setInt("coils_temperature", wire_coil_temperature_map[id]);
                            }
                            blockWorldState.matchContext.addVABlock(blockWorldState.pos);
                            return true;
                        }
                        return false;
                    } as IPredicate;
                    val coilCandidates = function() as IBlockInfo[] {
                        val candidates as IBlockInfo[] = [
                            <metastate:gregtech:wire_coil:0>,
                            <metastate:gregtech:wire_coil:1>,
                            <metastate:gregtech:wire_coil:2>,
                            <metastate:gregtech:wire_coil:3>,
                            <metastate:gregtech:wire_coil:4>,
                            <metastate:gregtech:wire_coil:5>,
                            <metastate:gregtech:wire_coil:6>,
                            <metastate:gregtech:wire_coil:7>
                        ];
                        return candidates;
                    } as ICandidates;
                    val COILS as CTPredicate = CTPredicate(coilPredicate, coilCandidates).addTooltips("all coils should be the same type");

                    return FactoryBlockPattern.start()
                                .aisle("XXXX", "XCCM", "XXXX")
                                .aisle("XXXX", "C##C", "XXXX")
                                .aisle("XXXX", "C##C", "XXXX")
                                .aisle("XSXX", "XCCX", "XXXX")
                            .where('S', controller.self())
                            .where('X', (<metastate:minecraft:brick_block> as CTPredicate).setMinGlobalLimited(9)
                                    | controller.autoAbilities(true, true, true, true, true, true, false))
                            .where('M', <mte_ability:MUFFLER_HATCH>)
                            .where('C', COILS)
                            .where('#', CTPredicate.getAir())
                            .build();
                 } as IPatternBuilderFunction)
    .withRecipeMap(
        FactoryRecipeMap.start("septic_tank", <recipe_property:ebf_temperature>) // define our own RecipeMap. And define a recipe property with the key tempurature (<recipe_property:key>).
            .minInputs(1)
            .maxInputs(3)
            .minOutputs(1)
            .maxOutputs(2)
            .maxFluidInputs(1)
            .maxFluidOutputs(1)
            .setProgressBar(<texture_area:PROGRESS_BAR_COMPRESS>, MoveType.HORIZONTAL) // Let's try a different texture.
            .setSound(<sound:gregtech:tick.furnace>) // CEu sound is reused here. mods.gregtech.ISound.registerSound("modid:xxxxx") to register the sound in #loader preinit.
            .build())
    .withBaseTexture(<metastate:minecraft:brick_block>);

//JEI预览 包括IO位置以及线圈升级
val shapeBuilder = FactoryMultiblockShapeInfo.start()
    .aisle("EIOF", "DCCH", "MXXX")
    .aisle("XXXX", "C##C", "XXXX")
    .aisle("XXXX", "C##C", "XXXX")
    .aisle("XSXX", "XCCX", "XXXX")
    .where('X', <metastate:minecraft:brick_block>)
    .where('S', IBlockInfo.controller("septic_tank", IFacing.south())) // CONTROLLER IBlockInfo.controller(loc, IFacing) pay attention to the position of IFacing
    .where('#', IBlockInfo.EMPTY)
    .where('E', <mte:ENERGY_INPUT_HATCH>[2], IFacing.north()) // MV ENERGY_INPUT_HATCH
    .where('I', <mte:ITEM_IMPORT_BUS>[1], IFacing.south())
    .where('O', <mte:ITEM_EXPORT_BUS>[1], IFacing.south())
    .where('F', <mte:FLUID_IMPORT_HATCH>[1], IFacing.west())
    .where('D', <mte:FLUID_EXPORT_HATCH>[1], IFacing.east())
    .where('H', <mte:MUFFLER_HATCH>[1], IFacing.up())
    .where('M', <mte:MAINTENANCE_HATCH>[0], IFacing.north());
val septic_tank =multiblockBuild
    .addDesign(shapeBuilder.where('C', <metastate:gregtech:wire_coil:0>).build()) // set the coil block and build
    .addDesign(shapeBuilder.where('C', <metastate:gregtech:wire_coil:1>).build())
    .addDesign(shapeBuilder.where('C', <metastate:gregtech:wire_coil:2>).build())
    .addDesign(shapeBuilder.where('C', <metastate:gregtech:wire_coil:3>).build())
    .addDesign(shapeBuilder.where('C', <metastate:gregtech:wire_coil:4>).build())
    .addDesign(shapeBuilder.where('C', <metastate:gregtech:wire_coil:5>).build())
    .addDesign(shapeBuilder.where('C', <metastate:gregtech:wire_coil:6>).build())
    .addDesign(shapeBuilder.where('C', <metastate:gregtech:wire_coil:7>).build())
    .buildAndRegister();

//********** set optional properties **********//
//共用 以及 维护仓 的配置
septic_tank.canBeDistinct = false;
septic_tank.hasMufflerMechanics = true;

//********** set optional functions **********//
val V = [8, 32, 128, 512, 2048, 8192, 32768, 131072, 524288, 2097152, 8388608, 33554432, 134217728, 536870912] as long[];

val getTierByVoltage = function (voltage as long) as int{
   var tier as int = 1;
   while (tier < V.length) {
       if (voltage == V[tier]) {
           return tier;
       } else if (voltage < V[tier]) {
           return ((tier - 1 > 0) ? tier - 1 : 0);
       }
       tier += 1;
   }
   return ((V.length - 1 > tier) ? tier : V.length - 1);
};

// read temperature when structure formed
septic_tank.formStructureFunction = function (controller as IControllerTile, context as IPatternMatchContext) {
   var blastFurnaceTemperature as int = context.getInt("coils_temperature");
   blastFurnaceTemperature += max(100 * (getTierByVoltage(controller.energyContainer.inputVoltage as long) - 2), 0); // voltage overclock temperature
   controller.setExtraData(blastFurnaceTemperature as IData); // IData: set blastFurnaceTemperature
} as IFormStructureFunction;

// clear temperature when structure is invalid
septic_tank.invalidateStructureFunction = function (controller as IControllerTile) {
   controller.setExtraData((0 as IData)); // IData: blastFurnaceTemperature = 0
} as IInvalidateStructureFunction;

// check current recipe available according to the temperature.
septic_tank.checkRecipeFunction = function(controller as IControllerTile, recipe as IRecipe, consumeIfSuccess as bool) as bool {
    val blastFurnaceTemperature as int = controller.getExtraData().asInt();
    val recipeTemperature = recipe.getIntegerProperty("ebf_temperature"); // read temperature from <recipe_property:ebf_temperature>
    return blastFurnaceTemperature >= recipeTemperature;
} as ICheckRecipeFunction;

// add display msgs in the controller gui
septic_tank.displayTextFunction = function(controller as IControllerTile) as IFormattedText[] {
    if (controller.isStructureFormed()) {
        val blastFurnaceTemperature as int = controller.getExtraData().asInt();
        val info as IFormattedText = format.red("最大反应温度: " + blastFurnaceTemperature + "K");
        return ([info] as IFormattedText[]);
    }
    return null;
} as IDisplayTextFunction;

//********** set recipe logic functions **********//
// set overclocking according to the temperature
septic_tank.runOverclockingLogic = function(recipeLogic as IRecipeLogic, recipe as IRecipe, negativeEU as bool, maxOverclocks as int) as int[] {
    val recipeEU as int = recipe.getEUt();
    val maxVoltage as long = recipeLogic.maxVoltage;
    val dur as int = recipe.getDuration();
    val temperature as int = recipeLogic.metaTileEntity.getExtraData().asInt();
    val recipe_temperature as int = recipe.getIntegerProperty("ebf_temperature"); // read temperature from <recipe_property:ebf_temperature>
    // To avoid the complexity of the code, the built-in function is called here.
    // heatingCoilOverclockingLogic() and standardOverclockingLogic() are two built-in overclocking functions of CEu.
    return IRecipeLogic.heatingCoilOverclockingLogic(recipeEU, maxVoltage, dur, maxOverclocks, temperature, recipe_temperature);
} as IRunOverclockingLogicFunction;

//********** set Recipe Property **********//
// set tips in JEI
<recipe_property:ebf_temperature>.isHidden = false; // is hidden in JEI.
<recipe_property:ebf_temperature>.color = -1; // set color
<recipe_property:ebf_temperature>.getRealValueFunction = function (recipeProperty as CustomRecipeProperty, value as string) as IFormattedText {
    // val temperature = (value as IData)asInt(); // this can be used to convert type
    return format.red(value);
} as IGetRealValueFunction;


// add a simple recipe for our magic_miner RecipeMap.
septic_tank.recipeMap .recipeBuilder()
	.fluidInputs(<liquid:fermented_biomass>*6000)
    .outputs(<gregtech:meta_item_1:1001>*10) 
	.fluidOutputs(<liquid:biogas>*6000)
	.EUt(30)
    .duration(9000) 
	.property("ebf_temperature", 2700)
    .buildAndRegister(); 

septic_tank.recipeMap .recipeBuilder()
	.fluidInputs(<liquid:biomass>*5000)
	.fluidOutputs(<liquid:fermented_biomass>*5000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 2700)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.fluidInputs(<liquid:gtfo_apple_cider>*5000)
	.fluidOutputs(<liquid:fermented_biomass>*5000)
	.EUt(480)
    .duration(6000) 
    .property("ebf_temperature", 2700)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.fluidInputs(<liquid:gtfo_potato_juice>*5000)
	.fluidOutputs(<liquid:fermented_biomass>*5000)
	.EUt(480)
    .duration(6000) 
    .property("ebf_temperature", 2700)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.fluidInputs(<liquid:gtfo_wheaty_juice>*5000)
	.fluidOutputs(<liquid:fermented_biomass>*5000)
	.EUt(480)
    .duration(6000) 
    .property("ebf_temperature", 2700)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<ore:fish>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(480)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:wheat>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:reeds>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:bread>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:melon>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:beetroot>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:carrot>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:apple>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:potato>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:spider_eye>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:poisonous_potato>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:red_flower:*>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<ore:treeSapling>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<minecraft:wheat_seeds>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .property("ebf_temperature", 1600)
    .buildAndRegister(); 
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<ore:listAllseed>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
    .buildAndRegister();
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<ore:listAllgrain>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
	.property("ebf_temperature", 1600)
    .buildAndRegister();
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<ore:listAllfruit>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
	.property("ebf_temperature", 1600)
    .buildAndRegister();
	
septic_tank.recipeMap .recipeBuilder()
	.inputs(<ore:listAllveggie>*10)
	.fluidInputs(<liquid:water>*6000)
	.fluidOutputs(<liquid:fermented_biomass>*6000)
	.EUt(120)
    .duration(6000) 
	.property("ebf_temperature", 1600)
    .buildAndRegister();



// These are best specified in .lang files, since these may not work properly.
game.setLocalization(
    "gregtech.recipe.ebf_temperature",
    "炖屎温度: %sK"
);
game.setLocalization(
    "multiblocktweaker.machine.septic_tank.name",
    "化粪池"
);
game.setLocalization(
    "multiblocktweaker.multiblock.septic_tank.description",
    "你需要的生物大工厂"
);

