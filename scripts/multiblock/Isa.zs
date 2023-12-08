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
 
global Isa as RecipeMap = FactoryRecipeMap.start("Isa")
    .maxInputs(2)
	.maxOutputs(6)
    .maxFluidInputs(1)
    .build();

Builder.start("Isa", 32025)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMM", "MMM", "MMM")
            .aisle("MMM", "MMM", "MMM")
            .aisle("MMM", "MMM", "MMM")
            .aisle("MMM", "MMM", "MMM")
            .aisle("MMM", "MMM", "MMM")
            .aisle("MMM", "MMM", "MMM")
            .aisle("MMM", "MXM", "MMM")
            .where("X", controller.self())
            .where("M", CTPredicate.states(<metastate:contenttweaker:isa_machine_casing>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(Isa)
    .withBaseTexture(<metastate:contenttweaker:isa_machine_casing>)
    .buildAndRegister();
Isa.recipeBuilder().inputs(<ore:oreNickel>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:nie_milled>*64).duration(120).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:orePlatinum>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:bo_milled>*64).duration(120).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:oreMonazite>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:dujushi_milled>*64).duration(120).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:oreSphalerite>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:shanxin_milled>*64).duration(120).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:oreAlmandine>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:tielvliushi_milled>*64).duration(120).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:oreGrossular>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:gailvliushi_milled>*64).duration(120).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:orePyrope>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:meilvliushi_milled>*64).duration(120).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:oreSpessartine>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:menglvliushi_milled>*64).duration(120).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:oreRedstone>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:hongshi_milled>*64).duration(120).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:oreChalcopyrite>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:huangtong_milled>*64).duration(120).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:orePentlandite>* 16).fluidInputs(<liquid:lubricant>*200).outputs(<contenttweaker:niehuangtie_milled>*64).duration(120).EUt(7960).buildAndRegister();

Isa.recipeBuilder().inputs(<ore:crushedNickel>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:nie_milled>*32).duration(60).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:crushedPlatinum>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:bo_milled>*32).duration(60).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:crushedMonazite>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:dujushi_milled>*32).duration(60).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:crushedSphalerite>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:shanxin_milled>*32).duration(60).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:crushedAlmandine>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:tielvliushi_milled>*32).duration(60).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:crushedGrossular>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:gailvliushi_milled>*32).duration(60).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:crushedPyrope>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:meilvliushi_milled>*32).duration(60).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:crushedSpessartine>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:menglvliushi_milled>*32).duration(60).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:crushedRedstone>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:hongshi_milled>*32).duration(60).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:crushedChalcopyrite>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:huangtong_milled>*32).duration(60).EUt(7960).buildAndRegister();
Isa.recipeBuilder().inputs(<ore:crushedPentlandite>* 16).fluidInputs(<liquid:lubricant>*100).outputs(<contenttweaker:niehuangtie_milled>*32).duration(60).EUt(7960).buildAndRegister();
