import mods.gregtech.recipe.RecipeMap;
val alloy_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
alloy_smelter.recipeBuilder() 
    .inputs(<minecraft:redstone> * 1,<minecraft:iron_ingot> * 1)
    .outputs(<enderio:item_alloy_ingot:4> * 1)
    .duration(120)
    .EUt(16)
    .buildAndRegister();