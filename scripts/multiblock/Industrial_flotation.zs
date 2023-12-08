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
 
global Industrial_flotation as RecipeMap = FactoryRecipeMap.start("Industrial_flotation")
    .maxInputs(2)
	.maxOutputs(6)
	.maxFluidOutputs(1)
    .maxFluidInputs(1)
    .build();

Builder.start("Industrial_flotation", 32037)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("  MMM  ", " MMMMM ","MMMMMMM","MMMMMMM","MMMMMMM"," MMMMM ","  MMM  ")
            .aisle("  MMM  ", " MMMMM ","MMMMMMM","MMMMMMM","MMMMMMM"," MMMMM ","  MMM  ")
			.aisle("       ", "   N   ","  NNN  "," NNNNN ","  NNN  ","   N   ","       ")
			.aisle("       ", "   N   ","  NNN  "," NNNNN ","  NNN  ","   N   ","       ")
			.aisle("       ", "   N   ","  NNN  "," NNNNN ","  NNN  ","   N   ","       ")
			.aisle("       ", "   N   ","  NNN  "," NNNNN ","  NNN  ","   N   ","       ")
			.aisle("       ", "   N   ","  NNN  "," NNNNN ","  NNN  ","   N   ","       ")
			.aisle("       ", "   N   ","  NNN  "," NNNNN ","  NNN  ","   N   ","       ")
			.aisle("       ", "       ","   M   ","  MXM  ","   M   ","       ","       ")
			.where("N", <metastate:contenttweaker:flotation_cell>)
            .where("X", controller.self())
            .where("M", CTPredicate.states(<metastate:contenttweaker:flotation_casing>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
			.where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(Industrial_flotation)
    .withBaseTexture(<metastate:contenttweaker:flotation_casing>)
    .buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:nie_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:nie_milled>*64,<ore:dustSodiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:bo_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:bo_milled>*64,<ore:dustSodiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:dujushi_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:dujushi_milled>*64,<ore:dustSodiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:shanxin_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:shanxin_milled>*64,<ore:dustSodiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:tielvliushi_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:tielvliushi_milled>*64,<ore:dustPotassiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:gailvliushi_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:gailvliushi_milled>*64,<ore:dustPotassiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:meilvliushi_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:meilvliushi_milled>*64,<ore:dustPotassiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:menglvliushi_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:menglvliushi_milled>*64,<ore:dustPotassiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:hongshi_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:hongshi_milled>*64,<ore:dustSodiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:huangtong_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:huangtong_milled>*64,<ore:dustSodiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();
Industrial_flotation.recipeBuilder().fluidOutputs(<liquid:niehuangtie_milled>*250).fluidInputs(<liquid:water>*5000).inputs(<contenttweaker:niehuangtie_milled>*64,<ore:dustSodiumEthylxanthate>*8).duration(1200).EUt(7960).buildAndRegister();

	

