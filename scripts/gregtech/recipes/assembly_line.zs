import mods.gregtech.recipe.RecipeMap;
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:601> * 4,<gregtech:meta_item_1:600>*8 ,<gregtech:meta_item_1:599>*16,<ore:circuitIv> * 4,<gregtech:meta_wire_fine:80>*16,<gregtech:meta_plate:296> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 50000)
	.outputs(<gregtech:meta_item_1:262> * 1)
    .duration(600)
    .EUt(1960)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<extrabees:alveary:4>,<gregtech:meta_item_1:102>,<gregtech:meta_item_1:162> * 3,<gregtech:meta_item_1:192> * 3,<ore:circuitLuv>)
    .fluidInputs(<liquid:glue> * 144000)
	.outputs(<gendustry:industrial_apiary>)
    .duration(600)
    .EUt(7860)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_7:15>*2,<gregtech:meta_item_1:202>*64,<gregtech:meta_item_1:232>*64,<ore:circuitUhv>*2,<galacticraftcore:engine>*8,<galacticraftcore:rocket_fins>*32)
    .fluidInputs(<liquid:kevlar>*14400,<liquid:polybenzimidazole>*144000)
	.outputs(<contenttweaker:miningdronelv>)
    .duration(600)
    .EUt(143072)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<contenttweaker:miningdronelv>*2,<gregtech:meta_block_frame_7:15>*4,<gregtech:meta_item_1:203>*64,<gregtech:meta_item_1:233>*64,<ore:circuitUhv>*8,<galacticraftcore:engine>*16,<galacticraftcore:rocket_fins>*64)
    .fluidInputs(<liquid:kevlar>*28800,<liquid:polybenzimidazole>*28800)
	.outputs(<contenttweaker:miningdronemv>)
    .duration(600)
    .EUt(143072)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<contenttweaker:miningdronemv>*2,<gregtech:meta_block_frame_7:15>*8,<gregtech:meta_item_1:204>*64,<gregtech:meta_item_1:234>*64,<ore:circuitUhv>*32,<galacticraftplanets:item_basic_asteroids:1>*16,<galacticraftplanets:item_basic_asteroids:2>*16)
    .fluidInputs(<liquid:kevlar>*57600,<liquid:polybenzimidazole>*57600)
	.outputs(<contenttweaker:miningdronehv>)
    .duration(600)
    .EUt(143072)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<contenttweaker:miningdronehv>*2,<gregtech:meta_block_frame_7:15>*16,<gregtech:meta_item_1:205>*64,<gregtech:meta_item_1:235>*64,<ore:circuitUhv>*64,<extraplanets:tier4_items>*16,<extraplanets:tier4_items:2>*16)
    .fluidInputs(<liquid:kevlar>*115200,<liquid:polybenzimidazole>*115200)
	.outputs(<contenttweaker:miningdroneev>)
    .duration(600)
    .EUt(143072)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<contenttweaker:miningdroneev>*2,<gregtech:meta_block_frame_7:15>*32,<gregtech:meta_item_1:206>*64,<gregtech:meta_item_1:236>*64,<ore:circuitUhv>*128,<extraplanets:tier5_items>*16,<extraplanets:tier5_items:2>*16)
    .fluidInputs(<liquid:kevlar>*115200,<liquid:polybenzimidazole>*115200)
	.outputs(<contenttweaker:miningdroneiv>)
    .duration(600)
    .EUt(143072)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<contenttweaker:miningdroneiv>*2,<gregtech:meta_block_frame_7:15>*64,<gregtech:meta_item_1:207>*64,<gregtech:meta_item_1:237>*64,<ore:circuitUhv>*256,<extraplanets:tier6_items>*16,<extraplanets:tier6_items:2>*16)
    .fluidInputs(<liquid:kevlar>*115200,<liquid:polybenzimidazole>*115200)
	.outputs(<contenttweaker:miningdroneluv>)
    .duration(600)
    .EUt(143072)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_27>*64,<gregtech:meta_item_1:209>*16,<gregtech:meta_item_1:134>*32,<ore:circuitUhv>*16,<ore:screwRutheniumTriniumAmericiumNeutronate>*64,<gcys:meta_item_1:369>*64,<contenttweaker:power_components>*16,<contenttweaker:base_components>*16)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:glue>*160000,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<gregtech:machine:32042>)
    .duration(600)
    .EUt(1966080)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
     .inputs(<gregtech:meta_block_frame_27>,<ore:plateDenseUltimet>*4,<ore:screwNeutronium>*4,<ore:stickNeutronium>*4)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<contenttweaker:base_components>*4)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
	
