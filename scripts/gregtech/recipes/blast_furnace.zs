import mods.gregtech.recipe.RecipeMap;
val electric_blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("electric_blast_furnace");
electric_blast_furnace.findRecipe(120, [<metaitem:dustSilicon>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// 红锌矿粉 * 1
electric_blast_furnace.findRecipe(120, [<metaitem:dustSphalerite>], [<liquid:oxygen> * 3000]).remove();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:424>)
    .outputs(<gregtech:meta_ingot:424>) 
    .property("temperature", 2700)
    .duration(1200)
    .EUt(480)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder() 
    .inputs(<contenttweaker:silicon_item> * 1)
    .outputs(<contenttweaker:hotsilicon_item> * 1) 
	.circuit(1) 
    .property("temperature", 2700)
    .duration(1200)
    .EUt(128)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<contenttweaker:silicon_item> * 1)
    .fluidInputs(<liquid:nitrogen> * 1000) 
    .outputs(<contenttweaker:hotsilicon_item> * 1) 
	.circuit(2) 
    .property("temperature", 2700)
    .duration(900)
    .EUt(128)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<contenttweaker:silicon_item> * 32,<gregtech:meta_dust_small:351> * 1)
    .fluidInputs(<liquid:nitrogen> * 1000) 
    .outputs(<gregtech:meta_item_1:361> * 1) 
    .property("temperature", 1800)
	.circuit(1)
    .duration(4500)
    .EUt(128)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<galacticraftcore:meteoric_iron_raw> * 1)
    .fluidInputs(<liquid:nitrogen> * 1000) 
    .outputs(<galacticraftcore:item_basic_moon> * 1) 
    .property("temperature", 3600)
    .duration(6000)
    .EUt(480)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<galacticraftplanets:mars:2> * 1)
    .fluidInputs(<liquid:nitrogen> * 1000) 
    .outputs(<galacticraftplanets:item_basic_mars:2> * 1) 
    .property("temperature", 5400)
    .duration(6000)
    .EUt(1920)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<galacticraftplanets:item_basic_mars> * 1)
    .fluidInputs(<liquid:nitrogen> * 1000) 
    .outputs(<galacticraftplanets:item_basic_mars:2> * 1) 
    .property("temperature", 5400)
    .duration(6000)
    .EUt(1920)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:18017> * 1,<gregtech:meta_dust:353> * 2)
    .fluidInputs(<liquid:oxygen> * 1000) 
    .outputs(<gregtech:meta_dust:3545> * 1,<gregtech:meta_dust:3547> * 2) 
    .property("temperature", 5400)
    .duration(6000)
    .EUt(1920)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:2>,<gregtech:meta_dust:32035>*3,<gregtech:meta_dust:18>*1)
    .fluidInputs(<liquid:nitrogen> * 2000) 
    .outputs(<gregtech:meta_ingot:2>,<gregtech:meta_dust:32035>) 
    .property("temperature", 1700)
    .duration(1800)
    .EUt(120)
    .buildAndRegister();
	
// 铝锭 * 1
<recipemap:electric_blast_furnace>.findRecipe(120, [<metaitem:dustAluminium>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// 铝锭 * 1
<recipemap:electric_blast_furnace>.findRecipe(120, [<metaitem:dustAluminium>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:nitrogen> * 1000]).remove();

electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:2> * 1)
    .fluidInputs(<liquid:nitrogen> * 1000) 
    .outputs(<gregtech:meta_ingot:2> * 1) 
    .property("temperature", 2600)
    .duration(1200)
	.circuit(2)
    .EUt(480)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:2> * 1)
    .outputs(<gregtech:meta_ingot:2> * 1) 
    .property("temperature", 2600)
    .duration(1600)
	.circuit(1)
    .EUt(480)
    .buildAndRegister();

