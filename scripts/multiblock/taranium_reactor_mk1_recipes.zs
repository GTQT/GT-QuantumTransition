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
 
global s_taranium_reactor_mk1_recipes as RecipeMap = FactoryRecipeMap.start("s_taranium_reactor_mk1_recipes")
    .maxFluidInputs(1)
    .build();
 
Builder.start("s_taranium_reactor_mk1_recipes", 32014)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
      .aisle(
        "       AABAA       ",
        "       CCBCC       ",
        "       AABAA       "
      )
      .aisle(
        "     DDCCBCCDD     ",
        "     CC     CC     ",
        "     DDCCBCCDD     "
      )
      .aisle(
        "    DCC  B  CCD    ",
        "    C  CCBCC  C    ",
        "    DCC  B  CCD    "
      )
      .aisle(
        "   DC         CD   ",
        "   C CC     CC C   ",
        "   DC         CD   "
      )
      .aisle(
        "  DC           CD  ",
        "  C C         C C  ",
        "  DC           CD  "
      )
      .aisle(
        " DC             CD ",
        " C C          CC C ",
        " DC             CD "
      )
      .aisle(
        " DC             CD ",
        " C C           C C ",
        " DC             CD "
      )
      .aisle(
        "AC               CA",
        "A C             C C",
        "AC               CA"
      )
      .aisle(
        "AC               CA",
        "A C             C C",
        "AC               CA"
      )
      .aisle(
        "BBB             BBB",
        "XEB             B B",
        "BBB             BBB"
      )
      .aisle(
        "AC               CA",
        "A C             C C",
        "AC               CA"
      )
      .aisle(
        "AC               CA",
        "A C             C C",
        "AC               CA"
      )
      .aisle(
        " DC             CD ",
        " C C           C C ",
        " DC             CD "
      )
      .aisle(
        " DC             CD ",
        " C C           C C ",
        " DC             CD "
      )
      .aisle(
        "  DC           CD  ",
        "  C C         C C  ",
        "  DC           CD  "
      )
      .aisle(
        "   DC         CD   ",
        "   C CC     CC C   ",
        "   DC         CD   "
      )
      .aisle(
        "    DCC  B  CCD    ",
        "    C  CCBCC  C    ",
        "    DCC  B  CCD    "
      )
      .aisle(
        "     DDCCBCCDD     ",
        "     CC     CC     ",
        "     DDCCBCCDD     "
      )
      .aisle(
        "       AABAA       ",
        "       CCBCC       ",
        "       AABAA       "
       )
            .where("X", controller.self())
            .where("B", <metastate:gregtech:fusion_casing:1>)
			.where("C", <metastate:gregtech:fusion_casing:4>)
			.where("D", <metastate:gregtech:transparent_casing:1>)
			.where("E", <metastate:gregtech:fusion_casing:2>)
            .where("A", CTPredicate.states(<metastate:gregtech:fusion_casing:3>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(s_taranium_reactor_mk1_recipes)
    .withBaseTexture(<metastate:gregtech:fusion_casing:1>)
    .buildAndRegister();
s_taranium_reactor_mk1_recipes.recipeBuilder()
    .fluidInputs(<liquid:light_hyper_fuel>*100)
    .duration(20).EUt(-975000).buildAndRegister();

s_taranium_reactor_mk1_recipes.recipeBuilder()
    .fluidInputs(<liquid:medium_hyper_fuel>*100)
    .duration(20).EUt(-	2300000).buildAndRegister();

s_taranium_reactor_mk1_recipes.recipeBuilder()
    .fluidInputs(<liquid:heavy_hyper_fuel>*100)
    .duration(20).EUt(-9511000).buildAndRegister();