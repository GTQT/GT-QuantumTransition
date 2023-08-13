import mods.gregtech.recipe.RecipeMap;
val fermenter = mods.gregtech.recipe.RecipeMap.getByName("fermenter");
fermenter.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:1001>)
	.fluidInputs(<liquid:biomass>*50)
    .outputs(<forestry:mulch>)
    .duration(100)
    .EUt(30)
    .buildAndRegister();
	
fermenter.recipeBuilder() 
	.fluidInputs(<liquid:honey>*50)
    .fluidOutputs(<liquid:for.honey>*50)
    .duration(100)
    .EUt(30)
    .buildAndRegister();