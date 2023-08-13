import mods.gregtech.recipe.RecipeMap;
val fusion_reactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:naquadria> * 128,<liquid:darmstadtium> * 128)
    .fluidOutputs(<liquid:neutronium>* 32) 
    .property("eu_to_start", 480000000)
    .duration(200)
    .EUt(98304)
    .buildAndRegister();
