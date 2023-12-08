import mods.gregtech.recipe.RecipeMap;
val fusion_reactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:trinium> * 1440,<liquid:osmiridium> * 576)
    .fluidOutputs(<liquid:europium>* 32) 
    .property("eu_to_start", 150000000)
    .duration(200)
    .EUt(24576)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:naquadria> * 1280,<liquid:darmstadtium> * 1280)
    .fluidOutputs(<liquid:neutronium>* 32) 
    .property("eu_to_start", 640000000)
    .duration(400)
    .EUt(98304)
    .buildAndRegister();

fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:americium> * 480,<liquid:naquadah_enriched> * 1280)
    .fluidOutputs(<liquid:naquadria>* 32) 
    .property("eu_to_start", 640000000)
    .duration(1280)
    .EUt(49152)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:draconium_awakened> * 160,<liquid:infinity> * 1280)
    .fluidOutputs(<liquid:cthulhu>* 64) 
    .property("eu_to_start", 640000000)
    .duration(1280)
    .EUt(49152*16)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:draconium> * 120,<liquid:cosmic_neutronium> * 360)
    .fluidOutputs(<liquid:xb_draconium>* 48) 
    .property("eu_to_start", 640000000)
    .duration(1280)
    .EUt(49152*4)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:draconium_awakened> * 120,<liquid:cosmic_neutronium> * 360)
    .fluidOutputs(<liquid:xb_draconium_awakened>*48) 
    .property("eu_to_start", 640000000)
    .duration(1280)
    .EUt(49152*4)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:xb_draconium> * 320,<liquid:plasma.vibranium> * 1280)
    .fluidOutputs(<liquid:molten_coalescence_matrix>*64) 
    .property("eu_to_start", 640000000)
    .duration(1280)
    .EUt(49152*4)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:plutonium_phosphide>*1280,<liquid:plasma.vibranium>*640)
    .fluidOutputs(<liquid:lunarium>*72) 
    .property("eu_to_start", 1280000000)
    .duration(1280)
    .EUt(49152*4)
    .buildAndRegister();

fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:austenite_steel>*1280,<liquid:chaotoushefen>*640)
    .fluidOutputs(<liquid:mithril>*72) 
    .property("eu_to_start", 1280000000)
    .duration(1280)
    .EUt(49152*4)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:xb_draconium>*1280,<liquid:adamantium>*640)
    .fluidOutputs(<liquid:austenite_steel>*72) 
    .property("eu_to_start", 1280000000)
    .duration(1280)
    .EUt(49152*4)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:positronium>*480,<liquid:radium>*640)
    .fluidOutputs(<liquid:chaotoushefen>*36) 
    .property("eu_to_start", 1280000000)
    .duration(1280)
    .EUt(49152*4)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:chaojinghuahewu>*5760,<liquid:metallic_hydrogen>*20000)
    .fluidOutputs(<liquid:superconducting_magnet_mixture>*72) 
    .property("eu_to_start", 1280000000)
    .duration(1280)
    .EUt(49152*16)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:xb_draconium_awakened>*1440,<liquid:lunarium>*1440)
    .fluidOutputs(<liquid:dragon_essence>*72) 
    .property("eu_to_start", 1280000000)
    .duration(1280)
    .EUt(49152*16)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:infinity>*1440,<liquid:plasma.vibranium>*1440)
    .fluidOutputs(<liquid:aurorium>*72) 
    .property("eu_to_start", 1280000000)
    .duration(1280)
    .EUt(49152*64)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:cthulhu>*1440,<liquid:cracked_heavy_enriched_taranium>*1440)
    .fluidOutputs(<liquid:octal_superheavy_element_mixture>*72) 
    .property("eu_to_start", 1280000000)
    .duration(1280)
    .EUt(49152*64)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:sunnarium>*1440,<liquid:superconducting_magnet_mixture>*1440)
    .fluidOutputs(<liquid:black_hole_matter_polymer_matrix>*72) 
    .property("eu_to_start", 2560000000)
    .duration(1280)
    .EUt(49152*64)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:metallic_hydrogen>*1440,<liquid:austenite_steel>*1440)
    .fluidOutputs(<liquid:tiberium>*72) 
    .property("eu_to_start", 2560000000)
    .duration(1280)
    .EUt(49152*64)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:pedot_pss>*1440,<liquid:superconducting_magnet_mixture>*1440)
    .fluidOutputs(<liquid:uevchaodao>*72) 
    .property("eu_to_start", 2560000000)
    .duration(1280)
    .EUt(49152*64)
    .buildAndRegister();
	
fusion_reactor.recipeBuilder() 
    .fluidInputs(<liquid:stellar_material_residue_c>*1440,<liquid:octal_superheavy_element_mixture>*1440)
    .fluidOutputs(<liquid:eternal>*72) 
    .property("eu_to_start", 5120000000)
    .duration(1280)
    .EUt(49152*64)
    .buildAndRegister();