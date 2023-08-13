import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.IRecipe;
 
global Digestion_tank as RecipeMap = FactoryRecipeMap.start("Digestion_tank_controller")
    .maxInputs(4)
    .maxOutputs(4)
    .maxFluidInputs(4)
    .maxFluidOutputs(2)
    .build();
 
Builder.start("Digestion_tank", 32006)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
		    .aisle("#MMMMM#", "#DAAAD#", "##MMM##", "#######")
            .aisle("MNNNNNM", "D#####D", "#M###M#", "#MBBBM#")
            .aisle("MNNNNNM", "A#####A", "M#####M", "#B###B#")
            .aisle("MNNNNNM", "A#####A", "M#####M", "#B###B#")
            .aisle("MNNNNNM", "A#####A", "M#####M", "#B###B#")
            .aisle("MNNNNNM", "D#####D", "#M###M#", "#MBBBM#")
	        .aisle("#MMCMM#", "#DAAAD#", "##MMM##", "#######")
            .where("C", controller.self())
            .where("A", <metastate:gregtech:wire_coil:3>)
            .where("B", <metastate:gregtech:boiler_casing:3>)
            .where("D", <metastate:gregtech:boiler_firebox_casing:3>)
            .where("N", <metastate:gregtech:metal_casing:7>)
            .where("M", CTPredicate.states(<metastate:gregtech:metal_casing:7>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(Digestion_tank)
    .withBaseTexture(<metastate:gregtech:metal_casing:7>)
    .buildAndRegister();
Digestion_tank.recipeBuilder()
    .duration(500)  
    .EUt(500)  
    .inputs(<gregtech:meta_dust:32036> * 1) 
    .fluidInputs(<liquid:nitration_mixture> * 800)  
    .fluidOutputs(<liquid:goldcl> * 200,<liquid:nitrogen_dioxide> * 500) 
	.outputs(<gregtech:meta_dust:32037> * 1)
    .buildAndRegister(); 

Digestion_tank.recipeBuilder()
    .duration(40)  
    .EUt(486)  
    .inputs(<contenttweaker:haidai_item>*3) 
    .fluidInputs(<liquid:diluted_sulfuric_acid>*400)  
    .fluidOutputs(<liquid:fujihaidai>*576) 
    .buildAndRegister(); 

Digestion_tank.recipeBuilder()
    .duration(40)  
    .EUt(486)  
    .fluidInputs(<liquid:rare_earth_hydroxides_solution>*125,<liquid:nitric_acid>*144)  
    .fluidOutputs(<liquid:fujixitu>*576) 
    .buildAndRegister(); 
	
	
Digestion_tank.recipeBuilder()
    .duration(900)  
    .EUt(486)  
    .inputs(<gregtech:meta_dust:2522>*6) 
    .fluidInputs(<liquid:water>*1000,<liquid:nitric_acid>*144)  
    .outputs(<contenttweaker:iro2_item>*4,<gregtech:meta_dust:2057>*3)
    .buildAndRegister(); 
	
Digestion_tank.recipeBuilder()
    .duration(600)  
    .EUt(3840)  
    .inputs(<gregtech:meta_dust:1598>,<gregtech:meta_dust:377> * 3) 
    .fluidInputs(<liquid:water>*1000,<liquid:diethylhexyl_phosphoric_acid>*1000)  
    .fluidOutputs(<liquid:rare_earth_hydroxides_solution>*1000)
    .buildAndRegister(); 

Digestion_tank.recipeBuilder()
    .duration(500)  
    .EUt(1920)  
    .inputs(<gregtech:meta_dust:2512>*6) 
    .fluidInputs(<liquid:sulfuric_acid> * 1000)  
    .fluidOutputs(<liquid:zrso4>*1000) 
    .buildAndRegister(); 

Digestion_tank.recipeBuilder()
    .duration(500)  
    .EUt(1920)  
    .inputs(<contenttweaker:zrcl_item>*6) 
    .fluidInputs(<liquid:ammonia> * 6000)  
    .outputs(<contenttweaker:hzroo_item>*5,<contenttweaker:hfcl_item>*1,<gregtech:meta_dust:2060>*6) 
    .buildAndRegister(); 
