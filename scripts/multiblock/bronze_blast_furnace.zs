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
 
val bronze_blast_furnace = Builder.start("multiblocktweaker:bronze_blast_furnace",32018)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                return FactoryBlockPattern.start()
            .aisle("NNN", "MMM", "MMM", "MMM")
            .aisle("NMN", "M#M", "M#M", "M#M")
            .aisle("NNN", "MCM", "MMM", "MMM")
            .where("C", controller.self())
			.where("N", <metastate:gregtech:boiler_firebox_casing>)
            .where("M", CTPredicate.states(<metastate:gregtech:metal_casing>)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(
	FactoryRecipeMap.start("bronze_blast_furnace")
    .maxInputs(2)
    .maxFluidInputs(1)
	.maxFluidOutputs(1)
	.maxOutputs(2)
    .build())
    .withBaseTexture(<metastate:gregtech:metal_casing>)
    .buildAndRegister();
	
	
bronze_blast_furnace.runOverclockingLogic = function(recipelogic as IRecipeLogic, recipe as IRecipe, negativeEU as bool, maxOverclocks as int) as int[] {
    return IRecipeLogic.standardOverclockingLogic(recipe.getEUt() * (negativeEU ? -1 : 1), recipelogic.maxVoltage, recipe.getDuration(), 1, 1, 0); // 1x duration, 1x voltage, 0 overclocks
} as IRunOverclockingLogicFunction;

bronze_blast_furnace.hasMufflerMechanics = false;
bronze_blast_furnace.hasMaintenanceMechanics = false;
	
	
bronze_blast_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_ingot:335> * 1,<minecraft:coal:1> * 2)  
    .outputs(<gregtech:meta_ingot:324>* 1,<gregtech:meta_dust_tiny:254>) 
	.fluidInputs(<liquid:steam>*4000)
	.EUt(5)
    .duration(1800) 
    .buildAndRegister(); 

bronze_blast_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_ingot:335> * 1,<ore:gemCoke> * 2)  
    .outputs(<gregtech:meta_ingot:324>* 1,<gregtech:meta_dust_tiny:254>) 
	.EUt(5)
	.fluidInputs(<liquid:steam>*4000)
    .duration(1200) 
    .buildAndRegister(); 
	
bronze_blast_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_ingot:335> * 5,<ore:blockCoke> * 1)  
    .outputs(<gregtech:meta_ingot:324>* 5,<gregtech:meta_dust_tiny:254>) 
	.EUt(5)
	.fluidInputs(<liquid:steam>*4000)
    .duration(1200) 
    .buildAndRegister(); 
	
bronze_blast_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_ingot:335> * 5,<minecraft:coal_block> * 1)  
    .outputs(<gregtech:meta_ingot:324>* 5,<gregtech:meta_dust_tiny:254>) 
	.EUt(5)
	.fluidInputs(<liquid:steam>*4000)
    .duration(7200) 
    .buildAndRegister(); 
	
bronze_blast_furnace.recipeMap.recipeBuilder()
    .inputs(<minecraft:iron_ingot>,<ore:gemCoke>)  
    .outputs(<gregtech:meta_ingot:335>,<gregtech:meta_dust_tiny:254>) 
	.EUt(5)
	.fluidInputs(<liquid:steam>*4000)
    .duration(600) 
    .buildAndRegister(); 
	
bronze_blast_furnace.recipeMap.recipeBuilder()
    .inputs(<ore:logWood>)  
    .outputs(<gregtech:meta_gem:319>) 
	.EUt(5)
	.fluidInputs(<liquid:steam>*2500)
	.fluidOutputs(<liquid:creosote>*250)
    .duration(450) 
    .buildAndRegister(); 
	
bronze_blast_furnace.recipeMap.recipeBuilder()
    .inputs(<minecraft:coal>)  
    .outputs(<gregtech:meta_gem:319>) 
	.EUt(5)
	.fluidInputs(<liquid:steam>*5000)
	.fluidOutputs(<liquid:creosote>*500)
    .duration(600) 
    .buildAndRegister(); 
	
bronze_blast_furnace.recipeMap.recipeBuilder()
    .inputs(<minecraft:coal_block>)  
    .outputs(<gregtech:meta_block_compressed_19:15>) 
	.EUt(5)
	.fluidInputs(<liquid:steam>*5000)
	.fluidOutputs(<liquid:creosote>*5400)
    .duration(5000) 
    .buildAndRegister(); 
