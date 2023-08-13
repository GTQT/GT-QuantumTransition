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
 
global collect_air as RecipeMap = FactoryRecipeMap.start("collect_air_controller")
    .maxInputs(2)
	.maxFluidInputs(2)
	.maxFluidOutputs(12)
    .build();
 
Builder.start("collect_air", 32031)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("NNN", "MNM", "MMM", "MMM", "NNN", "NNN", "NNN", "NNN")
            .aisle("NNN", "MXM", "MXM", "MXM", "NXN", "NXN", "NXN", "NNN")
            .aisle("NNN", "MCM", "MMM", "MMM", "NNN", "NNN", "NNN", "NNN")

            .where("C", controller.self())
			.where("M", <metastate:gregtech:multiblock_casing:1>)
			.where("X", <metastate:gregtech:meta_block_frame_157:7>)
            .where("N", CTPredicate.states(<metastate:gregtech:metal_casing:7>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(10).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(collect_air)
    .withBaseTexture(<metastate:gregtech:metal_casing:7>)
    .buildAndRegister();
collect_air.recipeBuilder() 
    .circuit(1)
	.fluidOutputs(<liquid:hydrogen>*96)
	.fluidOutputs(<liquid:oxygen>*2100)
	.fluidOutputs(<liquid:nitrogen>*7700)
	.fluidOutputs(<liquid:nitric_oxide>*3)
	.fluidOutputs(<liquid:nitrogen_dioxide>*3)
	.fluidOutputs(<liquid:carbon_dioxide>*3)
	.fluidOutputs(<liquid:krypton>*15)
	.fluidOutputs(<liquid:neon>*15)
	.fluidOutputs(<liquid:xenon>*15)
	.fluidOutputs(<liquid:radon>*15)
	.fluidOutputs(<liquid:helium>*15)
	.fluidOutputs(<liquid:argon>*15)
	.EUt(1000)
    .duration(100) 
    .buildAndRegister(); 