import mods.gregtech.recipe.RecipeMap;
val polarizer = mods.gregtech.recipe.RecipeMap.getByName("polarizer");
polarizer.recipeBuilder() 
    .inputs(<gregtech:meta_gem:214> * 1)
    .outputs(<appliedenergistics2:material:1> * 1)
    .duration(100)
    .EUt(256)
    .buildAndRegister();