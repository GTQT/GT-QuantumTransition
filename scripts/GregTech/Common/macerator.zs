import mods.gregtech.recipe.RecipeMap;
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
<recipemap:macerator>.findRecipe(2, [<gregtech:stone_smooth:1>], null).remove();	
<recipemap:macerator>.findRecipe(2, [<gregtech:stone_smooth>], null).remove();	
macerator.recipeBuilder() 
    .inputs(<ore:stoneGraniteRed>)
    .outputs(<gregtech:meta_dust:2020>)
    .duration(150)
    .EUt(2)
    .buildAndRegister();

macerator.recipeBuilder() 
    .inputs(<ore:stoneGraniteBlack>)
    .outputs(<gregtech:meta_dust:2019>)
    .duration(150)
    .EUt(30)
    .buildAndRegister();
	