import mods.gregtech.recipe.RecipeMap;
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:601> * 4,<gregtech:meta_item_1:600>*8 ,<gregtech:meta_item_1:599>*16,<ore:circuitIv> * 4,<gregtech:meta_wire_fine:80>*16,<gregtech:meta_plate:296> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 500)
	.outputs(<gregtech:meta_item_1:262> * 1)
    .duration(600)
    .EUt(2048)
    .buildAndRegister();

assembly_line.recipeBuilder() 
    .inputs(<metaitem:circuit_board.elite>, <metaitem:plateDoubleEuropium> * 8, <metaitem:circuit.quantum_mainframe> * 4, <metaitem:energy.lapotronic_orb_cluster>, <metaitem:field.generator.luv>, <metaitem:plate.high_power_integrated_circuit> * 32, <metaitem:component.advanced_smd.diode> * 12, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:component.advanced_smd.resistor> * 12, <metaitem:component.advanced_smd.transistor> * 12, <metaitem:component.advanced_smd.inductor> * 12, <metaitem:wireFineRuridit> * 64, <metaitem:boltTrinium> * 16)
    .fluidInputs(<liquid:molten.samarium_iron_arsenic_oxide> * 1440)
	.outputs(<gregtech:meta_item_1:645>)
    .duration(12000)
    .EUt(100000)
    .buildAndRegister();