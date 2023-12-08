import mods.gregtech.recipe.RecipeMap;
val gas_turbine = mods.gregtech.recipe.RecipeMap.getByName("gas_turbine");
val semi_fluid_generator = mods.gregtech.recipe.RecipeMap.getByName("semi_fluid_generator");
val combustion_generator = mods.gregtech.recipe.RecipeMap.getByName("combustion_generator");
<recipemap:combustion_generator>.findRecipe(32, null, [<liquid:gasoline_premium>]).remove();
