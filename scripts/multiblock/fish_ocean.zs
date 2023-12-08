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
 
global fish_ocean as RecipeMap = FactoryRecipeMap.start("fish_ocean")
    .maxFluidInputs(1)
	.maxOutputs(4)
    .build();
 
Builder.start("fish_ocean", 32012)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMMMMMM", "MMMMMMM", "MMMMMMM")
            .aisle("MMMMMMM", "M#####M", "M#####M")
            .aisle("MMMMMMM", "M#####M", "M#####M")
            .aisle("MMMMMMM", "M#####M", "M#####M")
            .aisle("MMMMMMM", "M#####M", "M#####M")
            .aisle("MMMMMMM", "M#####M", "M#####M")
            .aisle("MMMMMMM", "M#####M", "M#####M")
            .aisle("MMMMMMM", "M#####M", "M#####M")
            .aisle("MMMCMMM", "MMMMMMM", "MMMMMMM")
            .where("C", controller.self())
            .where("M", CTPredicate.states(<metastate:contenttweaker:fishing_machine_casing>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(fish_ocean)
    .withBaseTexture(<metastate:contenttweaker:fishing_machine_casing>)
    .buildAndRegister();
fish_ocean.recipeBuilder()
    .fluidInputs(<liquid:water>*500)
    .outputs(<minecraft:fish>,<minecraft:fish:1>,<minecraft:fish:2>)
    .duration(360).EUt(512).buildAndRegister();
	