assembly_line.recipeBuilder() 
    .inputs(<ore:plateDenseUltimet>*4,<ore:screwNeutronium>*4,<gregtech:meta_item_1:134>*2,<ore:stickLongRutheniumTriniumAmericiumNeutronate>*2,<ore:circuitUv>)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<contenttweaker:power_components>*4)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
	
assembly_line.recipeBuilder() 
    .inputs(<ore:plateDenseUltimet>*4,<ore:screwNeutronium>*4,<gregtech:meta_item_1:179>*2,<ore:ringRutheniumTriniumAmericiumNeutronate>*2,<ore:circuitUv>)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<contenttweaker:speed_components>*4)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<ore:circuitUv>,<gregtech:computer_casing:2>*4,<ore:plateDoubleNeutronium>*2,<ore:boltEnrichedNaquadahTriniumEuropiumDuranide>*2)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<contenttweaker:count_components>*2)
    .duration(1200)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:993>*16,<gregtech:meta_item_1:134>*16,<gregtech:meta_item_1:164>*16,<gregtech:meta_item_1:179>*16,<ore:circuitUhv>*16,<ore:pipeNonupleFluidPolybenzimidazole>*16,<contenttweaker:nanites>*16)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:glue>*160000,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<gregtech:machine:32046>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:993>*16,<gregtech:meta_item_1:709>*16,<gregtech:meta_item_1:179>*16,<ore:circuitUhv>*16,<ore:screwNaquadria>*16,<ore:stickNaquadria>*8)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:glue>*160000,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<contenttweaker:nanites>*2)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<contenttweaker:mass_generator>*16,<gregtech:meta_item_1:209>*32,<gregtech:meta_item_1:149>*16,<ore:circuitUhv>*16,<ore:pipeNonupleFluidPolybenzimidazole>*16)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:glue>*160000,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<gregtech:machine:32047>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<contenttweaker:mass_generator>*8,<gcys:meta_item_1:368>*64,<gregtech:meta_item_1:104>*32,<gregtech:meta_item_1:149>*16,<ore:circuitUhv>*16)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:glue>*160000,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<contenttweaker:mass_core>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcym:large_multiblock_casing:10>*32,<gregtech:fusion_casing:1>*32,<gregtech:fusion_casing:4>*64,<gcys:meta_item_1:140>*16,<gregtech:meta_item_1:149>*16,<ore:circuitUhv>*16,<gcys:meta_item_1:368>*32)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:glue>*160000,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<gregtech:machine:32043>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:190> * 4,<gregtech:meta_item_1:205>*32,<gregtech:meta_item_1:175> * 4,<gregtech:meta_item_1:160> * 4,<gregtech:fluid_pipe_nonuple:2> * 8,<gregtech:meta_block_frame_20:3> * 32,<gregtech:wire_quadruple:427> * 16)
    .fluidInputs(<liquid:glue>*16000,<liquid:polytetrafluoroethylene>*1440)
	.outputs(<gregtech:machine:32041>)
    .duration(600)
    .EUt(7960)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:1023>*2,<gregtech:meta_item_1:145> * 4,<gregtech:meta_item_1:175> * 4,<gregtech:meta_item_1:160> * 4,<gregtech:fluid_pipe_nonuple:2> * 8,<gregtech:meta_block_frame_20:3> * 32,<gregtech:meta_rotor:32017>*8,<gregtech:meta_plate:2014>*32)
    .fluidInputs(<liquid:glue>*160000,<liquid:polytetrafluoroethylene>*14400)
	.outputs(<gregtech:machine:32044>)
    .duration(600)
    .EUt(7960)
    .buildAndRegister();
	
	
