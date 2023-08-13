import mods.gregtech.recipe.RecipeMap;
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_27>*64,<gregtech:meta_item_1:209>*16,<gregtech:meta_item_1:134>*32,<ore:circuitUhv>*16,<ore:screwCosmicNeutronium>*64,<gcys:meta_item_1:369>*64,<contenttweaker:power_components>*16,<contenttweaker:base_components>*16)
    .fluidInputs(<liquid:molten.zeron_100>*5760,<liquid:glue>*16000,<liquid:reinforced_epoxy_resin>*1440)
	.outputs(<gregtech:machine:32042>)
    .duration(600)
    .EUt(1966080)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
     .inputs(<gregtech:meta_block_frame_27>,<ore:plateDenseUltimet>*4,<ore:screwNeutronium>*4,<ore:stickNeutronium>*4)
    .fluidInputs(<liquid:molten.zeron_100>*576,<liquid:reinforced_epoxy_resin>*144)
	.outputs(<contenttweaker:base_components>*8)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
	
assembly_line.recipeBuilder() 
    .inputs(<ore:plateDenseUltimet>*4,<ore:screwNeutronium>*4,<gregtech:meta_item_1:134>*2,<ore:stickLongRutheniumTriniumAmericiumNeutronate>*2,<ore:circuitUv>)
    .fluidInputs(<liquid:molten.zeron_100>*576,<liquid:reinforced_epoxy_resin>*144)
	.outputs(<contenttweaker:power_components>*16)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
	
assembly_line.recipeBuilder() 
    .inputs(<ore:plateDenseUltimet>*4,<ore:screwNeutronium>*4,<gregtech:meta_item_1:179>*2,<ore:ringRutheniumTriniumAmericiumNeutronate>*2,<ore:circuitUv>)
    .fluidInputs(<liquid:molten.zeron_100>*576,<liquid:reinforced_epoxy_resin>*144)
	.outputs(<contenttweaker:speed_components>*8)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<ore:circuitUv>,<gregtech:computer_casing:2>*4,<ore:plateDoubleNeutronium>*2,<ore:boltEnrichedNaquadahTriniumEuropiumDuranide>*2)
    .fluidInputs(<liquid:molten.zeron_100>*576,<liquid:reinforced_epoxy_resin>*144)
	.outputs(<contenttweaker:count_components>*4)
    .duration(1200)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:993>*16,<gregtech:meta_item_1:134>*16,<gregtech:meta_item_1:164>*16,<gregtech:meta_item_1:179>*16,<ore:circuitUhv>*16,<ore:pipeNonupleFluidPolybenzimidazole>*16,<contenttweaker:nanites>*16)
    .fluidInputs(<liquid:molten.zeron_100>*5760,<liquid:glue>*16000,<liquid:reinforced_epoxy_resin>*1440)
	.outputs(<gregtech:machine:32046>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:993>*16,<gregtech:meta_item_1:709>*16,<gregtech:meta_item_1:179>*16,<ore:circuitUhv>*16,<ore:screwNaquadria>*16,<ore:stickNaquadria>*8)
    .fluidInputs(<liquid:molten.zeron_100>*5760,<liquid:glue>*16000,<liquid:reinforced_epoxy_resin>*1440)
	.outputs(<contenttweaker:nanites>*2)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<contenttweaker:mass_generator>*16,<gregtech:meta_item_1:209>*32,<gregtech:meta_item_1:149>*16,<ore:circuitUhv>*16,<ore:pipeNonupleFluidPolybenzimidazole>*16)
    .fluidInputs(<liquid:molten.zeron_100>*5760,<liquid:glue>*16000,<liquid:reinforced_epoxy_resin>*1440)
	.outputs(<gregtech:machine:32047>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<contenttweaker:mass_generator>*8,<gcys:meta_item_1:368>*64,<gregtech:meta_item_1:104>*32,<gregtech:meta_item_1:149>*16,<ore:circuitUhv>*16)
    .fluidInputs(<liquid:molten.zeron_100>*5760,<liquid:glue>*16000,<liquid:reinforced_epoxy_resin>*1440)
	.outputs(<contenttweaker:mass_core>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gcym:large_multiblock_casing:10>*32,<gregtech:fusion_casing:1>*32,<gregtech:fusion_casing:4>*64,<gcys:meta_item_1:140>*16,<gregtech:meta_item_1:149>*16,<ore:circuitUhv>*16,<gcys:meta_item_1:368>*32)
    .fluidInputs(<liquid:molten.zeron_100>*5760,<liquid:glue>*16000,<liquid:reinforced_epoxy_resin>*1440)
	.outputs(<gregtech:machine:32043>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<ic2:te:22> * 8,<gregtech:meta_item_1:190> * 4,<gregtech:meta_item_1:175> * 4,<gregtech:meta_item_1:160> * 4,<gregtech:fluid_pipe_nonuple:2> * 8,<gregtech:meta_block_frame_20:3> * 32,<gregtech:wire_quadruple:427> * 16)
    .fluidInputs(<liquid:glue>*16000,<liquid:polytetrafluoroethylene>*1440)
	.outputs(<gregtech:machine:32041>)
    .duration(600)
    .EUt(7960)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:1023>*2,<gregtech:meta_item_1:145> * 4,<gregtech:meta_item_1:175> * 4,<gregtech:meta_item_1:160> * 4,<gregtech:fluid_pipe_nonuple:2> * 8,<gregtech:meta_block_frame_20:3> * 32,<gregtech:meta_rotor:32017>*8,<gregtech:meta_plate:2014>*32)
    .fluidInputs(<liquid:glue>*16000,<liquid:polytetrafluoroethylene>*1440)
	.outputs(<gregtech:machine:32044>)
    .duration(600)
    .EUt(7960)
    .buildAndRegister();
	
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:1019>*16,<gregtech:machine:1034>,<gcym:large_multiblock_casing:10>*4,<gcys:meta_item_1:140>*16,<gregtech:meta_item_1:149>*16,<ore:circuitUhv>*16,<gcys:meta_item_1:368>*32)
    .fluidInputs(<liquid:molten.zeron_100>*5760,<liquid:glue>*16000,<liquid:reinforced_epoxy_resin>*1440)
	.outputs(<gregtech:machine:32045>)
    .duration(600)
    .EUt(491520)
    .buildAndRegister();
	