import mods.gregtech.recipe.RecipeMap;
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:994> * 4, <ore:circuitUv> * 4,<ore:circuitZpm> * 4,<gregtech:meta_item_1:239> * 4, <gregtech:meta_item_1:209>* 8, <metaitem:plate.ultra_high_power_integrated_circuit> * 64,<metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 32)
    .fluidInputs(<liquid:soldering_alloy> * 576, <liquid:lubricant> * 1000, <liquid:naquadria> * 576)
	.outputs(<gregtech:machine:10101>* 1)
    .duration(600)
    .EUt(72000)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:994> * 4,<gregtech:meta_block_frame_127:10>*16,<ore:circuitUv> * 4, <metaitem:quantumstar>*8, <metaitem:plateDoubleAmericium> * 4, <gregtech:meta_item_1:209>* 8, <metaitem:plate.ultra_high_power_integrated_circuit> * 64,<metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 32)
    .fluidInputs(<liquid:soldering_alloy> * 576, <liquid:lubricant> * 1000, <liquid:naquadria> * 576)
	.outputs(<gregtech:machine:32036> * 1)
    .duration(600)
    .EUt(72000)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:994> * 4,<contenttweaker:nanites>*32, <ore:circuitUv> * 4,<ore:circuitZpm> * 4,<gregtech:meta_item_1:239> * 4, <metaitem:quantumstar> * 16, <metaitem:plateDoubleAmericium> * 4,<metaitem:plate.ultra_high_power_integrated_circuit> * 64,<metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 32)
    .fluidInputs(<liquid:soldering_alloy> * 576, <liquid:lubricant> * 1000, <liquid:naquadria> * 576)
	.outputs(<gregtech:machine:32050>* 1)
    .duration(600)
    .EUt(72000)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:994> * 4,<contenttweaker:nanites>*32, <ore:circuitUv> * 4,<ore:circuitZpm> * 4,<gregtech:meta_item_1:239> * 4, <gregtech:meta_item_1:209>* 8, <metaitem:quantumstar> * 32, <metaitem:plateDoubleAmericium>*16,<metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 32)
    .fluidInputs(<liquid:soldering_alloy> * 576, <liquid:lubricant> * 1000, <liquid:naquadria> * 576)
	.outputs(<gregtech:machine:32049>* 1)
    .duration(600)
    .EUt(72000)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcys:meta_item_1:2> * 12,<gregtech:machine:2001> * 4,<gregtech:meta_spring:33> * 32,<gregtech:meta_item_1:104> * 32,<gregtech:meta_item_1:210> * 8,<gregtech:meta_plate:3104> * 64,<gregtech:cable_hex:3621> * 64,<gcys:meta_item_1:368> * 64)
    .fluidInputs(<liquid:soldering_alloy> * 576, <liquid:lubricant> * 1000, <liquid:naquadria> * 576)
	.outputs(<gregtech:machine:2025>* 1)
    .duration(600)
    .EUt(72000)
    .buildAndRegister();	
	
assembly_line.recipeBuilder() 
    .inputs(<ore:circuitUv> * 4,<gregtech:cable_single:334> * 64,<gregtech:meta_foil:130> * 64,<gregtech:machine:992> * 8,<gregtech:meta_item_1:238> * 4,<gregtech:meta_item_1:223> * 4,<advanced_solar_panels:crafting:12> * 2)
    .fluidInputs(<liquid:naquadria>*576,<liquid:plasma.adamantium>*144, <liquid:polytetrafluoroethylene> * 5760)
	.outputs(<gregtech:machine:32027>)
    .duration(600)
    .EUt(8192)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_20:3> * 48,<gregtech:meta_item_1:251> * 4,<gregtech:meta_item_1:146> * 4,<gregtech:meta_item_1:101> * 4,<ore:circuitEv>,<gregtech:meta_rotor:113> * 16,<gregtech:wire_quadruple:428> * 32,<gregtech:fluid_pipe_quadruple:113> * 16,<gregtech:boiler_casing:2> * 16)
    .fluidInputs(<liquid:zblan_glass> * 1440,<liquid:polytetrafluoroethylene> * 576)
	.outputs(<gregtech:machine:32004>)
    .duration(600)
    .EUt(2048)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_plate:3006>*16,<gregtech:meta_rotor:2042>* 16,<gregtech:fluid_pipe_normal:296> * 16,<ore:circuitLuv>*4,<gregtech:meta_item_1:177>*16,<gregtech:meta_item_1:147>*16,<gregtech:meta_item_1:102>*32)
    .fluidInputs(<liquid:soldering_alloy> *1440,<liquid:zblan_glass> * 1440, <liquid:polytetrafluoroethylene> * 5760)
	.outputs(<gregtech:machine:32005>)
    .duration(600)
    .EUt(8192)
    .buildAndRegister();