assembly_line.recipeBuilder() 
    .inputs(<gcym:large_multiblock_casing:10>*4,<gregtech:meta_item_1:209>*16,<gcys:meta_item_1:140>*16,<gregtech:meta_item_1:149>*16,<ore:circuitUhv>*16,<gcys:meta_item_1:368>*32,<gregtech:meta_wire_fine:431>*64)
    .fluidInputs(<liquid:zeron_100>*57600,<liquid:glue>*160000,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<gregtech:machine:32045>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:2001> * 64,<gregtech:wire_coil:7> * 16,<gregtech:meta_item_1:210> * 4,<gregtech:meta_item_1:195> * 4,<gregtech:meta_item_1:104> * 64,<gregtech:meta_item_1:647> * 32,<gregtech:meta_item_1:606> * 64,<gregtech:meta_item_1:606> * 64,<gregtech:meta_wire_fine:431>*64)
    .fluidInputs(<liquid:zeron_100>*5760,<liquid:glue>*16000,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<gregtech:machine:3006>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:1001> * 64,<gregtech:wire_coil:7> * 16,<gregtech:meta_item_1:210> * 4,<gregtech:meta_item_1:195> * 4,<gregtech:meta_item_1:104> * 64,<gregtech:meta_item_1:647> * 32,<gregtech:meta_item_1:606> * 64,<gregtech:meta_item_1:606> * 64,<gregtech:meta_wire_fine:431>*64)
    .fluidInputs(<liquid:zeron_100>*5760,<liquid:glue>*16000,<liquid:reinforced_epoxy_resin>*14400)
	.outputs(<gregtech:machine:3007>)
    .duration(6000)
    .EUt(491520*16)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:1019>*4,<gregtech:meta_item_1:194> * 8,<gregtech:meta_item_1:164> * 8,<gregtech:meta_item_1:209> * 2,<gregtech:meta_item_1:647> * 4,<gregtech:meta_item_1:606> * 64)
    .fluidInputs(<liquid:hsss> * 57600,<liquid:polybenzimidazole>*14400, <liquid:naquadria> * 57600)
	.outputs(<gregtech:machine:10101>* 1)
    .duration(60000)
    .EUt(72000*64)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:993> * 4,<ore:circuitUhv> * 4,<gregtech:meta_item_1:239> * 8, <gregtech:meta_item_1:209>* 12, <gcys:meta_item_1:368> * 64,<ore:springRutheniumTriniumAmericiumNeutronate>*16,<ore:wireGtDoubleEnrichedNaquadahTriniumEuropiumDuranide>* 32)
    .fluidInputs(<liquid:hsss> * 57600,<liquid:polybenzimidazole>*144000, <liquid:naquadria> * 57600)
	.outputs(<gregtech:machine:15025>* 1)
    .duration(600)
    .EUt(3600)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcym:large_multiblock_casing>*16,<gregtech:meta_plate_double:344>*16,<gregtech:meta_item_1:267>*16,<gregtech:meta_item_1:132>*8,<ore:circuitZpm> * 4,<gcym:unique_casing>* 4,<metaitem:plate.ultra_high_power_integrated_circuit>*16,<gregtech:wire_quadruple:428>*32,<gregtech:meta_wire_fine:429>*64)
    .fluidInputs(<liquid:hsss> * 57600,<liquid:polybenzimidazole>*144000)
	.outputs(<gregtech:machine:32025>* 1)
    .duration(600)
    .EUt(7960)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcym:large_multiblock_casing:4>*16,<gregtech:meta_gear:331>*8,<gregtech:meta_item_1:147>*16,<gregtech:meta_item_1:252>*4,<ore:circuitZpm> * 4,<gregtech:boiler_casing:4>* 4,<metaitem:plate.ultra_high_power_integrated_circuit>*16,<gregtech:wire_quadruple:428>*32,<gregtech:meta_wire_fine:429>*64)
    .fluidInputs(<liquid:hsss> * 57600,<liquid:polybenzimidazole>*144000)
	.outputs(<gregtech:machine:32037>* 1)
    .duration(600)
    .EUt(7960)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<gcym:large_multiblock_casing:1>*16,<gregtech:meta_ring:3623>*8,<gregtech:meta_item_1:103>*16,<gregtech:meta_item_1:192>*4,<ore:circuitZpm> * 4,<gcym:unique_casing:3>* 4,<metaitem:plate.ultra_high_power_integrated_circuit>*16,<gregtech:wire_quadruple:428>*32,<gregtech:meta_wire_fine:429>*64)
    .fluidInputs(<liquid:hsss> * 57600,<liquid:polybenzimidazole>*144000)
	.outputs(<gregtech:machine:32024>* 1)
    .duration(600)
    .EUt(7960)
    .buildAndRegister();	

assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:994> * 4,<gregtech:meta_block_frame_127:10>*16,<ore:circuitUv> * 4, <metaitem:quantumstar>*8, <metaitem:plateDoubleAmericium> * 4, <gregtech:meta_item_1:209>* 8, <metaitem:plate.ultra_high_power_integrated_circuit> * 64,<metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 32)
    .fluidInputs(<liquid:hsss> * 5760,<liquid:polybenzimidazole>*14400, <liquid:naquadria> * 5760)
	.outputs(<gregtech:machine:15000> * 1)
    .duration(600)
    .EUt(72000)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:994> * 4,<contenttweaker:nanites>*32, <ore:circuitUv> * 4,<ore:circuitZpm> * 4,<gregtech:meta_item_1:239> * 4, <metaitem:quantumstar> * 16, <metaitem:plateDoubleAmericium> * 4,<metaitem:plate.ultra_high_power_integrated_circuit> * 64,<metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 32)
    .fluidInputs(<liquid:hsss> * 5760,<liquid:polybenzimidazole>*14400, <liquid:naquadria> * 5760)
	.outputs(<gregtech:machine:32050>* 1)
    .duration(600)
    .EUt(72000)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:994> * 4,<contenttweaker:nanites>*32, <ore:circuitUv> * 4,<ore:circuitZpm> * 4,<gregtech:meta_item_1:239> * 4, <gregtech:meta_item_1:209>* 8, <metaitem:quantumstar> * 32, <metaitem:plateDoubleAmericium>*16,<metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 32)
    .fluidInputs(<liquid:hsss> * 5760,<liquid:polybenzimidazole>*14400, <liquid:naquadria> * 5760)
	.outputs(<gregtech:machine:32049>* 1)
    .duration(600)
    .EUt(72000)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<ore:circuitUhv>* 12,<gregtech:machine:2001> * 4,<gregtech:meta_spring:33> * 32,<gregtech:meta_item_1:104> * 32,<gregtech:meta_item_1:209> * 8,<gregtech:meta_plate:3104> * 64,<gregtech:cable_hex:3621> * 64,<gcys:meta_item_1:368> * 64)
    .fluidInputs(<liquid:hsss> * 5760,<liquid:polybenzimidazole>*14400, <liquid:naquadria> * 5760)
	.outputs(<gregtech:machine:2025>* 1)
    .duration(600)
    .EUt(72000)
    .buildAndRegister();	
	
