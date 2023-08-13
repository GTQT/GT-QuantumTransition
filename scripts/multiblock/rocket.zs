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
 
global rocket as RecipeMap = FactoryRecipeMap.start("rocket")
	.maxFluidInputs(1)
    .build();
 
Builder.start("rocket", 32052)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("AAAAA", "ACCCA","ACCCA", "AAAAA")
            .aisle("ABBBA", "C   C","C   C", "AAAAA")
            .aisle("ABBBA", "C   C","C   C", "AAAAA")
            .aisle("ABBBA", "C   C","C   C", "AAAAA")
            .aisle("AAXAA", "ACCCA","ACCCA", "AAAAA")

            .where("X", controller.self())
			.where("B", <metastate:contenttweaker:mass_core>)
			.where("C", <metastate:gregtech:transparent_casing:1>)
            .where("A", CTPredicate.states(<metastate:contenttweaker:mass_generator>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(rocket)
    .withBaseTexture(<metastate:contenttweaker:mass_generator>)
    .buildAndRegister();
rocket.recipeBuilder()
    .duration(3750)  
    .EUt(-8192)  
    .fluidInputs(<liquid:rpmix>*1000) 
    .buildAndRegister(); 
	
rocket.recipeBuilder()
    .duration(7500)  
    .EUt(-8192)  
    .fluidInputs(<liquid:dense_hydrazine>*1000) 
    .buildAndRegister(); 
	
rocket.recipeBuilder()
    .duration(15000)  
    .EUt(-8192)  
    .fluidInputs(<liquid:methylhydrazine_nitrate>*1000) 
    .buildAndRegister(); 
	
rocket.recipeBuilder()
    .duration(15000)  
    .EUt(-8192)  
    .fluidInputs(<liquid:rocket_fuel>*1000) 
    .buildAndRegister(); 
	
