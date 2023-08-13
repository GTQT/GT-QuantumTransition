import mods.gregtech.recipe.RecipeMap;
val alloy_blast_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_blast_smelter");
alloy_blast_smelter.recipeBuilder() 
    .inputs(<gregtech:meta_dust:297> * 5,<gregtech:meta_dust:51> * 2,<gregtech:meta_dust:2> * 2)
	.fluidOutputs(<liquid:alumite> * 576)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
alloy_blast_smelter.recipeBuilder() 
    .inputs(<gregtech:meta_dust:126> * 7,<gregtech:meta_dust:18> * 4,<gregtech:meta_dust:115> * 3,<gregtech:meta_dust:118> * 3,<gregtech:meta_dust:81>,<gregtech:meta_dust:429>)
	.circuit(20)
	.fluidOutputs(<liquid:enriched_naquadria_alloy>* 2736)
    .duration(12000)
    .EUt(491520)
    .buildAndRegister();
	
alloy_blast_smelter.recipeBuilder() 
    .inputs(<gregtech:meta_dust:124> * 7,<gregtech:meta_dust:77> * 4,<gregtech:meta_dust:93> * 3,<gregtech:meta_dust:40> * 3,<gregtech:meta_dust:81>)
	.circuit(20)
	.fluidOutputs(<liquid:initial_alloy>* 2592)
    .duration(12000)
    .EUt(491520)
    .buildAndRegister();
	