//太阳能
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:604>*4,<gregtech:meta_item_1:372>*2,<gregtech:transparent_casing:1>*16,<ore:circuitEv>*8,<ore:wireGtHexGraphene>*64,<ore:plateIndiumGalliumPhosphide>*32)
    .fluidInputs(<liquid:zblan_glass> * 1440, <liquid:polytetrafluoroethylene> * 5760)
	.outputs(<gregtech:meta_item_1:333>)
    .duration(1024)
    .EUt(2048)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:605>*8,<gregtech:meta_item_1:372>*4,<gregtech:transparent_casing:1>*16,<ore:circuitIv>*8,<ore:wireGtHexSamariumIronArsenicOxide>*64,<ore:plateIndiumGalliumPhosphide>*64)
    .fluidInputs(<liquid:zblan_glass> * 5760, <liquid:polybenzimidazole> * 5760)
	.outputs(<gregtech:meta_item_1:334>)
    .duration(1024)
    .EUt(8192)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:605>*16,<gregtech:meta_item_1:372>*8,<gregtech:transparent_casing:1>*16,<ore:circuitLuv>*8,<ore:wireGtHexIndiumTinBariumTitaniumCuprate>*64,<ore:plateIndiumGalliumPhosphide>*64)
    .fluidInputs( <liquid:polybenzimidazole> * 5760,<liquid:naquadria>*5760)
	.outputs(<gregtech:meta_item_1:335>)
    .duration(1024)
    .EUt(35768)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:605>*32,<gregtech:meta_item_1:373>*8,<gregtech:transparent_casing:1>*16,<ore:circuitZpm>*8,<ore:wireGtHexUraniumRhodiumDinaquadide>*64,<ore:plateIndiumTinBariumTitaniumCuprate>*64)
    .fluidInputs(<liquid:naquadria>*5760,<liquid:trinium>*1440)
	.outputs(<gregtech:meta_item_1:336>)
    .duration(1024)
    .EUt(143072)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:606>*32,<gregtech:meta_item_1:373>*16,<gregtech:transparent_casing:1>*16,<ore:circuitUv>*8,<ore:wireGtHexEnrichedNaquadahTriniumEuropiumDuranide>*64,<ore:plateIndiumTinBariumTitaniumCuprate>*64)
    .fluidInputs(<liquid:trinium>*14400,<liquid:kevlar>*5760)
	.outputs(<gregtech:meta_item_1:337>)
    .duration(1024)
    .EUt(572288)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcys:meta_item_1:368>*64,<gregtech:meta_item_1:373>*32,<gregtech:transparent_casing:1>*16,<ore:circuitUhv>*8,<ore:wireGtHexPedotPss>*64,<ore:plateUraniumRhodiumDinaquadide>*64)
    .fluidInputs(<liquid:neutronium>*1440,<liquid:kevlar>*14400)
	.outputs(<gregtech:meta_item_1:338>)
    .duration(2048)
    .EUt(2289152)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcys:meta_item_1:369>*64,<gregtech:meta_item_1:374>*32,<gregtech:transparent_casing:1>*16,<ore:circuitUev>*8,<ore:wireGtHexPedotTma>*64,<ore:plateEnrichedNaquadahTriniumEuropiumDuranide>*64)
    .fluidInputs(<liquid:molten.ruthenium_trinium_americium_neutronate>*1440,<liquid:infinity_metal>*1440)
	.outputs(<gregtech:meta_item_1:339>)
    .duration(4096)
    .EUt(9156608)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcys:meta_item_1:370>*64,<gregtech:meta_item_1:374>*64,<gregtech:transparent_casing:1>*16,<ore:circuitUiv>*8,<ore:wireGtHexXbDraconiumAwakened>*64,<ore:plateEnrichedNaquadahTriniumEuropiumDuranide>*64)
    .fluidInputs(<liquid:infinity_metal>*5760)
	.outputs(<gregtech:meta_item_1:340>)
    .duration(8192)
    .EUt(36626432)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<ore:circuitUv> *8,<gregtech:meta_item_1:149> * 2,<gregtech:machine:3908> * 2,<gregtech:meta_block_frame_187:12> * 6,<gregtech:meta_plate:3021> * 8,<gregtech:meta_wire_fine:3605> * 64,<gregtech:meta_item_1:177>*16,<gregtech:meta_item_1:147>*16,<gregtech:meta_item_1:102>*32)
    .fluidInputs(<liquid:naquadria>*1440)
	.outputs(<gregtech:machine:32039>)
    .duration(8192)
    .EUt(36626432)
    .buildAndRegister();
	