import mods.gregtech.recipe.RecipeMap;
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val forge_hammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_dust:16000>)
    .outputs(<thaumcraft:crystal_aer>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
	
	
autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_dust:16001>)
    .outputs(<thaumcraft:crystal_ignis>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
	

autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_dust:16002>)
    .outputs(<thaumcraft:crystal_aqua>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
	
	
autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_dust:16003>)
    .outputs(<thaumcraft:crystal_terra>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
	

autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_dust:16004>)
    .outputs(<thaumcraft:crystal_perditio>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
	
	
autoclave.recipeBuilder() 
    .inputs(<gregtech:meta_dust:16005>)
    .outputs(<thaumcraft:crystal_ordo>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

// forge hammer
forge_hammer.recipeBuilder()
    .inputs(<thaumcraft:crystal_aer>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}))
    .duration(10)
    .EUt(16)
    .buildAndRegister();


forge_hammer.recipeBuilder()
    .inputs(<thaumcraft:crystal_ignis>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}))
    .duration(10)
    .EUt(16)
    .buildAndRegister();


forge_hammer.recipeBuilder()
    .inputs(<thaumcraft:crystal_aqua>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}))
    .duration(10)
    .EUt(16)
    .buildAndRegister();


forge_hammer.recipeBuilder()
    .inputs(<thaumcraft:crystal_terra>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}))
    .duration(10)
    .EUt(16)
    .buildAndRegister();


forge_hammer.recipeBuilder()
    .inputs(<thaumcraft:crystal_ordo>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}))
    .duration(10)
    .EUt(16)
    .buildAndRegister();


forge_hammer.recipeBuilder()
    .inputs(<thaumcraft:crystal_perditio>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}))
    .duration(10)
    .EUt(16)
    .buildAndRegister();
