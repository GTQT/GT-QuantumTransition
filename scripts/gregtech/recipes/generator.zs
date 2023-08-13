import mods.gregtech.recipe.RecipeMap;
val gas_turbine = mods.gregtech.recipe.RecipeMap.getByName("gas_turbine");
val semi_fluid_generator = mods.gregtech.recipe.RecipeMap.getByName("semi_fluid_generator");
gas_turbine.recipeBuilder() 
    .fluidInputs(<liquid:ic2biogas> * 8)
    .duration(6)
    .EUt(-32)
    .buildAndRegister();
	
semi_fluid_generator.recipeBuilder() 
    .fluidInputs(<liquid:lava>*4)
    .duration(1)
    .EUt(-32)
    .buildAndRegister();
	
