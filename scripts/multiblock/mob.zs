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
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
global mob as RecipeMap = FactoryRecipeMap.start("mob_controller")
    .maxInputs(2)
    .maxFluidInputs(2)
	.maxFluidOutputs(2)
	.maxOutputs(8)
    .build();
 
Builder.start("mob", 32030)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("NNNNN", "ZCCCZ", "ZCCCZ", "ZCCCZ", "ZCCCZ", "ZCCCZ","NNNNN")
            .aisle("NNNNN", "CBBBC", "C###C", "C###C", "C###C", "C###C","NNNNN")
            .aisle("NNNNN", "CBBBC", "C###C", "C###C", "C###C", "C###C","NNNNN")
            .aisle("NNNNN", "CBBBC", "C###C", "C###C", "C###C", "C###C","NNNNN")
            .aisle("NNXNN", "ZCCCZ", "ZCCCZ", "ZCCCZ", "ZCCCZ", "ZCCCZ","NNNNN")
            .where("X", controller.self())
			.where("Z", <metastate:gregtech:meta_block_frame_20:4>)
			.where("C", <metastate:gregtech:transparent_casing>)
			.where("B", <metastate:extrautils2:spike_diamond>)
            .where("N", CTPredicate.states(<metastate:gregtech:metal_casing:4>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(mob)
    .withBaseTexture(<metastate:gregtech:metal_casing:4>)
    .buildAndRegister();

mob.recipeBuilder() 
    .notConsumable(<minecraft:skull:4>*4,<enderio:item_basic_capacitor:2>)	
	.fluidInputs(<liquid:sulfuric_acid>*125)
    .chancedOutput(<magicbees:resource:3>, 6000, 1000)
	.chancedOutput(<magicbees:resource:3>, 4000, 1000)
	.chancedOutput(<magicbees:resource:3>, 2000, 1000)
	.chancedOutput(<magicbees:resource:4>, 4000, 1000)
	.chancedOutput(<magicbees:resource:4>, 2000, 1000)
	.chancedOutput(<minecraft:skull:4>, 250, 250)
	.EUt(512)
    .duration(1200) 
    .buildAndRegister(); 

mob.recipeBuilder() 
    .notConsumable(<minecraft:skull:1>*4,<enderio:item_basic_capacitor:2>)	
	.fluidInputs(<liquid:sulfuric_acid>*125)
    .chancedOutput(<magicbees:resource:3>, 6000, 1000)
	.chancedOutput(<magicbees:resource:3>, 4000, 1000)
	.chancedOutput(<magicbees:resource:3>, 2000, 1000)
	.chancedOutput(<magicbees:resource:4>, 4000, 1000)
	.chancedOutput(<magicbees:resource:4>, 2000, 1000)
	.chancedOutput(<minecraft:skull:1>, 250, 250)
	.EUt(512)
    .duration(1200) 
    .buildAndRegister(); 


mob.recipeBuilder() 
    .notConsumable(<enderio:block_enderman_skull>*4,<enderio:item_basic_capacitor:2>)	
	.fluidInputs(<liquid:sulfuric_acid>*125)
	.chancedOutput(<minecraft:ender_pearl>, 8000, 1000)
	.chancedOutput(<minecraft:ender_pearl>, 6000, 1000)
	.chancedOutput(<minecraft:ender_pearl>, 4000, 1000)
	.chancedOutput(<enderio:block_enderman_skull>, 2000, 1000)
	.chancedOutput(<enderio:block_enderman_skull>, 1000, 1000)
	.EUt(512)
    .duration(1200) 
    .buildAndRegister(); 

mob.recipeBuilder() 
    .notConsumable(<minecraft:skull:2>*4,<enderio:item_basic_capacitor:2>)	
	.fluidInputs(<liquid:sulfuric_acid>*125)
	.chancedOutput(<gregtech:meta_item_1:1001>, 5000, 1000)
	.chancedOutput(<minecraft:skull:2>, 1000, 1000)
	.chancedOutput(<minecraft:rotten_flesh>, 8000, 1000)
	.chancedOutput(<minecraft:rotten_flesh>, 8000, 1000)
	.EUt(512)
    .duration(1200) 
    .buildAndRegister(); 

mob.recipeBuilder() 
    .notConsumable(<minecraft:skull>*4,<enderio:item_basic_capacitor:2>)	
	.fluidInputs(<liquid:sulfuric_acid>*125)
	.chancedOutput(<minecraft:bone>*3, 5000, 1000)
	.chancedOutput(<minecraft:bone>*2, 4000, 1000)
	.chancedOutput(<minecraft:bone> *2, 2000, 1000)
	.chancedOutput(<minecraft:skull>, 1000, 1000)
	.EUt(512)
    .duration(1200) 
    .buildAndRegister(); 

mob.recipeBuilder() 
    .notConsumable(<minecraft:spider_eye>*64,<enderio:item_basic_capacitor:2>)	
	.fluidInputs(<liquid:sulfuric_acid>*125)
	.chancedOutput(<minecraft:string>*3, 8000, 1000)
	.chancedOutput(<minecraft:string>*2, 6000, 1000)
	.chancedOutput(<minecraft:string>*2, 4000, 1000)
	.chancedOutput(<minecraft:spider_eye>, 5000, 1000)
	.EUt(512)
    .duration(1200) 
    .buildAndRegister(); 

mob.recipeBuilder() 
    .notConsumable(<minecraft:slime_ball>*64,<enderio:item_basic_capacitor:2>)	
	.fluidInputs(<liquid:sulfuric_acid>*125)
	.chancedOutput(<tconstruct:edible:1>, 8000, 1000)
	.chancedOutput(<tconstruct:edible:2>, 8000, 1000)
	.chancedOutput(<tconstruct:edible:4>, 8000, 1000)
	.chancedOutput(<minecraft:slime_ball>, 8000, 1000)
	.EUt(512)
    .duration(1200) 
    .buildAndRegister(); 

mob.recipeBuilder() 
    .notConsumable(<minecraft:blaze_rod>*64,<enderio:item_basic_capacitor:2>)	
	.fluidInputs(<liquid:sulfuric_acid>*125)
	.chancedOutput(<minecraft:blaze_rod>*2, 8000, 1000)
	.chancedOutput(<minecraft:blaze_rod>, 8000, 1000)
	.chancedOutput(<minecraft:blaze_powder>*2, 8000, 1000)
	.chancedOutput(<minecraft:blaze_powder>, 8000, 1000)
	.EUt(512)
    .duration(1200) 
    .buildAndRegister(); 