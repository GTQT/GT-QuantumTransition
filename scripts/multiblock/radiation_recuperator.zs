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
 
val radiation_recuperator = Builder.start("multiblocktweaker:radiation_recuperator",32040)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("EHD"," M "," M "," M ","DCE")
            .where('C', controller.self())
            .where('A', <metastate:gregtech:metal_casing:7>)
            .where('M', <metastate:gregtech:metal_casing:7>)
            .where('D', CTPredicate.states(<metastate:gregtech:metal_casing:7>)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
			 )
            .where('E', CTPredicate.states(<metastate:gregtech:metal_casing:7>)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
			 )
            .where('H', CTPredicate.states(<metastate:gregtech:metal_casing:7>)		
		        | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
			.where(" ",CTPredicate.getAny())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(
	FactoryRecipeMap.start("radiation_recuperator")
    .maxFluidInputs(2)
    .maxFluidOutputs(2)
    .build())
    .withBaseTexture(<metastate:gregtech:metal_casing:7>)
    .buildAndRegister();

radiation_recuperator.runOverclockingLogic = function(recipelogic as IRecipeLogic, recipe as IRecipe, negativeEU as bool, maxOverclocks as int) as int[] {
    return IRecipeLogic.standardOverclockingLogic(recipe.getEUt() * (negativeEU ? -1 : 1), recipelogic.maxVoltage, recipe.getDuration(), 1, 1, 0); // 1x duration, 1x voltage, 0 overclocks
} as IRunOverclockingLogicFunction;


radiation_recuperator.hasMufflerMechanics = false;
radiation_recuperator.hasMaintenanceMechanics = false;

radiation_recuperator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:nak_hot>*500,<liquid:distilled_water>*250)
	.fluidOutputs(<liquid:nak>*500,<liquid:ic2superheated_steam>*5000)
    .duration(1).EUt(32).buildAndRegister();

radiation_recuperator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:nak_hot>*500,<liquid:water>*500)
	.fluidOutputs(<liquid:nak>*500,<liquid:ic2superheated_steam>*5000)
    .duration(1).EUt(32).buildAndRegister();