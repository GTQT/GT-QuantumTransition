import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder() 
    .inputs(<ore:frameGtEnrichedNaquadriaAlloy>*2,<ore:plateEnrichedNaquadriaAlloy>*6)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<contenttweaker:naq_housing>*2)
    .duration(120)
    .EUt(491520)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:frameGtInitialAlloy>*2,<ore:plateInitialAlloy>*6)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<contenttweaker:mass_generator>*2)
    .duration(120)
    .EUt(491520)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:78>,<minecraft:redstone>)
    .outputs(<gregtech:meta_item_1:61>)
	.circuit(3) 
    .duration(200)
    .EUt(7)
    .buildAndRegister();
	
// 空喷涂罐 * 1
<recipemap:assembler>.findRecipe(7, [<minecraft:redstone:0>, <metaitem:fluid_cell>], null).remove();

assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate_double:2013>*4,<gregtech:meta_screw:2036>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 576)
    .outputs(<compactmachines3:wallbreakable>)
    .duration(1200)
    .EUt(64)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<compactmachines3:wallbreakable>*6,<gregtech:meta_item_1:205>*2,<appliedenergistics2:quantum_ring>)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 576)
    .outputs(<compactmachines3:machine>)
    .duration(1200)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<compactmachines3:wallbreakable>*12,<gregtech:meta_item_1:206>*4,<appliedenergistics2:quantum_ring>)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 576)
    .outputs(<compactmachines3:machine:1>)
    .duration(1200)
    .EUt(256)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<compactmachines3:wallbreakable>*18,<gregtech:meta_item_1:207>*6,<appliedenergistics2:quantum_ring>*2)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 576)
    .outputs(<compactmachines3:machine:2>)
    .duration(1200)
    .EUt(480)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<compactmachines3:wallbreakable>*24,<gregtech:meta_item_1:208>*8,<appliedenergistics2:quantum_ring>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 576)
    .outputs(<compactmachines3:machine:3>)
    .duration(1200)
    .EUt(960)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<compactmachines3:wallbreakable>*36,<gregtech:meta_item_1:209>*10,<appliedenergistics2:quantum_ring>*8)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 576)
    .outputs(<compactmachines3:machine:4>)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<compactmachines3:wallbreakable>*48,<gregtech:meta_item_1:210>*12,<appliedenergistics2:quantum_ring>*12)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 576)
    .outputs(<compactmachines3:machine:5>)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:591> * 4,<gregtech:meta_item_1:592> *8,<gregtech:meta_item_1:600>*16,<ore:circuitHv> * 4,<gregtech:meta_wire_fine:55>*16,<gregtech:meta_plate:1007> * 4)
    .fluidInputs(<liquid:glue> * 500)
    .outputs(<gregtech:meta_item_1:261> *2)
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_ring:3533>*64,<gregtech:meta_stick_long:423>*2,<gregtech:meta_item_1:102>*4)
    .fluidInputs(<liquid:polystyrene_sulfonate>*576)
    .outputs(<gcys:meta_item_1:500>)
    .duration(120)
	.circuit(10)
    .EUt(125760)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:21000>*6,<gregtech:meta_block_frame_1312:8>*2,<gregtech:meta_spring:331>*2)
	.fluidInputs(<liquid:polytetrafluoroethylene>*576)
    .outputs(<gtqtcore:multiblock_casing>)
    .duration(100)
    .EUt(7860)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_2010:4>*4,<ore:frameGtDraconium>*2,<gregtech:meta_stick_long:32192>*4,<gregtech:meta_plate:32192>*2,<ore:circuitUhv>*2)
	.fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*1440)
    .outputs(<contenttweaker:extreme_casing>)
    .duration(1000)
    .EUt(503040)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_2010:4>,<gregtech:meta_plate_dense:32193>*4,<gregtech:meta_item_1:210>*2,<gcys:meta_item_1:221>*12,<gregtech:meta_stick_long:32163>*12,<gregtech:meta_foil:15077>*32)
	.fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*1440)
    .outputs(<contenttweaker:trap_core>)
    .duration(1000)
    .EUt(503040)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_2010:4>,<gregtech:meta_plate:32192>*4,<gregtech:fusion_casing:4>,<gregtech:meta_item_1:209>*4)
	.fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*1440)
    .outputs(<contenttweaker:aipc_casing>)
    .duration(1000)
    .EUt(503040)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:machine:993> * 2,<contenttweaker:nanites> * 4,<gregtech:meta_plate_dense:32164> * 6,<gregtech:meta_item_1:210> * 2,<gregtech:meta_item_1:150> * 2,<gcys:meta_item_1:368> * 16,<gregtech:meta_item_1:497> * 16)
	.fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*1440)
    .outputs(<contenttweaker:coper>*2)
    .duration(1000)
    .EUt(503040)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:fusion_casing:1> * 2,<contenttweaker:nanites> * 4,<gcys:meta_item_1:368> * 16,<gregtech:meta_item_1:210>*4,<gregtech:meta_item_1:150>*4)
	.fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*1440)
    .outputs(<contenttweaker:aipc_core>)
    .duration(1000)
    .EUt(503040)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:transparent_casing:2>,<gregtech:meta_foil:344>*2,<gcys:meta_item_1:201>)
	.fluidInputs(<liquid:polytetrafluoroethylene>*576)
    .outputs(<gregtech:laser_pipe_normal>)
    .duration(400)
    .EUt(7860*4)
    .buildAndRegister();

	
assembler.recipeBuilder() 
    .notConsumable(<appliedenergistics2:material:13> * 1)
    .inputs(<gregtech:meta_plate:214>*8,<gregtech:meta_gear_small:99>*8,<gregtech:meta_plate:2064>*8,<ore:circuitHv>,<gregtech:meta_item_1:603>)
	.outputs(<appliedenergistics2:material:23>*16)
    .duration(100)
    .EUt(1960)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .notConsumable(<appliedenergistics2:material:14> * 1)
    .inputs(<gregtech:meta_plate:276>*8,<gregtech:meta_gear_small:99>*8,<gregtech:meta_plate:2064>*8,<ore:circuitHv>,<gregtech:meta_item_1:603>)
	.outputs(<appliedenergistics2:material:24>*16)
    .duration(100)
    .EUt(1960)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .notConsumable(<appliedenergistics2:material:15> * 1)
    .inputs(<gregtech:meta_plate:41>*8,<gregtech:meta_gear_small:99>*8,<gregtech:meta_plate:2064>*8,<ore:circuitHv>,<gregtech:meta_item_1:603>)
	.outputs(<appliedenergistics2:material:22>*16)
    .duration(100)
    .EUt(1960)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_194:1>,<gregtech:meta_wire_fine:3592>*64,<gregtech:meta_stick_long:3592>*16,<contenttweaker:nanites>)
	.outputs(<contenttweaker:protonated_fullerene_sieving_matrix>)
    .duration(10000)
    .EUt(196000)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_rotor:324>*2,<gregtech:meta_screw:324>*4,<gregtech:meta_stick_long:323>)
	.fluidInputs(<liquid:jingbatancuihuaji>*2880)
	.outputs(<galacticraftcore:air_fan>)
    .duration(100)
    .EUt(1960)
    .buildAndRegister();
	