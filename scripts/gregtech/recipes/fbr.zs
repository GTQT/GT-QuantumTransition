import mods.gregtech.recipe.RecipeMap;
// 钢块 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<minecraft:iron_block:0>, <minecraft:coal_block:0> * 2], null).remove();
// 钢块 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<minecraft:iron_block:0>, <metaitem:blockCharcoal> * 2], null).remove();
// 钢块 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<minecraft:iron_block:0>, <metaitem:blockCoke>], null).remove();
// 钢块 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<metaitem:blockWroughtIron>, <metaitem:blockCoke>], null).remove();
// 钢块 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<metaitem:blockWroughtIron>, <minecraft:coal_block:0> * 2], null).remove();
// 钢块 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<metaitem:blockWroughtIron>, <metaitem:blockCharcoal> * 2], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<metaitem:ingotWroughtIron>, <metaitem:gemCoke>], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<metaitem:ingotWroughtIron>, <metaitem:dustCoke>], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<metaitem:ingotWroughtIron>, <metaitem:dustCoal> * 2], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<metaitem:ingotWroughtIron>, <metaitem:dustCharcoal> * 2], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<metaitem:ingotWroughtIron>, <minecraft:coal:0> * 2], null).remove();
// 钢锭 * 1
<recipemap:primitive_blast_furnace>.findRecipe(1, [<metaitem:ingotWroughtIron>, <minecraft:coal:1> * 2], null).remove();
val primitive_blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("primitive_blast_furnace");
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_ingot:335>,<gregtech:meta_gem:319>)  
    .outputs(<gregtech:meta_ingot:324>,<gregtech:meta_dust_tiny:254>) 
    .duration(1800) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_ingot:335>,<minecraft:coal:1>*2)  
    .outputs(<gregtech:meta_ingot:324>,<gregtech:meta_dust_tiny:254>) 
    .duration(2400) 
    .buildAndRegister(); 

primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_ingot:335>,<minecraft:coal>*2)  
    .outputs(<gregtech:meta_ingot:324>,<gregtech:meta_dust_tiny:254>) 
    .duration(2400) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_block_compressed_20:15>,<gregtech:meta_block_compressed_19:15>)  
    .outputs(<gregtech:meta_block_compressed_20:4>,<gregtech:meta_dust_tiny:254>*9) 
    .duration(16200) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_block_compressed_20:15>,<ore:blockCoal>*2)  
    .outputs(<gregtech:meta_block_compressed_20:4>,<gregtech:meta_dust_tiny:254>*9) 
    .duration(21600) 
    .buildAndRegister(); 

primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_block_compressed_20:15>,<ore:blockCharcoal>*2)  
    .outputs(<gregtech:meta_block_compressed_20:4>,<gregtech:meta_dust_tiny:254>*9) 
    .duration(21600) 
    .buildAndRegister(); 	
	
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:ore_iron_0>,<gregtech:meta_gem:319>)  
    .outputs(<minecraft:iron_ingot>*2,<gregtech:meta_dust_tiny:254>) 
    .duration(1200) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:ore_banded_iron_0>,<gregtech:meta_gem:319>)  
    .outputs(<minecraft:iron_ingot>*2,<gregtech:meta_dust_tiny:254>) 
    .duration(1200) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:ore_brown_limonite_0>,<gregtech:meta_gem:319>)  
    .outputs(<minecraft:iron_ingot>*2,<gregtech:meta_dust_tiny:254>) 
    .duration(1200) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:ore_pyrite_0>,<gregtech:meta_gem:319>)  
    .outputs(<minecraft:iron_ingot>*2,<gregtech:meta_dust_tiny:254>) 
    .duration(1200) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:ore_magnetite_0>,<gregtech:meta_gem:319>)  
    .outputs(<minecraft:iron_ingot>*2,<gregtech:meta_dust_tiny:254>) 
    .duration(1200) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:ore_yellow_limonite_0>,<gregtech:meta_gem:319>)  
    .outputs(<minecraft:iron_ingot>*2,<gregtech:meta_dust_tiny:254>) 
    .duration(1200) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:ore_copper_0>,<gregtech:meta_gem:319>)  
    .outputs(<gregtech:meta_ingot:25>*2,<gregtech:meta_dust_tiny:254>) 
    .duration(1200) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:ore_chalcopyrite_0>,<gregtech:meta_gem:319>)  
    .outputs(<gregtech:meta_ingot:25>*2,<gregtech:meta_dust_tiny:254>) 
    .duration(1200) 
    .buildAndRegister(); 
	
primitive_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:ore_tetrahedrite_0>,<gregtech:meta_gem:319>)  
    .outputs(<gregtech:meta_ingot:25>*2,<gregtech:meta_dust_tiny:4>*2) 
    .duration(1200) 
    .buildAndRegister(); 