import mods.gregtech.recipe.RecipeMap;
val bender = mods.gregtech.recipe.RecipeMap.getByName("bender");
bender.recipeBuilder() 
    .inputs(<thaumcraft:ingot> * 1)
    .outputs(<emt:materials_thaumiumplate> * 1)
	.circuit(1)
    .duration(20)
    .EUt(128)
    .buildAndRegister();
	
bender.recipeBuilder() 
    .inputs(<gregtech:meta_plate:297>*9)
    .outputs(<ic2:plate:15>)
	.circuit(9)
    .duration(600)
    .EUt(32)
    .buildAndRegister();
	
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