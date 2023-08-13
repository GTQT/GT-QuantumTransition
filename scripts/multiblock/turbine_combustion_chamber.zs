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
 
global turbine_combustion_chamber as RecipeMap = FactoryRecipeMap.start("turbine_combustion_chamber_controller")
    .maxFluidInputs(2)
	.maxFluidOutputs(1)
    .build();
 
Builder.start("turbine_combustion_chamber", 32023)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("NAANBB", "NAANBB", "NAANBB")
            .aisle("NAANBB", "BDDDDB", "NAANBB")
            .aisle("NAANBB", "NAANCB", "NAANBB")

            .where("C", controller.self())
			.where("A", <metastate:gregtech:wire_coil:2>)
			.where("N", <metastate:gregtech:boiler_firebox_casing:2>)
			.where("D", <metastate:gregtech:boiler_casing:2>)
            .where("B", CTPredicate.states(<metastate:gregtech:metal_casing:6>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(turbine_combustion_chamber)
    .withBaseTexture(<metastate:gregtech:metal_casing:6>)
    .buildAndRegister();
turbine_combustion_chamber.recipeBuilder() 
	.fluidInputs(<liquid:water>*512,<liquid:diesel>*16)
	.fluidOutputs(<liquid:ic2superheated_steam>*1280)
	.EUt(-4096)
    .duration(2) 
    .buildAndRegister(); 
	
turbine_combustion_chamber.recipeBuilder() 
	.fluidInputs(<liquid:water>*500,<liquid:bio_diesel>*32)
	.fluidOutputs(<liquid:ic2superheated_steam>*120)
	.EUt(-4096)
    .duration(2) 
    .buildAndRegister(); 
	
turbine_combustion_chamber.recipeBuilder() 
	.fluidInputs(<liquid:water>*500,<liquid:methane>*85)
	.fluidOutputs(<liquid:ic2superheated_steam>*120)
	.EUt(-4096)
    .duration(2) 
    .buildAndRegister(); 
	
turbine_combustion_chamber.recipeBuilder() 
	.fluidInputs(<liquid:water>*500,<liquid:nitro_fuel>*11)
	.fluidOutputs(<liquid:ic2superheated_steam>*120)
	.EUt(-4096)
    .duration(2) 
    .buildAndRegister(); 

turbine_combustion_chamber.recipeBuilder() 
	.fluidInputs(<liquid:water>*500,<liquid:gasoline>*10)
	.fluidOutputs(<liquid:ic2superheated_steam>*120)
	.EUt(-4096)
    .duration(2) 
    .buildAndRegister(); 
	
turbine_combustion_chamber.recipeBuilder() 
	.fluidInputs(<liquid:water>*500,<liquid:gasoline_premium>*3)
	.fluidOutputs(<liquid:ic2superheated_steam>*120)
	.EUt(-4096)
    .duration(2) 
    .buildAndRegister(); 
	
turbine_combustion_chamber.recipeBuilder() 
	.fluidInputs(<liquid:water>*500,<liquid:rocket_fuel>*32)
	.fluidOutputs(<liquid:ic2superheated_steam>*120)
	.EUt(-4096)
    .duration(2) 
    .buildAndRegister(); 
	
turbine_combustion_chamber.recipeBuilder() 
	.fluidInputs(<liquid:water>*500,<liquid:coal_gas>*64)
	.fluidOutputs(<liquid:ic2superheated_steam>*120)
	.EUt(-4096)
    .duration(2) 
    .buildAndRegister(); 
	
turbine_combustion_chamber.recipeBuilder() 
	.fluidInputs(<liquid:water>*500,<liquid:lpg>*64)
	.fluidOutputs(<liquid:ic2superheated_steam>*120)
	.EUt(-4096)
    .duration(2) 
    .buildAndRegister(); 