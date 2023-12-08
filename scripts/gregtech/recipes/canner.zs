import mods.gregtech.recipe.RecipeMap;
val canner = mods.gregtech.recipe.RecipeMap.getByName("canner");		
canner.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:78>)
	.fluidInputs(<liquid:thorium>*1440)
    .outputs(<contenttweaker:thorium_rod>)
    .duration(30)
    .EUt(16)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<ore:dustEnderPearl>*9)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs(<enderio:item_material:16>)
    .duration(1)
    .EUt(1960)
    .buildAndRegister();

canner.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:78>*2,<contenttweaker:guiyanranliao>)
    .outputs(<contenttweaker:naquadah_rod>)
    .duration(30)
    .EUt(16)
    .buildAndRegister();