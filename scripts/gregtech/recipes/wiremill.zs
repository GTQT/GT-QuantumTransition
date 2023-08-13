import mods.gregtech.recipe.RecipeMap;
val wiremill = mods.gregtech.recipe.RecipeMap.getByName("wiremill");
wiremill.recipeBuilder() 
    .inputs(<ore:dustCertusQuartz>*4)
    .outputs(<appliedenergistics2:part:140> * 1)
    .duration(120)
    .EUt(16)
    .buildAndRegister();
