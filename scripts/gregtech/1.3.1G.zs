import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:994> * 64,<ore:circuitUhv>*32,<gregtech:fusion_casing:1> * 64,<gregtech:meta_item_1:239>*64,<gcys:meta_item_1:350> * 64,<gregtech:meta_item_1:209> * 64,<gregtech:meta_plate:3105> * 64,<gregtech:wire_single:15077> * 64)
    .fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*14400,<liquid:kevlar>*5760,<liquid:uranium_rhodium_dinaquadide>*14400,<liquid:draconium>*1440)
	.outputs(<gtqtcore:multiblock_casing:9>)
    .duration(6000)
    .EUt(125440)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:995> * 64,<ore:circuitUev>*32,<gregtech:fusion_casing:1> * 64,<gregtech:meta_item_1:240>*64,<gcys:meta_item_1:351> * 64,<gregtech:meta_item_1:209> * 64,<gregtech:meta_plate:3105> * 64,<gregtech:wire_single:32295> * 64)
    .fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*14400,<liquid:kevlar>*5760,<liquid:uranium_rhodium_dinaquadide>*14400,<liquid:draconium>*1440)
	.outputs(<gtqtcore:multiblock_casing:10>)
    .duration(6000)
    .EUt(125440)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:996> * 64,<ore:circuitUiv>*32,<gregtech:fusion_casing:1> * 64,<gregtech:meta_item_1:241>*64,<gcys:meta_item_1:352> * 64,<gregtech:meta_item_1:209> * 64,<gregtech:meta_plate:3105> * 64,<gregtech:wire_single:32296> * 64)
    .fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*14400,<liquid:kevlar>*5760,<liquid:uranium_rhodium_dinaquadide>*14400,<liquid:draconium>*1440)
	.outputs(<gtqtcore:multiblock_casing:11>)
    .duration(6000)
    .EUt(125440)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<gregtech:transparent_casing:1>*16,<ore:circuitUhv>*16,<gregtech:meta_item_1:224>*16,<gregtech:meta_item_1:497>*16,<gregtech:meta_plate:3103>*64)
    .fluidInputs(<liquid:kevlar>* 5760,<liquid:ruthenium_trinium_americium_neutronate>*14400,<liquid:uranium_rhodium_dinaquadide>*14400,<liquid:draconium>*1440)
    .outputs(<gtqtcore:adv_glass:7>)
    .duration(120)
    .EUt(491520)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<gregtech:transparent_casing:1>*32,<ore:circuitUev>*16,<gregtech:meta_item_1:225>*32,<gregtech:meta_item_1:497>*32,<gregtech:meta_plate:3104>*64)
    .fluidInputs(<liquid:kevlar>* 5760,<liquid:ruthenium_trinium_americium_neutronate>*14400,<liquid:uranium_rhodium_dinaquadide>*14400,<liquid:draconium>*1440)
    .outputs(<gtqtcore:adv_glass:8>)
    .duration(120)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:transparent_casing:1>*64,<ore:circuitUiv>*16,<gregtech:meta_item_1:226>*64,<gregtech:meta_item_1:497>*64,<gregtech:meta_plate:3105>*64)
    .fluidInputs(<liquid:kevlar>* 5760,<liquid:ruthenium_trinium_americium_neutronate>*14400,<liquid:uranium_rhodium_dinaquadide>*14400,<liquid:draconium>*1440)
    .outputs(<gtqtcore:adv_glass:9>)
    .duration(120)
    .EUt(491520)
    .buildAndRegister();
	