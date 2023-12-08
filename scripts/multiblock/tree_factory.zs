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
 
global tree_factory as RecipeMap = FactoryRecipeMap.start("tree_factory")
    .maxInputs(2)
	.maxOutputs(6)
    .maxFluidInputs(1)
    .build();

Builder.start("tree_factory", 32020)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMM", "MMM", "MMM")
            .aisle("MMM", "MMM", "MMM")
            .aisle("MXM", "MMM", "MMM")
            .where("X", controller.self())
            .where("M", CTPredicate.states(<metastate:contenttweaker:logcasing>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(tree_factory)
    .withBaseTexture(<metastate:contenttweaker:logcasing>)
    .buildAndRegister();
tree_factory.recipeBuilder()
    .inputs(<minecraft:sapling>,<gregtech:meta_item_1:1001>*16)
    .fluidInputs(<liquid:water>*5000)
    .outputs(<minecraft:sapling>*32,<minecraft:log>*480 )
    .duration(2400).EUt(30).buildAndRegister();
	

