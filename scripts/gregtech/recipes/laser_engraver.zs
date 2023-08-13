import mods.gregtech.recipe.RecipeMap;
val laser_engraver = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
laser_engraver.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:822> * 1)
    .inputs(<gregtech:meta_item_1:372> * 1)
    .outputs(<appliedenergistics2:material:13> * 1)
    .duration(900)
    .EUt(480)
    .buildAndRegister();
	
laser_engraver.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:828> * 1)
    .inputs(<gregtech:meta_item_1:372> * 1)
    .outputs(<appliedenergistics2:material:15> * 1)
    .duration(900)
    .EUt(480)
    .buildAndRegister();
	
laser_engraver.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:825> * 1)
    .inputs(<gregtech:meta_item_1:372> * 1)
    .outputs(<appliedenergistics2:material:14> * 1)
    .duration(900)
    .EUt(480)
    .buildAndRegister();