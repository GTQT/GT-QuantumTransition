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
 
global molecular_recombination as RecipeMap = FactoryRecipeMap.start("molecular_recombination")
    .maxInputs(4)
    .maxOutputs(4)
	.maxFluidInputs(4)
	.maxFluidOutputs(4)
    .build();
 
Builder.start("molecular_recombination", 32027)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
             .aisle(
        "AAAAA",
        " BBB ",
        "     ",
        "     ",
        "     ",
        " BBB ",
        "AAAAA"
      )
      .aisle(
        "AAAAA",
        "BCCCB",
        " DDD ",
        " DDD ",
        " DDD ",
        "BCCCB",
        "AAAAA"
      )
      .aisle(
        "AAAAA",
        "BCCCB",
        " DED ",
        " DED ",
        " DED ",
        "BCCCB",
        "AAAAA"
      )
      .aisle(
        "AAAAA",
        "BCCCB",
        " DDD ",
        " DDD ",
        " DDD ",
        "BCCCB",
        "AAAAA"
      )
      .aisle(
        "AAAAA",
        " BXB ",
        "     ",
        "     ",
        "     ",
        " BBB ",
        "AAAAA"
      )
            .where("X", controller.self())
			.where("A", <metastate:gcym:large_multiblock_casing:11>)
			.where("C", <metastate:gregtech:fusion_casing:2>)
			.where("D", <metastate:gregtech:transparent_casing:1>)
			.where("E", <metastate:gregtech:meta_block_frame_2:1>)
			.where("B", CTPredicate.states(<metastate:gcym:large_multiblock_casing:10>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(molecular_recombination)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:10>)
    .buildAndRegister();
molecular_recombination.recipeBuilder() 
	.fluidInputs(<liquid:liquid_nitrogen>*14400)
	.inputs(<minecraft:skull:1>)
	.outputs(<minecraft:nether_star>)
	.EUt(8192)
    .duration(12000) 
    .buildAndRegister();

molecular_recombination.recipeBuilder() 
	.fluidInputs(<liquid:liquid_nitrogen>*200)
	.inputs(<ore:logWood>)
	.outputs(<minecraft:diamond>)
	.EUt(8192)
    .duration(300) 
    .buildAndRegister();
	
molecular_recombination.recipeBuilder() 
	.fluidInputs(<liquid:liquid_nitrogen>*4000)
	.inputs(<minecraft:gold_ingot>)
	.outputs(<gregtech:meta_ingot:80>)
	.EUt(8192)
    .duration(9000) 
    .buildAndRegister();
	
molecular_recombination.recipeBuilder() 
	.fluidInputs(<liquid:liquid_nitrogen>*4000)
	.inputs(<gregtech:meta_bolt:338>)
	.outputs(<advanced_solar_panels:crafting:1>)
	.EUt(8192)
    .duration(9000) 
    .buildAndRegister();
	
molecular_recombination.recipeBuilder() 
	.fluidInputs(<liquid:liquid_nitrogen>*16000)
	.inputs(<gregtech:meta_item_1:283>*16)
	.outputs(<avaritia:resource:1>)
	.EUt(2097152)
    .duration(9000) 
    .buildAndRegister();