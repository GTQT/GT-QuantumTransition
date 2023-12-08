import mods.gregtech.recipe.RecipeMap;
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
electrolyzer.recipeBuilder() 
    .inputs(<minecraft:stone:1> * 4)
    .outputs(<nuclearcraft:compound:3> * 1)
    .duration(120)
    .EUt(32)
    .buildAndRegister();
	
// 铝粉 * 6
<recipemap:electrolyzer>.findRecipe(60, [<metaitem:dustBauxite> * 15], null).remove();
electrolyzer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:286> * 2)
    .outputs(<gregtech:meta_dust:2> * 6)
	.fluidOutputs(<liquid:oxygen>*3000)
    .duration(120)
    .EUt(480)
    .buildAndRegister();
	
electrolyzer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32035>*3)
    .outputs(<gregtech:meta_dust:101>*3,<gregtech:meta_dust:2>)
	.fluidOutputs(<liquid:fluorine>*1000)
    .duration(120)
    .EUt(480)
    .buildAndRegister();
	
electrolyzer.recipeBuilder() 
    .inputs(<minecraft:sugar>*11)
    .outputs(<gregtech:meta_dust:18>*6)
	.fluidOutputs(<liquid:oxygen>*8000,<liquid:water>*2000)
    .duration(120)
    .EUt(120)
    .buildAndRegister();
	
electrolyzer.recipeBuilder() 
    .fluidInputs(<liquid:depleted_leu_233_fluoride>*144)
	.fluidOutputs(<liquid:leu_233_fluoride>*72,<liquid:fluorine>*72)
    .duration(900)
    .EUt(960)
    .buildAndRegister();
	
electrolyzer.recipeBuilder() 
    .fluidInputs(<liquid:sodium_fluoride_solution>*8000)
	.fluidOutputs(<liquid:fluorine>*1000)
    .duration(900)
	.outputs(<gregtech:meta_dust:101>*1)
    .EUt(1960)
    .buildAndRegister();
	
electrolyzer.recipeBuilder() 
    .fluidInputs(<liquid:water>*1000)
	.fluidOutputs(<liquid:hydrogen>*2000,<liquid:oxygen>*1000)
    .duration(75*20)
    .circuit(10)
    .EUt(30)
    .buildAndRegister();