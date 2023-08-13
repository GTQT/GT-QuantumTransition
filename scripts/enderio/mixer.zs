import mods.gregtech.recipe.RecipeMap;
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
mixer.recipeBuilder() 
    .inputs(<enderio:item_material:36> * 1,<gregtech:meta_dust:1607> * 3,<gregtech:meta_dust:416>*2)
    .outputs(<enderio:item_material:22> * 6)
    .duration(100)
    .EUt(32)
    .buildAndRegister();
	