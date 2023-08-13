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
 
global enderio_ebf as RecipeMap = FactoryRecipeMap.start("enderio_ebf_controller")
    .maxInputs(4)
	.maxOutputs(4)
    .maxFluidInputs(1)
    .maxFluidOutputs(1)
    .build();
 
Builder.start("enderio_ebf", 32002)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMMM", "NNNN", "NNNN", "NNNN", "MMMM")
            .aisle("MMMM", "N##N", "N##N", "N##N", "MMMM")
            .aisle("MMMM", "N##N", "N##N", "N##N", "MMMM")
            .aisle("MCMM", "NNNN", "NNNN", "NNNN", "MMMM")
            .where("C", controller.self())
            .where("N", <metastate:gregtech:wire_coil:1>)
            .where("M", CTPredicate.states(<metastate:gregtech:metal_casing:2>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(enderio_ebf)
    .withBaseTexture(<metastate:gregtech:metal_casing:2>)
    .buildAndRegister();	
enderio_ebf.recipeBuilder()
    .duration(500)  
    .EUt(960)  
    .inputs(<enderio:item_material:66>,<enderio:item_material:67>) 
    .outputs(<enderio:item_material:54> * 1) 
    .buildAndRegister(); 
	
enderio_ebf.recipeBuilder()
    .duration(500)  
    .EUt(512)  
    .inputs(<enderio:item_material:0>,<enderio:item_material:52>) 
    .outputs(<enderio:item_material:53> * 1) 
    .buildAndRegister(); 
	
enderio_ebf.recipeBuilder()
    .duration(500)  
    .EUt(128)  
    .inputs(<minecraft:glass>) 
    .outputs(<enderio:block_fused_glass> * 1) 
    .buildAndRegister(); 

