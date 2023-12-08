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
val dissolution_tank_recipes = mods.gregtech.recipe.RecipeMap.getByName("dissolution_tank_recipes");

dissolution_tank_recipes.recipeBuilder() 
    .inputs(<ore:dustSaltpeter>*9) 
	.fluidInputs(<liquid:dujushixituzhuorongye>*9000,<liquid:water>*90000)
	.fluidOutputs(<liquid:xishidujushixitunijiang>*99000)
	.outputs(<gregtech:meta_dust:32299>,<gregtech:meta_dust:332>,<gregtech:meta_dust:2029>*2)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
dissolution_tank_recipes.recipeBuilder()
    .duration(500)  
    .EUt(7860)  
    .inputs(<gregtech:meta_dust:32037>) 
    .fluidInputs(<liquid:hydrochloric_acid> * 250)  
	.outputs(<gregtech:meta_dust:32038>)
    .fluidOutputs(<liquid:goldcl> * 250) 
    .buildAndRegister(); 

dissolution_tank_recipes.recipeBuilder()
    .duration(500)  
    .EUt(7860)  
    .fluidInputs(<liquid:chunjingchulixitu>*1000,<liquid:hydrochloric_acid>*1000)  
    .fluidOutputs(<liquid:rare_earth_chlorides_solution> * 1000) 
    .buildAndRegister(); 
	
dissolution_tank_recipes.recipeBuilder()
	.fluidInputs(<liquid:tiaozhizhengqiliejiefutanlanshixituzhuorongye>*1000,<liquid:water>*10000)
	.inputs(<ore:dustSaltpeter>)
	.fluidOutputs(<liquid:xishifutanlanshinijiang>*11000)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
dissolution_tank_recipes.recipeBuilder() 
	.fluidInputs(<liquid:shanxituzhuorongye>*1000,<liquid:nitric_acid>*1000)
	.fluidOutputs(<liquid:xishishannijiang>*2000)
	.outputs(<gregtech:meta_dust:32324>)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();