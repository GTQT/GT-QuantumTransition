import mods.gregtech.recipe.RecipeMap;
val circuit_assembler = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");

// 集成逻辑电路 * 2
<recipemap:circuit_assembler>.findRecipe(16, [<metaitem:circuit_board.basic>, <metaitem:plate.integrated_logic_circuit>, <metaitem:component.resistor> * 2, <metaitem:component.diode> * 2, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2], [<liquid:soldering_alloy> * 72]).remove();
// 集成逻辑电路 * 2
<recipemap:circuit_assembler>.findRecipe(16, [<metaitem:circuit_board.basic>, <metaitem:plate.integrated_logic_circuit>, <metaitem:component.resistor> * 2, <metaitem:component.diode> * 2, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2], [<liquid:tin> * 144]).remove();

circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.basic>, <metaitem:plate.integrated_logic_circuit>, <ore:componentResistor> * 2, <ore:componentDiode> * 2, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 72)
	.outputs(<gregtech:meta_item_1:623>)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.basic>, <metaitem:plate.integrated_logic_circuit>, <ore:componentResistor> * 2, <ore:componentDiode> * 2, <metaitem:wireFineCopper> * 2, <metaitem:boltTin> * 2)
    .fluidInputs(<liquid:tin> * 144)
	.outputs(<gregtech:meta_item_1:623>)
    .duration(200)
    .EUt(16)
    .buildAndRegister();
	
// 优质集成电路 * 2
<recipemap:circuit_assembler>.findRecipe(24, [<metaitem:circuit_board.good>, <metaitem:circuit.basic_integrated> * 2, <metaitem:component.resistor> * 2, <metaitem:component.diode> * 2, <metaitem:wireFineGold> * 4, <metaitem:boltSilver> * 4], [<liquid:tin> * 144]).remove();
// 优质集成电路 * 2
<recipemap:circuit_assembler>.findRecipe(24, [<metaitem:circuit_board.good>, <metaitem:circuit.basic_integrated> * 2, <metaitem:component.resistor> * 2, <metaitem:component.diode> * 2, <metaitem:wireFineGold> * 4, <metaitem:boltSilver> * 4], [<liquid:soldering_alloy> * 72]).remove();

circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.good>, <metaitem:circuit.basic_integrated> * 2, <ore:componentResistor> *2, <ore:componentDiode> * 2, <metaitem:wireFineGold> * 4, <metaitem:boltSilver> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 72)
	.outputs(<gregtech:meta_item_1:624>)
    .duration(200)
    .EUt(24)
    .buildAndRegister();
	
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.good>, <metaitem:circuit.basic_integrated> * 2, <ore:componentResistor> *2, <ore:componentDiode> * 2, <metaitem:wireFineGold> * 4, <metaitem:boltSilver> * 4)
    .fluidInputs(<liquid:tin> * 144)
	.outputs(<gregtech:meta_item_1:624>)
    .duration(200)
    .EUt(24)
    .buildAndRegister();
	
// 处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(120, [<metaitem:circuit_board.plastic>, <metaitem:circuit.processor> * 2, <metaitem:component.inductor> * 4, <metaitem:component.capacitor> * 8, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFineRedAlloy> * 8], [<liquid:soldering_alloy> * 144]).remove();
// 处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(120, [<metaitem:circuit_board.plastic>, <metaitem:circuit.processor> * 2, <metaitem:component.inductor> * 4, <metaitem:component.capacitor> * 8, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFineRedAlloy> * 8], [<liquid:tin> * 288]).remove();

circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.plastic>, <metaitem:circuit.processor> * 2, <ore:componentInductor> * 4, <ore:componentCapacitor> * 8, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFineRedAlloy> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 72)
	.outputs(<gregtech:meta_item_1:629>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
	
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.plastic>, <metaitem:circuit.processor> * 2, <ore:componentInductor> * 4, <ore:componentCapacitor> * 8, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFineRedAlloy> * 8)
    .fluidInputs(<liquid:tin> * 144)
	.outputs(<gregtech:meta_item_1:629>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

// 纳米处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.advanced_smd.inductor>, <metaitem:component.advanced_smd.capacitor> * 2, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16], [<liquid:tin> * 288]).remove();
// 纳米处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.advanced_smd.inductor>, <metaitem:component.advanced_smd.capacitor> * 2, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16], [<liquid:soldering_alloy> * 144]).remove();
// 纳米处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.smd.inductor> * 4, <metaitem:component.smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16], [<liquid:soldering_alloy> * 144]).remove();
// 纳米处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.smd.inductor> * 4, <metaitem:component.smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16], [<liquid:tin> * 288]).remove();
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.advanced_smd.inductor>, <metaitem:component.advanced_smd.capacitor> * 2, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16)
    .fluidInputs(<liquid:soldering_alloy> * 72)
	.outputs(<gregtech:meta_item_1:633>)
    .duration(200)
    .EUt(600)
    .buildAndRegister();	
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.advanced_smd.inductor>, <metaitem:component.advanced_smd.capacitor> * 2, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16)
    .fluidInputs(<liquid:tin> * 144)
	.outputs(<gregtech:meta_item_1:633>)
	.property("cleanroom", "cleanroom")
    .duration(200)
    .EUt(600)
    .buildAndRegister();
	
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.smd.inductor> * 4, <metaitem:component.smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16)
    .fluidInputs(<liquid:soldering_alloy> * 72)
	.outputs(<gregtech:meta_item_1:633>)
	.property("cleanroom", "cleanroom")
    .duration(400)
    .EUt(600)
    .buildAndRegister();	
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.smd.inductor> * 4, <metaitem:component.smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16)
    .fluidInputs(<liquid:tin> * 144)
	.outputs(<gregtech:meta_item_1:633>)
	.property("cleanroom", "cleanroom")
    .duration(400)
    .EUt(600)
    .buildAndRegister();
	
