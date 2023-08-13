import mods.gregtech.recipe.RecipeMap;
val greenhouse = mods.gregtech.recipe.RecipeMap.getByName("greenhouse");

greenhouse.recipeBuilder() 
    .inputs(<minecraft:wheat_seeds>,<gregtech:meta_item_1:1001>*2)
    .fluidInputs(<liquid:water> * 10000)
	.outputs(<minecraft:wheat>*16,<minecraft:wheat_seeds>*4)
    .duration(1600)
    .EUt(60)
    .buildAndRegister();
	
greenhouse.recipeBuilder() 
    .inputs(<minecraft:potato>,<gregtech:meta_item_1:1001>*2)
    .fluidInputs(<liquid:water> * 10000)
	.outputs(<minecraft:potato>*16,<minecraft:poisonous_potato>)
    .duration(1600)
    .EUt(60)
    .buildAndRegister();
	
greenhouse.recipeBuilder() 
    .inputs(<minecraft:reeds>,<gregtech:meta_item_1:1001>*2)
    .fluidInputs(<liquid:water> * 10000)
	.outputs(<minecraft:reeds>*16)
    .duration(1600)
    .EUt(60)
    .buildAndRegister();
	
greenhouse.recipeBuilder() 
    .inputs(<minecraft:carrot>,<gregtech:meta_item_1:1001>*2)
    .fluidInputs(<liquid:water> * 10000)
	.outputs(<minecraft:carrot>*16)
    .duration(1600)
    .EUt(60)
    .buildAndRegister();
	
greenhouse.recipeBuilder() 
    .inputs(<minecraft:cactus>,<gregtech:meta_item_1:1001>*2)
    .fluidInputs(<liquid:water> * 10000)
	.outputs(<minecraft:cactus>*16)
    .duration(1600)
    .EUt(60)
    .buildAndRegister();
	
greenhouse.recipeBuilder() 
    .inputs(<minecraft:nether_wart>,<gregtech:meta_item_1:1001>*2)
    .fluidInputs(<liquid:water> * 10000)
	.outputs(<minecraft:nether_wart>*16)
    .duration(1600)
    .EUt(60)
    .buildAndRegister();
	


