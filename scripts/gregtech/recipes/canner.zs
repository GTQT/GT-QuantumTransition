import mods.gregtech.recipe.RecipeMap;
val canner = mods.gregtech.recipe.RecipeMap.getByName("canner");
canner.recipeBuilder() 
    .inputs(<ic2:crafting:9> * 1,<ic2:nuclear> * 1)
    .outputs(<ic2:uranium_fuel_rod>.withTag({advDmg: 0}) * 1)
    .duration(30)
    .EUt(16)
    .buildAndRegister();
	
canner.recipeBuilder() 
    .inputs(<ic2:crafting:9> * 1,<ic2:nuclear:3> * 1)
    .outputs(<ic2:mox_fuel_rod>.withTag({advDmg: 0}) * 1)
    .duration(30)
    .EUt(16)
    .buildAndRegister();
	
canner.recipeBuilder() 
    .inputs(<ic2:crafting:9>,<contenttweaker:guiyanranliao>)
    .outputs(<contenttweaker:naquadah_rod>)
    .duration(30)
    .EUt(16)
    .buildAndRegister();
	
canner.recipeBuilder() 
    .inputs(<ic2:crafting:9>)
	.fluidInputs(<liquid:thorium>*1440)
    .outputs(<contenttweaker:thorium_rod>)
    .duration(30)
    .EUt(16)
    .buildAndRegister();
	
