import mods.gregtech.recipe.RecipeMap;
val gas_collector = mods.gregtech.recipe.RecipeMap.getByName("gas_collector");
gas_collector.recipeBuilder() 
    .fluidOutputs(<liquid:air> * 10000)
    .duration(200)
    .EUt(16)
	.circuit(20)
    .buildAndRegister();