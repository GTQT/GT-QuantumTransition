import mods.gregtech.recipe.RecipeMap;
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillation_tower");
distillation_tower.recipeBuilder() 
    .fluidInputs(<liquid:ic2biogas> * 100)
    .fluidOutputs(<liquid:methane> * 60,<liquid:hydrogen_sulfide>*40)
    .duration(20)
    .EUt(96)
    .buildAndRegister();
	
distillation_tower.recipeBuilder() 
    .fluidInputs(<liquid:star_deep_material> * 1000)
    .fluidOutputs(<liquid:star_inside_material> * 60,<liquid:star_outside_material>*40,<liquid:plasma.helium>*600)
    .duration(1200)
    .EUt(1966080)
    .buildAndRegister();