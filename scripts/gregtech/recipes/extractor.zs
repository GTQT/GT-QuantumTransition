import mods.gregtech.recipe.RecipeMap;
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val fluid_solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
extractor.recipeBuilder() 
    .inputs(<extraplanets:callisto:7>)
    .fluidOutputs(<liquid:oil_medium>*4000)
    .duration(100)
	.circuit(20)
    .EUt(30)
    .buildAndRegister();
	
extractor.recipeBuilder() 
    .inputs(<extraplanets:callisto:6>)
    .fluidOutputs(<liquid:oil_medium>*4000)
    .duration(100)
	.circuit(20)
    .EUt(30)
    .buildAndRegister();
	
extractor.recipeBuilder() 
    .inputs(<forestry:honeydew>)
    .fluidOutputs(<liquid:for.honey>*72)
    .duration(100)
    .EUt(30)
    .buildAndRegister();
	
extractor.recipeBuilder() 
    .inputs(<forestry:honey_drop>)
    .fluidOutputs(<liquid:for.honey>*144)
    .duration(100)
    .EUt(30)
    .buildAndRegister();
	
extractor.recipeBuilder() 
    .inputs(<harvestcraft:honeyitem>)
    .fluidOutputs(<liquid:for.honey>*144)
    .duration(100)
    .EUt(30)
    .buildAndRegister();
	
fluid_solidifier.recipeBuilder() 
    .outputs(<contenttweaker:ynuclear>*10)
    .fluidInputs(<liquid:ynuclear>*10)
    .duration(2)
    .EUt(5)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .outputs(<gregtech:meta_dust:361>)
    .fluidInputs(<liquid:sodium_bisulfate>*144)
    .duration(2)
    .EUt(5)
    .buildAndRegister();
	
extractor.recipeBuilder() 
    .inputs(<minecraft:magma>)
    .fluidOutputs(<liquid:lava>*10)
    .duration(2)
    .EUt(5)
    .buildAndRegister();