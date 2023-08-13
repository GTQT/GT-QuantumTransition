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
 
global heat_exchanger as RecipeMap = FactoryRecipeMap.start("heat_exchanger_controller")
    .maxFluidInputs(2)
	.maxFluidOutputs(2)
    .build();
 
Builder.start("heat_exchanger", 32022)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("N#N#N", "NNNNN", "NNNNN", "NNNNN")
            .aisle("N#N#N", "NNNNN", "NAAAN", "NNNNN")
            .aisle("N#N#N", "NNNNN", "NCNNN", "NNNNN")

            .where("C", controller.self())
			.where("A", <metastate:gregtech:wire_coil:2>)
            .where("N", CTPredicate.states(<metastate:gregtech:metal_casing:5>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(heat_exchanger)
    .withBaseTexture(<metastate:gregtech:metal_casing:5>)
    .buildAndRegister();
heat_exchanger.recipeBuilder() 
	.fluidInputs(<liquid:ic2superheated_steam>*2000,<liquid:ic2coolant>*200)
	.fluidOutputs(<liquid:steam>*250000,<liquid:ic2hot_coolant>*200)
	.EUt(16)
    .duration(2) 
    .buildAndRegister(); 

heat_exchanger.recipeBuilder() 
	.fluidInputs(<liquid:ic2superheated_steam>*2000,<liquid:water>*2000)
	.fluidOutputs(<liquid:steam>*250000)
	.EUt(16)
    .duration(2) 
    .buildAndRegister(); 
	
heat_exchanger.recipeBuilder() 
	.fluidInputs(<liquid:ic2hot_coolant>*1000,<liquid:water>*100)
	.fluidOutputs(<liquid:ic2coolant>*1000,<liquid:steam>*1000)
	.EUt(16)
    .duration(1) 
    .buildAndRegister(); 
	
heat_exchanger.recipeBuilder() 
	.fluidInputs(<liquid:lava>*20,<liquid:water>*500)
	.fluidOutputs(<liquid:steam>*5000)
	.EUt(16)
    .duration(1) 
    .buildAndRegister(); 

