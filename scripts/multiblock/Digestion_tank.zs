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
val digester_recipes = mods.gregtech.recipe.RecipeMap.getByName("digester_recipes");
	
digester_recipes.recipeBuilder() 
    .inputs(<ore:crushedMonazite>*2) 
	.fluidInputs(<liquid:nitric_acid>*700)
	.fluidOutputs(<liquid:dujushixituzhuorongye>*400)
	.outputs(<gregtech:meta_dust:356>)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
digester_recipes.recipeBuilder() 
    .inputs(<gregtech:meta_gem:2029>) 
	.fluidInputs(<liquid:nitric_acid>*700)
	.fluidOutputs(<liquid:dujushixituzhuorongye>*400)
	.outputs(<gregtech:meta_dust:356>)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
digester_recipes.recipeBuilder() 
    .inputs(<ore:crushedBastnasite>*2) 
	.fluidInputs(<liquid:nitric_acid>*700)
	.fluidOutputs(<liquid:futanlanshixituzhuorongye>*400)
	.outputs(<gregtech:meta_dust:356>)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
digester_recipes.recipeBuilder()
    .duration(400)  
    .EUt(7860)  
    .inputs(<gregtech:meta_dust:32036> * 1) 
    .fluidInputs(<liquid:nitration_mixture> * 800)  
    .fluidOutputs(<liquid:goldcl> * 200,<liquid:nitrogen_dioxide> * 500) 
	.outputs(<gregtech:meta_dust:32037> * 1)
    .buildAndRegister(); 

digester_recipes.recipeBuilder()
    .duration(40)  
    .EUt(7860)  
    .inputs(<contenttweaker:haidai_item>*3) 
    .fluidInputs(<liquid:diluted_sulfuric_acid>*400)  
    .fluidOutputs(<liquid:fujihaidai>*576) 
    .buildAndRegister(); 

digester_recipes.recipeBuilder()
    .duration(400)  
    .EUt(7860)  
    .fluidInputs(<liquid:rare_earth_hydroxides_solution>*200,<liquid:nitric_acid>*100)  
    .fluidOutputs(<liquid:yuchulixitu>*1000) 
    .buildAndRegister(); 
	
digester_recipes.recipeBuilder()
    .duration(400)  
    .EUt(7860)  
    .inputs(<gregtech:meta_dust:2522>*6) 
    .fluidInputs(<liquid:water>*1000,<liquid:nitric_acid>*144)  
    .outputs(<contenttweaker:iro2_item>*4,<gregtech:meta_dust:2057>*3)
    .buildAndRegister(); 
	
digester_recipes.recipeBuilder()
    .duration(400)  
    .EUt(7860)  
    .inputs(<gregtech:meta_dust:1598>*10) 
    .fluidInputs(<liquid:water>*1000,<liquid:diethylhexyl_phosphoric_acid>*100)  
    .fluidOutputs(<liquid:rare_earth_hydroxides_solution>*1000)
    .buildAndRegister(); 

digester_recipes.recipeBuilder()
    .duration(400)  
    .EUt(7860)  
    .inputs(<gregtech:meta_dust:32299>*6) 
    .fluidInputs(<liquid:sulfuric_acid> * 1000)  
    .fluidOutputs(<liquid:liusuangaoha>*1000) 
    .buildAndRegister(); 

digester_recipes.recipeBuilder()
    .duration(400)  
    .EUt(7860)  
    .inputs(<gregtech:meta_dust:32367>*6) 
    .fluidInputs(<liquid:ammonia> * 6000)  
    .outputs(<gregtech:meta_dust:32352>*5,<gregtech:meta_dust:32351>*1,<gregtech:meta_dust:2060>*6) 
    .buildAndRegister(); 

digester_recipes.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32317>*16) 
	.fluidInputs(<liquid:nitric_acid>*200)
	.fluidOutputs(<liquid:shanxituzhuorongye>*800)
	.outputs(<gregtech:meta_dust:32305>*4)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();