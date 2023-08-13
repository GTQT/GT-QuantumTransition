import mods.gregtech.recipe.RecipeMap;
val cutter = mods.gregtech.recipe.RecipeMap.getByName("cutter");
cutter.recipeBuilder() 
    .inputs(<gcys:meta_item_1:356>)
    .fluidInputs(<liquid:liquid_nitrogen>*100)
	.outputs(<gcys:meta_item_1:368>)
    .duration(50)
    .EUt(7600)
	.property("cleanroom", "cleanroom")
    .buildAndRegister();
	
cutter.recipeBuilder() 
    .inputs(<gcys:meta_item_1:357>)
    .fluidInputs(<liquid:liquid_nitrogen>*100)
	.outputs(<gcys:meta_item_1:369>)
    .duration(50)
    .EUt(7600)
	.property("cleanroom", "cleanroom")
    .buildAndRegister();
	

cutter.recipeBuilder() 
    .inputs(<gcys:meta_item_1:358>)
    .fluidInputs(<liquid:liquid_nitrogen>*100)
	.outputs(<gcys:meta_item_1:370>)
    .duration(50)
    .EUt(7600)
	.property("cleanroom", "cleanroom")
    .buildAndRegister();
	
