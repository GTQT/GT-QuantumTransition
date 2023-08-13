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
 
global traps as RecipeMap = FactoryRecipeMap.start("traps")
    .maxFluidInputs(1)
	.maxFluidOutputs(1)
	.maxOutputs(4)
    .build();
 
Builder.start("traps", 32045)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
     .aisle(
        "AAAAAAA",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "AAAAAAA"
      )
     .aisle(
        "ABAAABA",
        "  ACA  ",
        "  ADA  ",
        "  ACA  ",
        "  ADA  ",
        "  ACA  ",
        "  ADA  ",
        "  ACA  ",
        "  ADA  ",
        "  ACA  ",
        "AAAAAAA"
      )
     .aisle(
        "AAAAAAA",
        " AAEAA ",
        " AA AA ",
        " AAEAA ",
        " AA AA ",
        " AAEAA ",
        " AA AA ",
        " AAEAA ",
        " AA AA ",
        " AAEAA ",
        "AAAAAAA"
      )
     .aisle(
        "AAAAAAA",
        " CEEEC ",
        " D   D ",
        " CEEEC ",
        " D   D ",
        " CEEEC ",
        " D   D ",
        " CEEEC ",
        " D   D ",
        " CEEEC ",
        "AAAAAAA"
      )
     .aisle(
        "AAAAAAA",
        " AAEAA ",
        " AA AA ",
        " AAEAA ",
        " AA AA ",
        " AAEAA ",
        " AA AA ",
        " AAEAA ",
        " AA AA ",
        " AAEAA ",
        "AAAAAAA"
      )
     .aisle(
        "ABAAABA",
        "  ACA  ",
        "  ADA  ",
        "  ACA  ",
        "  ADA  ",
        "  ACA  ",
        "  ADA  ",
        "  ACA  ",
        "  ADA  ",
        "  ACA  ",
        "AAAAAAA"
      )
     .aisle(
        "AAAXAAA",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "AAAAAAA"
      )
            .where("X", controller.self())
			.where("B", <metastate:gcys:multiblock_casing:1>)
			.where("C", <metastate:gregtech:white_lamp:0>)
			.where("D", <metastate:gregtech:transparent_casing:1>)
			.where("E", <metastate:contenttweaker:trap_core:0>)
            .where("A", CTPredicate.states(<metastate:contenttweaker:naq_housing:0>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(traps)
    .withBaseTexture(<metastate:contenttweaker:naq_housing:0>)
    .buildAndRegister();	
