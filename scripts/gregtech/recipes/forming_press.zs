import mods.gregtech.recipe.RecipeMap;
val forming_press = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
forming_press.recipeBuilder() 
    .notConsumable(<appliedenergistics2:material:13> * 1)
    .inputs(<gregtech:meta_plate:214>*8,<gregtech:meta_gear_small:99>*8,<gregtech:meta_plate:2064>*8,<gregtech:meta_item_1:629>,<gregtech:meta_item_1:603>)
	.outputs(<appliedenergistics2:material:22>*16)
    .duration(100)
    .EUt(1960)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .notConsumable(<appliedenergistics2:material:14> * 1)
    .inputs(<gregtech:meta_plate:276>*8,<gregtech:meta_gear_small:99>*8,<gregtech:meta_plate:2064>*8,<gregtech:meta_item_1:629>,<gregtech:meta_item_1:603>)
	.outputs(<appliedenergistics2:material:23>*16)
    .duration(100)
    .EUt(1960)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .notConsumable(<appliedenergistics2:material:15> * 1)
    .inputs(<gregtech:meta_plate:41>*8,<gregtech:meta_gear_small:99>*8,<gregtech:meta_plate:2064>*8,<gregtech:meta_item_1:629>,<gregtech:meta_item_1:603>)
	.outputs(<appliedenergistics2:material:24>*16)
    .duration(100)
    .EUt(1960)
    .buildAndRegister();