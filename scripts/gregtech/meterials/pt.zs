import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val electric_blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("electric_blast_furnace");
electric_blast_furnace.recipeBuilder() 
    .inputs(<contenttweaker:pti_item>)
    .fluidOutputs(<liquid:chlorine> * 72) 
    .outputs(<contenttweaker:ptcl_item>)
    .property("temperature", 3600)
	.circuit(1)
    .duration(900)
    .EUt(1200)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:water>*1000)
    .inputs(<contenttweaker:ptcl_item>*1)
	.outputs(<gregtech:meta_dust:80>*1)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:299>*9)
	.fluidInputs(<liquid:aqua_regia>*9000)
	.outputs(<gregtech:meta_dust:2057>)
	.fluidOutputs(<liquid:pti>*9000)
    .duration(200)
	.circuit(2)
    .EUt(512)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:2060>*2)
	.fluidInputs(<liquid:pti>*9000)
	.outputs(<contenttweaker:pti_item>*8)
	.fluidOutputs(<liquid:nitrogen_dioxide>*4500,<liquid:diluted_sulfuric_acid>*4500)
    .duration(200)
	.circuit(3)
    .EUt(512)
    .buildAndRegister();
	
// 铂粉 * 3
<recipemap:electrolyzer>.findRecipe(60, [<metaitem:dustCooperite> * 6], null).remove();
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");

electrolyzer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:273>*6)
    .fluidInputs(<liquid:hydrochloric_acid>*6000)
    .outputs(<gregtech:meta_dust:299> * 3,<gregtech:meta_dust:69>,<gregtech:meta_dust:103>,<gregtech:meta_dust:2058>)
	.fluidOutputs(<liquid:hydrogen>*6000)
    .duration(600)
    .EUt(480)
    .buildAndRegister();
