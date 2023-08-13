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
 
global aion_implanter_recipes as RecipeMap = FactoryRecipeMap.start("aion_implanter_recipes")
	.maxOutputs(2)
	.maxInputs(2)
    .maxFluidInputs(4)
    .build();
 
Builder.start("aion_implanter", 32010)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle(
        "     ",
        "     ",
        " AAA ",
        "     ",
        "     "
      )
      .aisle(
        "     ",
        " AAA ",
        "A   A",
        " AAA ",
        "     "
      )
      .aisle(
        "     ",
        " AAA ",
        "A   A",
        " AAA ",
        "     "
      )
      .aisle(
        "     ",
        " AAA ",
        "AB BA",
        " AAA ",
        "     "
      )
      .aisle(
        "     ",
        "  C  ",
        " C C ",
        "  C  ",
        "     "
      )
      .aisle(
        "     ",
        "  B  ",
        " B B ",
        "  B  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  B  ",
        " B B ",
        "  B  ",
        "     "
      )
      .aisle(
        "     ",
        "  C  ",
        " C C ",
        "  C  ",
        "     "
      )
      .aisle(
        "     ",
        "  B  ",
        " B B ",
        "  B  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  B  ",
        " B B ",
        "  B  ",
        "     "
      )
      .aisle(
        "     ",
        "  C  ",
        " C C ",
        "  C  ",
        "     "
      )
      .aisle(
        "     ",
        "  B  ",
        " B B ",
        "  B  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  B  ",
        " B B ",
        "  B  ",
        "     "
      )
      .aisle(
        "     ",
        "  C  ",
        " C C ",
        "  C  ",
        "     "
      )
      .aisle(
        "     ",
        "  B  ",
        " B B ",
        "  B  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  D  ",
        " D D ",
        "  D  ",
        "     "
      )
      .aisle(
        "     ",
        "  B  ",
        " B B ",
        "  B  ",
        "     "
      )
      .aisle(
        "     ",
        "  C  ",
        " C C ",
        "  C  ",
        "     "
      )
      .aisle(
        "  A  ",
        " ABA ",
        "AB BA",
        " ABA ",
        "  A  "
      )
      .aisle(
        "  A  ",
        " A A ",
        "A   A",
        " A A ",
        "  A  "
      )
      .aisle(
        "  A  ",
        " ABA ",
        "AB BA",
        " ABA ",
        "  A  "
      )
      .aisle(
        "     ",
        "  A  ",
        " AXA ",
        "  A  ",
        "     "
      )
            .where("X", controller.self())
            .where("B", <metastate:gregtech:fusion_casing:1>)
		    .where("C", <metastate:gregtech:transparent_casing:1>)
		    .where("D", <metastate:gregtech:fusion_casing:4>)
            .where("A", CTPredicate.states(<metastate:gregtech:machine_casing:8>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(aion_implanter_recipes)
    .withBaseTexture(<metastate:gregtech:machine_casing:8>)
    .buildAndRegister();
aion_implanter_recipes.recipeBuilder()
    .inputs(<gregtech:meta_plate:15057>,<gregtech:meta_plate:15040>)
    .fluidInputs(<liquid:plasma.nickel>*576)
	.outputs(<gcys:meta_item_1:424>*16)
    .duration(160).EUt(491520).buildAndRegister();
	
