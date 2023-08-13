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
 
global GGB as RecipeMap = FactoryRecipeMap.start("GGB")
    .maxInputs(1)
    .maxOutputs(6)
	.maxFluidInputs(4)
	.maxFluidOutputs(4)
    .build();
 
Builder.start("GGB", 32029)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
             .aisle(
        "   ",
        "   ",
        "   ",
        "   ",
        "   ",
        " A ",
        " A ",
        " A ",
        " A ",
        " A ",
        " A ",
        "   ",
        "   ",
        "   ",
        "   ",
        "   "
      )
     .aisle(
        "   ",
        "   ",
        " A ",
        " A ",
        " A ",
        "AAA",
        "AAA",
        "AAA",
        "AAA",
        "AAA",
        "AAA",
        " A ",
        " A ",
        " A ",
        "   ",
        "   "
      )
     .aisle(
        "   ",
        " A ",
        "AAA",
        "AAA",
        "AAA",
        "ABA",
        "ABA",
        "ABA",
        "ABA",
        "ABA",
        "ABA",
        "AAA",
        "AAA",
        "AAA",
        " A ",
        "   "
      )
     .aisle(
        " A ",
        "AAA",
        "ABA",
        "ABA",
        "ABA",
        "CBC",
        "CBC",
        "CBC",
        "CBC",
        "CBC",
        "CBC",
        "ABA",
        "ABA",
        "ABA",
        "AAA",
        " A "
      )
     .aisle(
        "   ",
        " A ",
        "AAA",
        "AAA",
        "AAA",
        "ABA",
        "ABA",
        "ABA",
        "ABA",
        "ABA",
        "ABA",
        "AAA",
        "AAA",
        "AAA",
        " A ",
        "   "
      )
     .aisle(
        "   ",
        "   ",
        " A ",
        " A ",
        " A ",
        "AAA",
        "AAA",
        "AAA",
        "AAA",
        "AAA",
        "AAA",
        " A ",
        " A ",
        " A ",
        "   ",
        "   "
      )
     .aisle(
        "   ",
        "   ",
        "   ",
        "   ",
        "   ",
        " A ",
        " A ",
        " X ",
        " A ",
        " A ",
        " A ",
        "   ",
        "   ",
        "   ",
        "   ",
        "   "
      )
            .where("X", controller.self())
			.where("B", <metastate:gregtech:meta_block_frame_24:12>)
			.where("C", <metastate:gcys:transparent_casing>)
			.where("A", CTPredicate.states(<metastate:gcym:large_multiblock_casing:10>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(GGB)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:10>)
    .buildAndRegister();
GGB.recipeBuilder() 
    .fluidInputs(<liquid:naquadria>*576)
	.inputs(<gregtech:meta_dust:32150>)
	.outputs(<contenttweaker:guiyanranliao>*4)
	.chancedOutput(<contenttweaker:guiyanranliao>, 8000, 500)
	.chancedOutput(<contenttweaker:guiyanranliao>, 6000, 500)
	.chancedOutput(<contenttweaker:guiyanranliao>, 4000, 500)
	.chancedOutput(<contenttweaker:guiyanranliao>, 2000, 500)
	.chancedOutput(<contenttweaker:guiyanranliao>, 2000, 500)
	.EUt(32760)
    .duration(600) 
    .buildAndRegister();