// 量子处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16], [<liquid:tin> * 288]).remove();
// 量子处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16], [<liquid:soldering_alloy> * 144]).remove();
// 量子处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.smd.inductor> * 8, <metaitem:component.smd.capacitor> * 16, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16], [<liquid:soldering_alloy> * 144]).remove();
// 量子处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.smd.inductor> * 8, <metaitem:component.smd.capacitor> * 16, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16], [<liquid:tin> * 288]).remove();
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16)
    .fluidInputs(<liquid:soldering_alloy> * 144)
	.outputs(<gregtech:meta_item_1:637>)
	.property("cleanroom", "cleanroom")
    .duration(200)
    .EUt(2400)
    .buildAndRegister();	
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16) 
	.fluidInputs(<liquid:tin> * 288)
	.outputs(<gregtech:meta_item_1:637>)
	.property("cleanroom", "cleanroom")
    .duration(200)
    .EUt(2400)
    .buildAndRegister();
	
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.smd.inductor> * 8, <metaitem:component.smd.capacitor> * 16, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16)
    .fluidInputs(<liquid:soldering_alloy> * 144)
	.outputs(<gregtech:meta_item_1:637>)
    .duration(400)
	.property("cleanroom", "cleanroom")
    .EUt(2400)
    .buildAndRegister();	
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.smd.inductor> * 8, <metaitem:component.smd.capacitor> * 16, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16)
    .fluidInputs(<liquid:tin> * 288)
	.outputs(<gregtech:meta_item_1:637>)
	.property("cleanroom", "cleanroom")
    .duration(400)
    .EUt(2400)
    .buildAndRegister();
	
// 晶体处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(9600, [<metaitem:circuit_board.elite>, <metaitem:circuit.crystal_processor> * 2, <metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineNiobiumTitanium> * 16], [<liquid:tin> * 288]).remove();
// 晶体处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(9600, [<metaitem:circuit_board.elite>, <metaitem:circuit.crystal_processor> * 2, <metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineNiobiumTitanium> * 16], [<liquid:soldering_alloy> * 144]).remove();
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.elite>, <metaitem:circuit.crystal_processor> * 2, <metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineNiobiumTitanium> * 16)
    .fluidInputs(<liquid:soldering_alloy> * 144)
	.outputs(<gregtech:meta_item_1:641>)
    .duration(400)
	.property("cleanroom", "cleanroom")
    .EUt(9600)
    .buildAndRegister();	
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.elite>, <metaitem:circuit.crystal_processor> * 2, <metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineNiobiumTitanium> * 16)
    .fluidInputs(<liquid:tin> * 288)
	.outputs(<gregtech:meta_item_1:641>)
	.property("cleanroom", "cleanroom")
    .duration(400)
    .EUt(9600)
    .buildAndRegister();
	
// 湿件处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(38400, [<metaitem:circuit_board.wetware>, <metaitem:circuit.wetware_processor> * 2, <metaitem:component.advanced_smd.inductor> * 6, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineYttriumBariumCuprate> * 16], [<liquid:soldering_alloy> * 144]).remove();
// 湿件处理器集群 * 2
<recipemap:circuit_assembler>.findRecipe(38400, [<metaitem:circuit_board.wetware>, <metaitem:circuit.wetware_processor> * 2, <metaitem:component.advanced_smd.inductor> * 6, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineYttriumBariumCuprate> * 16], [<liquid:tin> * 288]).remove();
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.wetware>, <metaitem:circuit.wetware_processor> * 2, <metaitem:component.advanced_smd.inductor> * 6, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineYttriumBariumCuprate> * 16)
    .fluidInputs(<liquid:soldering_alloy> * 144)
	.outputs(<gregtech:meta_item_1:645>)
    .duration(400)
	.property("cleanroom", "cleanroom")
    .EUt(38400)
    .buildAndRegister();	
circuit_assembler.recipeBuilder() 
    .inputs(<metaitem:circuit_board.wetware>, <metaitem:circuit.wetware_processor> * 2, <metaitem:component.advanced_smd.inductor> * 6, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineYttriumBariumCuprate> * 16)
    .fluidInputs(<liquid:tin> * 288)
	.outputs(<gregtech:meta_item_1:645>)
	.property("cleanroom", "cleanroom")
    .duration(400)
    .EUt(38400)
    .buildAndRegister();
	
