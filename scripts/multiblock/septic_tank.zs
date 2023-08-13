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
 
global septic_tank as RecipeMap = FactoryRecipeMap.start("septic_tank_controller")
    .maxInputs(4)
    .maxFluidInputs(1)
	.maxFluidOutputs(1)
	.maxOutputs(1)
    .build();
 
Builder.start("septic_tank", 32021)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("NNNN", "NMMN", "NNNN")
            .aisle("NNNN", "M##M", "NNNN")
            .aisle("NNNN", "M##M", "NNNN")
            .aisle("NCNN", "NMMN", "NNNN")

            .where("C", controller.self())
			.where("M", <metastate:gregtech:wire_coil>)
            .where("N", CTPredicate.states(<metastate:minecraft:brick_block>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(septic_tank)
    .withBaseTexture(<metastate:minecraft:brick_block>)
    .buildAndRegister();
septic_tank.recipeBuilder() 
	.fluidInputs(<liquid:fermented_biomass>*125)
    .outputs(<gregtech:meta_item_1:1001>*1) 
	.fluidOutputs(<liquid:ic2biogas>*125)
	.EUt(10)
    .duration(1200) 
    .buildAndRegister(); 

septic_tank.recipeBuilder() 
	.fluidInputs(<liquid:biomass>*5)
	.fluidOutputs(<liquid:fermented_biomass>*5)
	.EUt(2)
    .duration(1) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.fluidInputs(<liquid:gtfo_apple_cider>*5)
	.fluidOutputs(<liquid:fermented_biomass>*5)
	.EUt(2)
    .duration(1) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.fluidInputs(<liquid:gtfo_potato_juice>*5)
	.fluidOutputs(<liquid:fermented_biomass>*5)
	.EUt(2)
    .duration(1) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.fluidInputs(<liquid:gtfo_wheaty_juice>*5)
	.fluidOutputs(<liquid:fermented_biomass>*5)
	.EUt(2)
    .duration(1) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<ore:fish>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:wheat>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:reeds>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:bread>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:melon>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:beetroot>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:carrot>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:apple>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:potato>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:spider_eye>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:poisonous_potato>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:red_flower:*>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<ore:treeSapling>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<minecraft:wheat_seeds>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister(); 
	
septic_tank.recipeBuilder() 
	.inputs(<ore:listAllseed>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister();
	
septic_tank.recipeBuilder() 
	.inputs(<ore:listAllgrain>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister();
	
septic_tank.recipeBuilder() 
	.inputs(<ore:listAllfruit>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister();
	
septic_tank.recipeBuilder() 
	.inputs(<ore:listAllveggie>)
	.fluidInputs(<liquid:water>*125)
	.fluidOutputs(<liquid:fermented_biomass>*125)
	.EUt(2)
    .duration(600) 
    .buildAndRegister();