assembly_line.recipeBuilder() 
    .inputs(<ore:circuitUv> * 4,<gregtech:cable_single:334> * 64,<gregtech:meta_foil:130> * 64,<gregtech:machine:992> * 8,<gregtech:meta_item_1:238> * 4,<gregtech:meta_item_1:223> * 4)
    .fluidInputs(<liquid:naquadria>*576,<liquid:plasma.adamantium>*144, <liquid:polytetrafluoroethylene> * 5760)
	.outputs(<gregtech:machine:32027>)
    .duration(600)
    .EUt(7960)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_20:3> * 48,<gregtech:meta_item_1:251> * 4,<gregtech:meta_item_1:146> * 4,<gregtech:meta_item_1:101> * 4,<ore:circuitEv>,<gregtech:meta_rotor:113> * 16,<gregtech:wire_quadruple:428> * 32,<gregtech:fluid_pipe_quadruple:113> * 16,<gregtech:boiler_casing:2> * 16)
    .fluidInputs(<liquid:zblan_glass> * 14400,<liquid:polytetrafluoroethylene> * 5760)
	.outputs(<gregtech:machine:32004>)
    .duration(600)
    .EUt(1960)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_plate:3006>*16,<gregtech:meta_rotor:2042>* 16,<gregtech:fluid_pipe_normal:296> * 16,<ore:circuitLuv>*4,<gregtech:meta_item_1:177>*16,<gregtech:meta_item_1:147>*16,<gregtech:meta_item_1:102>*32)
    .fluidInputs(<liquid:hsss> * 14400,<liquid:zblan_glass> * 14400, <liquid:polytetrafluoroethylene> * 5760)
	.outputs(<gregtech:machine:32005>)
    .duration(600)
    .EUt(7960)
    .buildAndRegister();

//太阳能
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:604>*4,<gregtech:meta_item_1:372>*2,<gregtech:transparent_casing:1>*16,<ore:circuitEv>*8,<ore:wireGtHexGraphene>*64,<ore:plateIndiumGalliumPhosphide>*32)
    .fluidInputs(<liquid:zblan_glass> * 14400, <liquid:polytetrafluoroethylene> * 5760)
	.outputs(<gregtech:meta_item_1:333>)
    .duration(1024)
    .EUt(1960)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:605>*8,<gregtech:meta_item_1:372>*4,<gregtech:transparent_casing:1>*16,<ore:circuitIv>*8,<ore:wireGtHexSamariumIronArsenicOxide>*64,<ore:plateIndiumGalliumPhosphide>*64)
    .fluidInputs(<liquid:zblan_glass> * 5760, <liquid:polybenzimidazole> * 5760)
	.outputs(<gregtech:meta_item_1:334>)
    .duration(1024)
    .EUt(7960)
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
    .duration(1000)
    .EUt(143072)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:606>*32,<gregtech:meta_item_1:373>*16,<gregtech:transparent_casing:1>*16,<ore:circuitUv>*8,<ore:wireGtHexEnrichedNaquadahTriniumEuropiumDuranide>*64,<ore:plateIndiumTinBariumTitaniumCuprate>*64)
    .fluidInputs(<liquid:trinium>*14400,<liquid:kevlar>*5760)
	.outputs(<gregtech:meta_item_1:337>)
    .duration(1000)
    .EUt(572288)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcys:meta_item_1:368>*64,<gregtech:meta_item_1:373>*32,<gregtech:transparent_casing:1>*16,<ore:circuitUhv>*8,<ore:wireGtHexPedotPss>*64,<ore:plateUraniumRhodiumDinaquadide>*64)
    .fluidInputs(<liquid:neutronium>*1440,<liquid:kevlar>*14400)
	.outputs(<gregtech:meta_item_1:338>)
    .duration(1000)
    .EUt(572288)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcys:meta_item_1:369>*64,<gregtech:meta_item_1:374>*32,<gregtech:transparent_casing:1>*16,<ore:circuitUev>*8,<ore:wireGtHexPedotTma>*64,<ore:plateEnrichedNaquadahTriniumEuropiumDuranide>*64)
    .fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*1440,<liquid:infinity_metal>*1440)
	.outputs(<gregtech:meta_item_1:339>)
    .duration(1000)
    .EUt(572288)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcys:meta_item_1:370>*64,<gregtech:meta_item_1:374>*64,<gregtech:transparent_casing:1>*16,<ore:circuitUiv>*8,<ore:wireGtHexXbDraconiumAwakened>*64,<ore:plateEnrichedNaquadahTriniumEuropiumDuranide>*64)
    .fluidInputs(<liquid:infinity_metal>*5760)
	.outputs(<gregtech:meta_item_1:340>)
    .duration(2000)
    .EUt(572288)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<ore:circuitUv> *64,<gregtech:meta_item_1:149> * 4,<gregtech:machine:3908> * 4,<gregtech:meta_block_frame_187:12> * 6,<gregtech:meta_plate:3021> * 8,<gregtech:meta_wire_fine:3605> * 64,<gregtech:meta_item_1:177>*16,<gregtech:meta_item_1:147>*16,<gregtech:meta_item_1:102>*32)
    .fluidInputs(<liquid:naquadria>*14400,<liquid:ruthenium_trinium_americium_neutronate>*14400)
	.outputs(<gregtech:machine:3917>)
    .duration(2000)
    .EUt(572288)
    .buildAndRegister();
	
