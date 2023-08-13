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
 
global original_generator as RecipeMap = FactoryRecipeMap.start("original_generator_controller")
    .maxFluidInputs(1)
	.maxFluidOutputs(1)
    .build();
 
Builder.start("original_generator", 32020)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("NN#", "NNN", "NN#")
			.aisle("NNN", "NNN", "NNN")
			.aisle("NN#", "NCN", "NN#")
            .where("C", controller.self())
            .where("N", CTPredicate.states(<metastate:gregtech:metal_casing>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(original_generator)
    .withBaseTexture(<metastate:gregtech:metal_casing>)
    .buildAndRegister();
original_generator.recipeBuilder() 
    .duration(1)  
    .EUt(-5)  
    .fluidInputs(<liquid:steam> * 50)  
    .fluidOutputs(<liquid:water> * 50) 
    .buildAndRegister(); 