// 不锈钢锭 * 1
<recipemap:electric_blast_furnace>.findRecipe(480, [<metaitem:dustStainlessSteel>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// 不锈钢锭 * 1
<recipemap:electric_blast_furnace>.findRecipe(480, [<metaitem:dustStainlessSteel>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:nitrogen> * 1000]).remove();
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:323> * 1)
    .outputs(<gregtech:meta_ingot:323> * 1) 
    .property("temperature", 2700)
    .duration(1600)
	.circuit(1)
    .EUt(480)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:323> * 1)
    .fluidInputs(<liquid:nitrogen> * 1000) 
    .outputs(<gregtech:meta_ingot:323> * 1) 
    .property("temperature", 2700)
    .duration(1200)
	.circuit(2)
    .EUt(480)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .fluidInputs(<liquid:zrso4>*1000)
    .outputs(<contenttweaker:zroo_item>) 
	.fluidOutputs(<liquid:sulfur_dioxide>*1000) 
    .property("temperature", 3700)
    .duration(900)
    .EUt(1920)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder() 
    .inputs(<contenttweaker:zrcl_item>,<gregtech:meta_dust:59>*2)
    .outputs(<contenttweaker:hzroo_item>,<gregtech:meta_dust:357>*6) 
    .property("temperature", 3700)
    .duration(900)
    .EUt(1920)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<contenttweaker:hzroo_item>,<gregtech:meta_dust:59>*2)
    .outputs(<gregtech:meta_dust:123>,<gregtech:meta_dust:357>*6) 
    .property("temperature", 3700)
    .duration(900)
    .EUt(1920)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<contenttweaker:hfcl_item>,<gregtech:meta_dust:59>*2)
    .outputs(<gregtech:meta_dust:32047>,<gregtech:meta_dust:357>*6) 
    .property("temperature", 3700)
    .duration(900)
    .EUt(1920)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:322> * 1)
    .fluidInputs(<liquid:oxygen> * 3000) 
    .outputs(<gregtech:meta_dust:370> * 1)
    .fluidOutputs(<liquid:nitrogen>* 1000) 	
    .property("temperature", 1200)
    .duration(1200)
	.circuit(1) 
    .EUt(120)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:322> * 2)
    .fluidInputs(<liquid:oxygen> * 5000) 
    .outputs(<gregtech:meta_dust:3573> * 1,<gregtech:meta_dust:6017> * 1)
    .fluidOutputs(<liquid:nitrogen>* 1000) 	
    .property("temperature", 4500)
    .duration(1200)
	.circuit(2) 
    .EUt(7600)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<appliedenergistics2:material:12> * 2,<gregtech:meta_ingot:324> * 1,<threng:material:1>*2)
    .fluidInputs(<liquid:oxygen> * 5000) 
    .outputs(<threng:material> * 1)
    .fluidOutputs(<liquid:nitrogen>* 1000) 	
    .property("temperature", 3700)
    .duration(1200)
    .EUt(7600)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_block_compressed_6:3>*16)
    .fluidInputs(<liquid:oxygen> * 4000) 
    .outputs(<gregtech:meta_item_1:361>)
    .property("temperature", 2100)
    .duration(1200)
    .EUt(128)
	.circuit(1)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:99>*16)
    .outputs(<contenttweaker:silicon_item>*16)
    .property("temperature", 3100)
    .duration(4500)
    .EUt(1920)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<galacticraftcore:fallen_meteor>)
    .outputs(<galacticraftcore:item_basic_moon>*16)
    .property("temperature", 3100)
    .duration(1200)
    .EUt(480)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<contenttweaker:buxiugangi_item>)
    .fluidInputs(<liquid:argon>*1000)
    .outputs(<contenttweaker:rebuxiu_item>)
    .property("temperature", 3100)
    .duration(450)
    .EUt(960)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:3008>)
    .fluidInputs(<liquid:argon>*1000)
    .outputs(<gregtech:meta_ingot_hot:3008>)
    .property("temperature", 2100)
    .duration(900)
    .EUt(480)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_block_compressed_6:3>*16,<minecraft:glowstone_dust>*4)
    .fluidInputs(<liquid:nitrogen>*2000)
    .outputs(<gregtech:meta_item_1:362>)
    .property("temperature", 2100)
    .duration(900)
    .EUt(480)
    .buildAndRegister();
	
val vacuum_freezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
vacuum_freezer.recipeBuilder() 
    .inputs(<gregtech:meta_ingot_hot:3008>)
    .outputs(<gregtech:meta_ingot:3008>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
	.fluidInputs(<liquid:nitrogen>*2000)
	.inputs(<contenttweaker:buxiugangi_item>)
	.outputs(<contenttweaker:rebuxiu_item>)
	.EUt(480)
    .duration(1600) 
	.property("temperature", 4500)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
	.fluidInputs(<liquid:nitrogen>*2000)
	.inputs(<gregtech:meta_dust:6020>)
	.outputs(<gregtech:meta_dust:3575>)
    .property("temperature", 4500)
	.EUt(2048)
    .duration(1200) 
    .buildAndRegister();
	