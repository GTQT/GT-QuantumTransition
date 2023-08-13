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
 
global bronze_ore_washer as RecipeMap = FactoryRecipeMap.start("bronze_ore_washer_controller")
    .maxInputs(2)
    .maxFluidInputs(1)
	.maxOutputs(3)
    .build();
 
Builder.start("bronze_ore_washer", 32019)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("NNN", "NNN", "NNN")
            .aisle("NNN", "N#N", "N#N")
			.aisle("NNN", "N#N", "N#N")
			.aisle("NNN", "NCN", "NNN")
            .where("C", controller.self())
            .where("N", CTPredicate.states(<metastate:gregtech:metal_casing>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(bronze_ore_washer)
    .withBaseTexture(<metastate:gregtech:metal_casing>)
    .buildAndRegister();
bronze_ore_washer.recipeBuilder() 
	.fluidInputs(<liquid:water>*125)
	.inputs(<ore:dirt>)
	.chancedOutput(<gregtech:meta_dust_small:2049>, 1000, 10)
	.chancedOutput(<gregtech:meta_item_1:1001>, 1000, 10)
	.chancedOutput(<gregtech:meta_dust_small:2063>, 1000, 10)
	.EUt(5)
    .duration(2) 
    .buildAndRegister();
