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
 
global aipc as RecipeMap = FactoryRecipeMap.start("aipc")
    .maxInputs(3)
    .maxFluidInputs(3)
	.maxFluidOutputs(3)
	.maxOutputs(3)
    .build();
 
Builder.start("aipc", 32043)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
      .aisle(
        "               ",
        "      AAA      ",
        "               "
     )
      .aisle(
        "      AAA      ",
        "    AABCBAA    ",
        "      AAA      "
     )
      .aisle(
        "    AA   AA    ",
        "   ABCAAACBA   ",
        "    AA   AA    "
     )
      .aisle(
        "   A       A   ",
        "  ACAA   AACA  ",
        "   A       A   "
     )
      .aisle(
        "  A         A  ",
        " ABA       ABA ",
        "  A         A  "
     )
      .aisle(
        "  A         A  ",
        " ACA       ACA ",
        "  A         A  "
     )
      .aisle(
        " A           A ",
        "ABA         ABA",
        " A           A "
     )
      .aisle(
        " A           A ",
        "ACA         ACA",
        " A           A "
     )
      .aisle(
        " A           A ",
        "ABA         ABA",
        " A           A "
     )
      .aisle(
        "  A         A  ",
        " ACA       ACA ",
        "  A         A  "
     )
      .aisle(
        "  A         A  ",
        " ABA       ABA ",
        "  A         A  "
     )
      .aisle(
        "   A       A   ",
        "  ACAA   AACA  ",
        "   A       A   "
     )
      .aisle(
        "    AA   AA    ",
        "   ABCAAACBA   ",
        "    AA   AA    "
     )
      .aisle(
        "      AAA      ",
        "    AABCBAA    ",
        "      AAA      "
     )
      .aisle(
        "               ",
        "      AXA      ",
        "               "
     )
            .where("X", controller.self())
			.where("B", <metastate:contenttweaker:aipc_core:0>)
			.where("C", <metastate:gregtech:fusion_casing:1>)
            .where("A", CTPredicate.states(<metastate:contenttweaker:aipc_casing:0>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(aipc)
    .withBaseTexture(<metastate:contenttweaker:aipc_casing:0>)
    .buildAndRegister();
aipc.recipeBuilder() 
    .fluidInputs(<liquid:ntech_down>*1,<liquid:tritium>*1000)
    .fluidOutputs(<liquid:ntech_up>*1)
    .duration(1)
    .EUt(7864320)
    .buildAndRegister();
	
aipc.recipeBuilder() 
    .fluidInputs(<liquid:ptech_down>*1,<liquid:hydrogen>*1000)
    .fluidOutputs(<liquid:ptech_up>*1)
    .duration(1)
    .EUt(7864320)
    .buildAndRegister();
	
//点火配方
aipc.recipeBuilder() 
    .inputs(<gregtech:meta_bolt:104>,<minecraft:planks:0>)
    .fluidInputs(<liquid:tritium>*1000)
    .fluidOutputs(<liquid:ntech_up>*1)
    .duration(1)
    .EUt(7864320)
    .buildAndRegister();
	
aipc.recipeBuilder() 
    .inputs(<gregtech:meta_bolt:104>,<minecraft:planks:1>)
    .fluidInputs(<liquid:hydrogen>*1000)
    .fluidOutputs(<liquid:ptech_up>*1)
    .duration(1)
    .EUt(7864320)
    .buildAndRegister();