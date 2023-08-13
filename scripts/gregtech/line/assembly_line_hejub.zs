import mods.gregtech.recipe.RecipeMap;
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
// 一型聚变反应堆控制电脑 * 1
<recipemap:assembly_line>.findRecipe(30720, [<gregtech:fusion_casing:0>, <metaitem:circuit.quantum_mainframe> * 4, <metaitem:plateDoublePlutonium241>, <metaitem:plateDoubleOsmiridium>, <metaitem:field.generator.iv> * 2, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:wireGtSingleIndiumTinBariumTitaniumCuprate> * 32], [<liquid:soldering_alloy> * 1152, <liquid:niobium_titanium> * 1152]).remove();
// 二型聚变反应堆控制电脑 * 1
<recipemap:assembly_line>.findRecipe(61440, [<gregtech:fusion_casing:1>, <metaitem:circuit.crystal_mainframe> * 4, <metaitem:plateDoubleNaquadria>, <metaitem:plateDoubleEuropium>, <metaitem:field.generator.luv> * 2, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:plate.ultra_high_power_integrated_circuit> * 32, <metaitem:wireGtSingleUraniumRhodiumDinaquadide> * 32], [<liquid:soldering_alloy> * 1152, <liquid:vanadium_gallium> * 1152]).remove();
// 三型聚变反应堆控制电脑 * 1
<recipemap:assembly_line>.findRecipe(122880, [<gregtech:fusion_casing:1>, <metaitem:circuit.wetware_mainframe> * 4, <metaitem:quantumstar>, <metaitem:plateDoubleAmericium>, <metaitem:field.generator.zpm> * 2, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 32], [<liquid:soldering_alloy> * 1152, <liquid:yttrium_barium_cuprate> * 1152]).remove();


assembly_line.recipeBuilder() 
    .inputs(<gregtech:fusion_casing:0> * 8, <gregtech:meta_item_1:237>*4,<ore:circuitZpm> * 4, <metaitem:plateDoublePlutonium241> * 16, <metaitem:plateDoubleOsmiridium> * 4, <metaitem:field.generator.iv> * 4, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:wireGtSingleIndiumTinBariumTitaniumCuprate> * 32)
    .fluidInputs(<liquid:polybenzimidazole> * 1152, <liquid:niobium_titanium> * 1152)
	.outputs(<gregtech:machine:1020> * 1)
    .duration(800)
    .EUt(30720)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:fusion_casing:1> * 16,<gregtech:meta_item_1:238> *16,<ore:circuitLuv> * 8, <metaitem:plateDoubleNaquadria> * 16, <metaitem:plateDoubleEuropium> * 8, <metaitem:field.generator.luv> * 8, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:plate.ultra_high_power_integrated_circuit> * 32, <metaitem:wireGtSingleUraniumRhodiumDinaquadide> * 64)
    .fluidInputs(<liquid:polybenzimidazole> * 1152, <liquid:vanadium_gallium> * 1152,<liquid:europium>*1152)
	.outputs(<gregtech:machine:1021> * 1)
    .duration(1000)
    .EUt(61440)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:fusion_casing:1> * 32, <gregtech:meta_item_1:238>*32,<ore:circuitUv> * 16, <metaitem:quantumstar> * 16, <metaitem:plateDoubleAmericium> * 16, <metaitem:field.generator.zpm> * 16, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 64, <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 64)
    .fluidInputs(<liquid:polybenzimidazole> * 1152, <liquid:yttrium_barium_cuprate> * 1152,<liquid:darmstadtium>*1152)
	.outputs(<gregtech:machine:1022> * 1)
    .duration(1200)
    .EUt(122880)
    .buildAndRegister();
	
assembly_line.recipeBuilder() 
    .inputs(<gregtech:machine:991>* 16, <ore:circuitZpm> * 4,<gregtech:boiler_casing:4> * 16,<metaitem:field.generator.iv> * 4, <metaitem:wireGtSingleIndiumTinBariumTitaniumCuprate> * 64, <metaitem:wireGtSingleIndiumTinBariumTitaniumCuprate> * 64)
    .fluidInputs(<liquid:soldering_alloy> * 1152, <liquid:niobium_titanium> * 1152)
	.outputs(<gregtech:machine:32007>* 1)
    .duration(800)
    .EUt(30720)
    .buildAndRegister();
