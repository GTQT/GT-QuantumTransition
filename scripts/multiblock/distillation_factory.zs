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
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillation_tower");
global distillation_factory as RecipeMap = FactoryRecipeMap.start("distillation_factory_controller")
    .maxInputs(2)
	.maxFluidInputs(2)
	.maxFluidOutputs(12)
    .build();
 
Builder.start("distillation_factory", 32032)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("NNN", "NNN", "NNN", "NNN", "NNN", "NNN", "NNN","NNN","NNN","NNN", "NNN")
            .aisle("NNN", "NXN", "NXN", "NXN", "NXN", "NXN", "NXN","NXN","NXN","NXN", "NNN")
            .aisle("NNN", "NCN", "NNN", "NNN", "NNN", "NNN", "NNN","NNN","NNN","NNN", "NNN")
            .where("C", controller.self())
			.where("X", <metastate:gregtech:meta_block_frame_125:13>)
            .where("N", CTPredicate.states(<metastate:gregtech:metal_casing:5>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(12).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(distillation_tower)
    .withBaseTexture(<metastate:gregtech:metal_casing:5>)
    .buildAndRegister();
