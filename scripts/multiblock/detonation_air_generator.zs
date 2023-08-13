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
 
global detonation_air_generator as RecipeMap = FactoryRecipeMap.start("detonation_air_generator_controller")
    .maxFluidInputs(2)
	.maxFluidOutputs(1)
    .build();
 
Builder.start("detonation_air_generator", 32003)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("ANNMMMNNA", "ANNMMMNNA", "ANNMMMNNA")
            .aisle("ANNMMMNNA", "ABBBBBBBA", "ANNMMMNNA")
            .aisle("ANNMMMNNA", "ANNMCMNNA", "ANNMMMNNA")
            .where("C", controller.self())
            .where("N", <metastate:gregtech:wire_coil:3>)
            .where("B", <metastate:gregtech:turbine_casing:4>)
			.where("A", <metastate:gregtech:multiblock_casing:1>)
            .where("M", CTPredicate.states(<metastate:gregtech:metal_casing:7>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(2)
		        | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(2)
            )
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(detonation_air_generator)
    .withBaseTexture(<metastate:gregtech:metal_casing:7>)
    .buildAndRegister();
detonation_air_generator.recipeBuilder() 
	.fluidInputs(<liquid:water>*2000,<liquid:diesel>*64)
	.fluidOutputs(<liquid:ic2superheated_steam>*800)
	.EUt(-16384)
    .duration(2) 
    .buildAndRegister(); 
	
detonation_air_generator.recipeBuilder() 
	.fluidInputs(<liquid:water>*2000,<liquid:bio_diesel>*128)
	.fluidOutputs(<liquid:ic2superheated_steam>*800)
	.EUt(-16384)
    .duration(2) 
    .buildAndRegister(); 
	
detonation_air_generator.recipeBuilder() 
	.fluidInputs(<liquid:water>*2000,<liquid:methane>*341)
	.fluidOutputs(<liquid:ic2superheated_steam>*800)
	.EUt(-16384)
    .duration(2) 
    .buildAndRegister(); 
	
detonation_air_generator.recipeBuilder() 
	.fluidInputs(<liquid:water>*2000,<liquid:nitro_fuel>*44)
	.fluidOutputs(<liquid:ic2superheated_steam>*800)
	.EUt(-16384)
    .duration(2) 
    .buildAndRegister(); 

detonation_air_generator.recipeBuilder() 
	.fluidInputs(<liquid:water>*2000,<liquid:gasoline>*40)
	.fluidOutputs(<liquid:ic2superheated_steam>*800)
	.EUt(-16384)
    .duration(2) 
    .buildAndRegister(); 
	
detonation_air_generator.recipeBuilder() 
	.fluidInputs(<liquid:water>*2000,<liquid:gasoline_premium>*9)
	.fluidOutputs(<liquid:ic2superheated_steam>*800)
	.EUt(-16384)
    .duration(2) 
    .buildAndRegister(); 
	
detonation_air_generator.recipeBuilder() 
	.fluidInputs(<liquid:water>*2000,<liquid:rocket_fuel>*128)
	.fluidOutputs(<liquid:ic2superheated_steam>*800)
	.EUt(-16384)
    .duration(2) 
    .buildAndRegister(); 
	
detonation_air_generator.recipeBuilder() 
	.fluidInputs(<liquid:water>*2000,<liquid:coal_gas>*256)
	.fluidOutputs(<liquid:ic2superheated_steam>*800)
	.EUt(-16384)
    .duration(2) 
    .buildAndRegister(); 
	
detonation_air_generator.recipeBuilder() 
	.fluidInputs(<liquid:water>*2000,<liquid:lpg>*256)
	.fluidOutputs(<liquid:ic2superheated_steam>*800)
	.EUt(-16384)
    .duration(2) 
    .buildAndRegister(); 