// 一型聚变反应堆控制电脑 * 1
<recipemap:assembly_line>.findRecipe(30720, [<gregtech:fusion_casing:0>, <metaitem:circuit.quantum_mainframe> * 4, <metaitem:plateDoublePlutonium241>, <metaitem:plateDoubleOsmiridium>, <metaitem:field.generator.iv> * 2, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:wireGtSingleIndiumTinBariumTitaniumCuprate> * 32], [<liquid:soldering_alloy> * 1152, <liquid:niobium_titanium> * 1152]).remove();
// 二型聚变反应堆控制电脑 * 1
<recipemap:assembly_line>.findRecipe(61440, [<gregtech:fusion_casing:1>, <metaitem:circuit.crystal_mainframe> * 4, <metaitem:plateDoubleNaquadria>, <metaitem:plateDoubleEuropium>, <metaitem:field.generator.luv> * 2, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:plate.ultra_high_power_integrated_circuit> * 32, <metaitem:wireGtSingleUraniumRhodiumDinaquadide> * 32], [<liquid:soldering_alloy> * 1152, <liquid:vanadium_gallium> * 1152]).remove();
// 三型聚变反应堆控制电脑 * 1
<recipemap:assembly_line>.findRecipe(122880, [<gregtech:fusion_casing:1>, <metaitem:circuit.wetware_mainframe> * 4, <metaitem:quantumstar>, <metaitem:plateDoubleAmericium>, <metaitem:field.generator.zpm> * 2, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 32], [<liquid:soldering_alloy> * 1152, <liquid:yttrium_barium_cuprate> * 1152]).remove();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:991>* 16, <ore:circuitZpm> * 4,<gregtech:boiler_casing:4> * 16,<metaitem:field.generator.iv> * 4, <metaitem:wireGtSingleIndiumTinBariumTitaniumCuprate> * 64, <metaitem:wireGtSingleIndiumTinBariumTitaniumCuprate> * 64)
    .fluidInputs(<liquid:soldering_alloy> * 11520, <liquid:niobium_titanium> * 11520)
	.outputs(<gregtech:machine:32007>* 1)
    .duration(8000)
    .EUt(30720)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:994> * 2,<gregtech:fusion_casing:1> * 4,<gregtech:wire_single:32020> * 16,<gregtech:meta_item_1:209> * 8,<gregtech:meta_item_1:497> * 8,<gregtech:meta_screw:432> * 4)
	.outputs(<gtqtcore:multiblock_casing:1>*2)
	.fluidInputs(<liquid:soldering_alloy> * 20000,<liquid:ruthenium_trinium_americium_neutronate>*14400,<liquid:uu_matter>*16000,<liquid:soldering_alloy> * 11520)
    .duration(1000)
    .EUt(503040)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:995> * 4,<gregtech:fusion_casing:1> * 8,<gregtech:wire_single:32021> * 32,<gregtech:meta_item_1:210> * 16,<gregtech:meta_item_1:497> * 16,<gregtech:meta_screw:432> * 8)
	.outputs(<gtqtcore:multiblock_casing:2>*2)
	.fluidInputs(<liquid:soldering_alloy> * 40000,<liquid:ruthenium_trinium_americium_neutronate>*2880,<liquid:uu_matter>*32000,<liquid:soldering_alloy> * 11520)
    .duration(1000)
    .EUt(503040)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:996> * 8,<gregtech:fusion_casing:1> * 16,<gregtech:wire_single:32160> * 64,<gregtech:meta_item_1:211> * 32,<gregtech:meta_item_1:497> * 64,<gregtech:meta_screw:432> * 16)
	.outputs(<gtqtcore:multiblock_casing:3>*2)
	.fluidInputs(<liquid:soldering_alloy> * 80000,<liquid:ruthenium_trinium_americium_neutronate>*5760,<liquid:uu_matter>*64000,<liquid:soldering_alloy> * 11520)
    .duration(1000)
    .EUt(503040)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:1023>*64,<ore:circuitUv>*4,<gregtech:meta_item_1:149>*16,<gregtech:meta_item_1:253>*8)
	.outputs(<gregtech:machine:3000>)
	.fluidInputs(<liquid:polybenzimidazole>*80000,<liquid:zeron_100>*28800,<liquid:maraging_steel_300>*14400)
    .duration(1000)
    .EUt(7680)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:2022>*16,<ore:circuitUv>*4,<gregtech:meta_item_1:149>*16,<gregtech:meta_item_1:253>*8)
	.outputs(<gregtech:machine:3096>)
	.fluidInputs(<liquid:polybenzimidazole>*80000,<liquid:zeron_100>*28800,<liquid:maraging_steel_300>*14400)
    .duration(1000)
    .EUt(7680)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:2026>*16,<ore:circuitUv>*4,<gregtech:meta_item_1:149>*16,<gregtech:meta_item_1:253>*8)
	.outputs(<gregtech:machine:3097>)
	.fluidInputs(<liquid:polybenzimidazole>*80000,<liquid:zeron_100>*28800,<liquid:maraging_steel_300>*14400)
    .duration(1000)
    .EUt(7680)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:2012>*16,<ore:circuitUv>*4,<gregtech:meta_item_1:149>*16,<gregtech:meta_item_1:253>*8)
	.outputs(<gregtech:machine:3098>)
	.fluidInputs(<liquid:polybenzimidazole>*80000,<liquid:zeron_100>*28800,<liquid:maraging_steel_300>*14400)
    .duration(1000)
    .EUt(7680)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:72>*16,<ore:circuitLuv>*2,<gregtech:meta_item_1:149>*16,<gregtech:meta_item_1:253>*8)
	.outputs(<gregtech:machine:3005>)
	.fluidInputs(<liquid:polybenzimidazole>*80000,<liquid:zeron_100>*28800,<liquid:maraging_steel_300>*14400)
    .duration(1000)
    .EUt(7680)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:1009>*16,<ore:circuitLuv>*2,<gregtech:meta_item_1:149>*16,<gregtech:meta_item_1:253>*8)
	.outputs(<gregtech:machine:3017>)
	.fluidInputs(<liquid:polybenzimidazole>*80000,<liquid:zeron_100>*28800,<liquid:maraging_steel_300>*14400)
    .duration(1000)
    .EUt(7680)
    .buildAndRegister();
	
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:72>*64,<gregtech:machine:492>*64,<gregtech:machine:582>*64,<gregtech:machine:612>*64,<ore:circuitUv>*4,<gregtech:meta_item_1:164>*16,<gregtech:meta_item_1:254>*8)
	.outputs(<gregtech:machine:3013>)
	.fluidInputs(<liquid:polybenzimidazole>*80000,<liquid:zeron_100>*28800,<liquid:maraging_steel_300>*14400)
    .duration(1000)
    .EUt(7680)
    .buildAndRegister();