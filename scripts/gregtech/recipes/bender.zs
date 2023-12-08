import mods.gregtech.recipe.RecipeMap;
val bender = mods.gregtech.recipe.RecipeMap.getByName("bender");
bender.recipeBuilder() 
    .inputs(<gregtech:meta_ingot:3008>)
    .outputs(<gregtech:meta_plate:3008>)
	.circuit(1)
    .duration(300)
    .EUt(32)
    .buildAndRegister();
	
bender.recipeBuilder() 
    .inputs(<gregtech:meta_ingot:3008>*2)
    .outputs(<gregtech:meta_plate_double:3008>)
	.circuit(2)
    .duration(300)
    .EUt(32)
    .buildAndRegister();
	
bender.recipeBuilder() 
    .inputs(<gregtech:meta_ingot:3008>*9)
    .outputs(<gregtech:meta_plate_dense:3008>)
	.circuit(3)
    .duration(300)
    .EUt(32)
    .buildAndRegister();
	
bender.recipeBuilder() 
    .inputs(<gregtech:meta_plate:3008>*9)
    .outputs(<gregtech:meta_plate_dense:3008>)
	.circuit(3)
    .duration(600)
    .EUt(32)
    .buildAndRegister();
	
bender.recipeBuilder() 
    .inputs(<gregtech:meta_plate:3008>*2)
    .outputs(<gregtech:meta_plate_double:3008>)
	.circuit(2)
    .duration(600)
    .EUt(32)
    .buildAndRegister();