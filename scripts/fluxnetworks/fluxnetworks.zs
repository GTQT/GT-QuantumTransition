import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val implosion_compressor = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");
implosion_compressor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:18028> * 2,<minecraft:redstone>) 
    .outputs(<fluxnetworks:flux> * 1) 
    .property("explosives", 15)
    .duration(5)
    .EUt(8192)
    .buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<fluxnetworks:flux>, <gregtech:meta_item_1:283>,<gregtech:meta_item_1:209>])
	.outputs(<fluxnetworks:fluxcore>)
	.duration(300).EUt(120).buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<ore:circuitUv>, <fluxnetworks:fluxcore>,<gregtech:meta_item_1:239>])
	.outputs(<fluxnetworks:fluxpoint>)
	.duration(300).EUt(120).buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<ore:circuitUv>, <fluxnetworks:fluxcore>,<gregtech:meta_item_1:224>])
	.outputs(<fluxnetworks:fluxplug>)
	.duration(300).EUt(120).buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<gregtech:machine:993>*2,<fluxnetworks:fluxcore>*2,<gregtech:meta_item_1:209>,<ore:circuitUv>*2])
	.outputs(<fluxnetworks:fluxcontroller>)
	.duration(300).EUt(120).buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1336>*2,<fluxnetworks:fluxcore>*2,<gregtech:meta_item_1:745>*6,<ore:circuitZpm>*2,<gregtech:meta_foil:1010>*16])
	.fluidInputs(<liquid:orichalcum> * 144)
	.outputs(<fluxnetworks:fluxstorage>)
	.duration(300).EUt(120).buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1337>*2,<fluxnetworks:fluxcore>*2,<gregtech:meta_item_1:746>*6,<ore:circuitUv>*2,<gregtech:meta_foil:1010>*32])
	.fluidInputs(<liquid:orichalcum> * 144)
	.outputs(<fluxnetworks:herculeanfluxstorage>)
	.duration(300).EUt(120).buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1338>*2,<fluxnetworks:fluxcore>*2,<gregtech:meta_item_1:747>*6,<ore:circuitUhv>*2,<gregtech:meta_foil:1010>*64])	
    .fluidInputs(<liquid:orichalcum> * 144)
	.outputs(<fluxnetworks:gargantuanfluxstorage>)	
	.duration(300).EUt(120).buildAndRegister();