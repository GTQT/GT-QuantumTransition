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
 
global s_taranium_reactor_mk2_recipes as RecipeMap = FactoryRecipeMap.start("s_taranium_reactor_mk2_recipes")
    .maxFluidInputs(1)
    .build();
 
Builder.start("s_taranium_reactor_mk2_recipes", 32015)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
           .aisle(
        "                               ",
        "               A               ",
        "              DAD              ",
        "              DAD              ",
        "              DAD              ",
        "               A               ",
        "                               "
     )
     .aisle(
        "               A               ",
        "            CCDADCC            ",
        "            EEEEEEE            ",
        "       BBBBBEEEEEEEBBBBB       ",
        "            EEEEEEE            ",
        "            CCDADCC            ",
        "               A               "
     )
     .aisle(
        "              DAD              ",
        "       CCCCCEEEEEEECCCCC       ",
        "       EEEEE       EEEEE       ",
        "     BBEEEEE   E   EEEEEBB     ",
        "       EEEEE       EEEEE       ",
        "       CCCCCEEEEEEECCCCC       ",
        "              DAD              "
     )
     .aisle(
        "              DAD              ",
        "     CCEEEEEEEEEEEEEEEEECC     ",
        "     EE        E        EE     ",
        "    BEE        E        EEB    ",
        "     EE        E        EE     ",
        "     CCEEEEEEEEEEEEEEEEECC     ",
        "              DAD              "
     )
     .aisle(
        "              DAD              ",
        "    CEEEEEEEEEEEEEEEEEEEEEC    ",
        "    E                     E    ",
        "   BE          E          EB   ",
        "    E                     E    ",
        "    CEEEEEEEEEEEEEEEEEEEEEC    ",
        "              DAD              "
     )
     .aisle(
        "               A               ",
        "   CEEEEEEEE  DAD  EEEEEEEEC   ",
        "   E        EEEEEEE        E   ",
        "  BE        EEEEEEE        EB  ",
        "   E        EEEEEEE        E   ",
        "   CEEEEEEEE  DAD  EEEEEEEEC   ",
        "               A               "
     )
     .aisle(
        "                               ",
        "   CEEEEE      A      EEEEEC   ",
        "   E     EEE  DAD  EEE     E   ",
        "  BE     EEE  DAD  EEE     EB  ",
        "   E     EEE  DAD  EEE     E   ",
        "   CEEEEE      A      EEEEEC   ",
        "                               "
     )
     .aisle(
        "                               ",
        "  CEEEEE               EEEEEC  ",
        "  E     E             E     E  ",
        " BE     E             E     EB ",
        "  E     E             E     E  ",
        "  CEEEEE               EEEEEC  ",
        "                               "
     )
     .aisle(
        "                               ",
        "  CEEEE                 EEEEC  ",
        "  E    E               E    E  ",
        " BE    E               E    EB ",
        "  E    E               E    E  ",
        "  CEEEE                 EEEEC  ",
        "                               "
     )
     .aisle(
        "                               ",
        "  CEEE                   EEEC  ",
        "  E   E                 E   E  ",
        " BE   E                 E   EB ",
        "  E   E                 E   E  ",
        "  CEEE                   EEEC  ",
        "                               "
     )
     .aisle(
        "                               ",
        "  CEEE                   EEEC  ",
        "  E   E                 E   E  ",
        " BE   E                 E   EB ",
        "  E   E                 E   E  ",
        "  CEEE                   EEEC  ",
        "                               "
     )
     .aisle(
        "                               ",
        "  CEEE                   EEEC  ",
        "  E   E                 E   E  ",
        " BE   E                 E   EB ",
        "  E   E                 E   E  ",
        "  CEEE                   EEEC  ",
        "                               "
     )
     .aisle(
        "                               ",
        " CEEE                     EEEC ",
        " E   E                   E   E ",
        " E   E                   E   E ",
        " E   E                   E   E ",
        " CEEE                     EEEC ",
        "                               "
     )
     .aisle(
        "                               ",
        " CEEE                     EEEC ",
        " E   E                   E   E ",
        " E   E                   E   E ",
        " E   E                   E   E ",
        " CEEE                     EEEC ",
        "                               "
     )
     .aisle(
        "  DDD                     DDD  ",
        " DEEED                   DEEED ",
        "DE   ED                 DE   ED",
        "DE   ED                 DE   ED",
        "DE   ED                 DE   ED",
        " DEEED                   DEEED ",
        "  DDD                     DDD  "
     )
     .aisle(
        " AAAAA                   AAAAA ",
        "AAEEEAA                 AAEEEAA",
        "AE E EA                 AE E EA",
        "AEEEEEA                 AEEEEEA",
        "AE E EA                 AE E EA",
        "AAEEEAA                 AAEEEAA",
        " AAAAA                   AAAAA "
     )
     .aisle(
        "  DDD                     DDD  ",
        " DEEED                   DEEED ",
        "DE   ED                 DE   ED",
        "DE   ED                 DE   ED",
        "DE   ED                 DE   ED",
        " DEEED                   DEEED ",
        "  DDD                     DDD  "
     )
     .aisle(
        "                               ",
        " CEEE                     EEEC ",
        " E   E                   E   E ",
        " E   E                   E   E ",
        " E   E                   E   E ",
        "  EEE                     EEEC ",
        "                               "
     )
     .aisle(
        "                               ",
        " CEEE                     EEEC ",
        " E   E                   E   E ",
        " E   E                   E   E ",
        " E   E                   E   E ",
        "  EEE                     EEEC ",
        "                               "
     )
     .aisle(
        "                               ",
        "  CEEE                   EEEC  ",
        "  E   E                 E   E  ",
        " BE   E                 E   EB ",
        "  E   E                 E   E  ",
        "  CEEE                   EEEC  ",
        "                               "
     )
     .aisle(
        "                               ",
        "  CEEE                   EEEC  ",
        "  E   E                 E   E  ",
        " BE   E                 E   EB ",
        "  E   E                 E   E  ",
        "  CEEE                   EEEC  ",
        "                               "
     )
     .aisle(
        "                               ",
        "  CEEE                   EEEC  ",
        "  E   E                 E   E  ",
        " BE   E                 E   EB ",
        "  E   E                 E   E  ",
        "  CEEE                   EEEC  ",
        "                               "
     )
     .aisle(
        "                               ",
        "  CEEEE                 EEEEC  ",
        "  E    E               E    E  ",
        " BE    E               E    EB ",
        "  E    E               E    E  ",
        "  CEEEE                 EEEEC  ",
        "                               "
     )
     .aisle(
        "                               ",
        "  CEEEEE               EEEEEC  ",
        "  E     E             E     E  ",
        " BE     E             E     EB ",
        "  E     E             E     E  ",
        "  CEEEEE               EEEEEC  ",
        "                               "
     )
     .aisle(
        "                               ",
        "   CEEEEE      A      EEEEEC   ",
        "   E     EEE  DAD  EEE     E   ",
        "  BE     EEE  DAD  EEE     EB  ",
        "   E     EEE  DAD  EEE     E   ",
        "   CEEEEE      A      EEEEEC   ",
        "                               "
     )
     .aisle(
        "               A               ",
        "   CEEEEEEEE  DAD  EEEEEEEEC   ",
        "   E        EEEEEEE        E   ",
        "  BE        EEEEEEE        EB  ",
        "   E        EEEEEEE        E   ",
        "   CEEEEEEEE  DAD  EEEEEEEEC   ",
        "               A               "
     )
     .aisle(
        "              DAD              ",
        "    CEEEEEEEEEEEEEEEEEEEEEC    ",
        "    E                     E    ",
        "   BE          E          EB   ",
        "    E                     E    ",
        "    CEEEEEEEEEEEEEEEEEEEEEC    ",
        "              DAD              "
     )
     .aisle(
        "              DAD              ",
        "     CCEEEEEEEEEEEEEEEEECC     ",
        "     EE        E        EE     ",
        "    BEE        E        EEB    ",
        "     EE        E        EE     ",
        "     CCEEEEEEEEEEEEEEEEECC     ",
        "              DAD              "
     )
     .aisle(
        "              DAD              ",
        "       CCCCCEEEEEEECCCCC       ",
        "       EEEEE       EEEEE       ",
        "     BBEEEEE   E   EEEEEBB     ",
        "       EEEEE       EEEEE       ",
        "       CCCCCEEEEEEECCCCC       ",
        "              DAD              "
     )
     .aisle(
        "               A               ",
        "            CCDADCC            ",
        "            EEEEEEE            ",
        "       BBBBBEEEEEEEBBBBB       ",
        "            EEEEEEE            ",
        "            CCDADCC            ",
        "               A               "
     )
     .aisle(
        "                               ",
        "               A               ",
        "              DAD              ",
        "              DXD              ",
        "              DAD              ",
        "               A               ",
        "                               "
      )
            .where("X", controller.self())
			.where("A", <metastate:gregtech:fusion_casing:1>)
            .where("C", <metastate:gregtech:transparent_casing:1>)
            .where("D", <metastate:gregtech:fusion_casing:3>)
			.where("E", <metastate:gregtech:fusion_casing:4>)
            .where("B", CTPredicate.states(<metastate:gregtech:fusion_casing:2>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(s_taranium_reactor_mk2_recipes)
    .withBaseTexture(<metastate:gregtech:fusion_casing:2>)
    .buildAndRegister();
s_taranium_reactor_mk2_recipes.recipeBuilder()
    .fluidInputs(<liquid:light_hyper_fuel>*400)
    .duration(40).EUt(-2300000).buildAndRegister();

s_taranium_reactor_mk2_recipes.recipeBuilder()
    .fluidInputs(<liquid:medium_hyper_fuel>*400)
    .duration(40).EUt(-9511000).buildAndRegister();

s_taranium_reactor_mk2_recipes.recipeBuilder()
    .fluidInputs(<liquid:heavy_hyper_fuel>*400)
    .duration(40).EUt(-88540000).buildAndRegister();