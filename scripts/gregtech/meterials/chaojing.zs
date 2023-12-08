import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val large_chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:3005>*6,<gregtech:meta_dust:3104>*4,<gregtech:meta_dust:32376>*4,<gregtech:meta_dust:32378>*3,<gregtech:meta_dust:32379>*3)
	.fluidInputs(<liquid:naquadria>*5760)
	.outputs(<gregtech:meta_dust:32375>*20)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:334>*6,<gregtech:meta_dust:428>*3,<gregtech:meta_dust:30>*2,<gregtech:meta_dust:38>*4,<gregtech:meta_dust:130>*2,<gregtech:meta_dust:92>*3)
	.outputs(<gregtech:meta_dust:32378>*20)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();