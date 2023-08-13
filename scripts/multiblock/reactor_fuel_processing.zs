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
 
global reactor_fuel_processing as RecipeMap = FactoryRecipeMap.start("reactor_fuel_processing")
    .maxInputs(3)
	.maxOutputs(3)
    .maxFluidInputs(6)
    .maxFluidOutputs(6)
    .build();
 
Builder.start("reactor_fuel_processing", 32044)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMM", "MMM"," M ", " M ", " M ", " M ", " M ", "   ")
            .aisle("MMM", "MMM","MNM", "MNM", "MNM", "MNM", "MNM", " M ")
            .aisle("MXM", "MMM"," M ", " M ", " M ", " M ", " M ", "   ")

            .where("X", controller.self())
			.where("N", <metastate:gcym:unique_casing:3>)
            .where("M", CTPredicate.states(<metastate:gcym:large_multiblock_casing:4>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(reactor_fuel_processing)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:4>)
    .buildAndRegister();
