import mods.gregtech.recipe.RecipeMap;
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_gem:214> * 1)
	.fluidInputs(<liquid:distilled_water> * 36)
    .outputs(<appliedenergistics2:material:10> * 1)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_dust:18> * 4)
	.fluidInputs(<liquid:polyvinyl_chloride> * 144)
    .outputs(<gregtech:meta_item_1:499> * 1)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_dust:123>)
	.fluidInputs(<liquid:liquid_oxygen> * 2000)
    .outputs(<gregtech:meta_dust:3542>)
    .duration(1000)
    .EUt(1920)
    .buildAndRegister();
	
autoclave.recipeBuilder() 
    .inputs(<appliedenergistics2:material:7> * 1)
	.fluidInputs(<liquid:distilled_water> * 36)
    .outputs(<appliedenergistics2:material:12> * 1)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_dust:342>)
	.fluidInputs(<liquid:boron_nitride_solution> * 666)
    .outputs(<gregtech:meta_dust:3558> * 1)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_dust:3558>)
	.fluidInputs(<liquid:water> * 666)
    .outputs(<gregtech:meta_dust:3559>)
    .duration(100)
    .EUt(128)
    .buildAndRegister();


autoclave.recipeBuilder() 
	.fluidInputs(<liquid:sodium_hydroxide_solution> * 1000)
    .outputs(<gregtech:meta_dust:377>)
    .duration(100)
    .EUt(128)
    .buildAndRegister();

autoclave.recipeBuilder() 
	.fluidInputs(<liquid:potassium_fluoride_solution> * 1000)
    .outputs(<nuclearcraft:compound:4>)
    .duration(100)
    .EUt(128)
    .buildAndRegister();

autoclave.recipeBuilder() 
	.fluidInputs(<liquid:sodium_fluoride_solution> * 1000)
    .outputs(<nuclearcraft:compound:3>)
    .duration(100)
    .EUt(128)
    .buildAndRegister();

autoclave.recipeBuilder() 
	.fluidInputs(<liquid:calcium_sulfate_solution> * 1000)
    .outputs(<nuclearcraft:compound:0>)
    .duration(100)
    .EUt(128)
    .buildAndRegister();

autoclave.recipeBuilder() 
	.fluidInputs(<liquid:sodium_potassium> * 1000)
    .fluidOutputs(<liquid:nak>*1000)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
