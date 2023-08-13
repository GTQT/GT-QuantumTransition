import mods.gregtech.recipe.RecipeMap;
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillation_tower");
val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val chemical_plant = mods.gregtech.recipe.RecipeMap.getByName("chemical_plant");

// 小堆焦煤粉 * 1
<recipemap:distillation_tower>.findRecipe(120, null, [<liquid:coal_tar> * 1000]).remove();
distillation_tower.recipeBuilder() 
    .fluidInputs(<liquid:coal_tar>* 120)
    .fluidOutputs(<liquid:naphthalene> * 40,<liquid:hydrogen_sulfide>*30,<liquid:kerosene>*20,<liquid:creosote>*20,<liquid:phenol>*10)
    .duration(120)
    .EUt(480)
    .buildAndRegister();

distillery.recipeBuilder() 
    .fluidInputs(<liquid:kerosene>* 20)
    .fluidOutputs(<liquid:rpone> * 20)
    .duration(16)
    .EUt(120)
    .buildAndRegister();
	
