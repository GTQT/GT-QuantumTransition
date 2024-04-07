import mods.gregtech.recipe.RecipeMap;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val canner = mods.gregtech.recipe.RecipeMap.getByName("canner");

//硬盘注册
canner.recipeBuilder()
    .inputs(<nae2:material>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_1k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:1>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_4k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:2>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_16k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:3>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_64k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:4>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_256k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:5>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_1024k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:6>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_4096k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:7>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_16384k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
	
canner.recipeBuilder()
    .inputs(<nae2:material:8>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_fluid_1k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:9>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_fluid_4k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:10>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_fluid_16k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:11>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_fluid_64k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:12>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_fluid_256k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:13>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_fluid_1024k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:14>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_fluid_4096k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
canner.recipeBuilder()
    .inputs(<nae2:material:15>)
    .inputs(<appliedenergistics2:material:39>)
    .outputs(<nae2:multi_storage_cell_fluid_16384k>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
	
//原件注册
// 1k Storage
assembler.recipeBuilder()
    .inputs(<metaitem:plate.central_processing_unit>)
    .inputs(<ore:plateCertusQuartz>)
    .inputs(<ore:circuitEv>*4)
	.circuit(2)
    .outputs(<nae2:material>)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

// 4k Storage
assembler.recipeBuilder()
    .inputs(<metaitem:plate.random_access_memory>)
    .inputs(<appliedenergistics2:material:22> * 4)
    .inputs(<ore:circuitEv>*4)
    .outputs(<nae2:material:1>)
	.circuit(2)
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

// 16k Storage
assembler.recipeBuilder()
    .inputs(<metaitem:plate.ultra_low_power_integrated_circuit>)
    .inputs(<ore:circuitIv>*4)
    .inputs(<appliedenergistics2:material:23> * 4)
    .outputs(<nae2:material:2>)
	.circuit(2)
    .duration(200)
    .EUt(7680)
    .buildAndRegister();

// 64k Storage
assembler.recipeBuilder()
    .inputs(<metaitem:plate.power_integrated_circuit>)
    .inputs(<ore:circuitLuv>*4)
    .inputs(<appliedenergistics2:material:24> * 4)
    .outputs(<nae2:material:3>)
	.circuit(2)
    .duration(200)
    .EUt(7680)
    .buildAndRegister();

// 1k Fluid Storage
assembler.recipeBuilder()
    .inputs(<metaitem:plate.simple_system_on_chip>)
    .inputs(<ore:plateLapis> * 3)
    .inputs(<ore:circuitEv>*4)
    .inputs(<metaitem:fluid.regulator.lv>)
    .outputs(<nae2:material:8>)
	.circuit(2)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

// 4k Fluid Storage
assembler.recipeBuilder()
    .inputs(<metaitem:plate.system_on_chip>)
    .inputs(<ore:circuitEv>*4)
    .inputs(<metaitem:fluid.regulator.mv>)
    .inputs(<appliedenergistics2:material:22> * 4)
    .outputs(<nae2:material:9>)
	.circuit(2)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

// 16k Fluid Storage
assembler.recipeBuilder()
    .inputs(<metaitem:plate.power_integrated_circuit>)
    .inputs(<ore:circuitIv>*4)
    .inputs(<metaitem:fluid.regulator.hv>)
    .inputs(<appliedenergistics2:material:23> * 4)
    .outputs(<nae2:material:10>)
	.circuit(2)
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

// 64k Fluid Storage
assembler.recipeBuilder()
    .inputs(<metaitem:plate.high_power_integrated_circuit>)
    .inputs(<ore:circuitLuv>*4)
    .inputs(<metaitem:fluid.regulator.ev>)
    .inputs(<appliedenergistics2:material:24> * 4)
    .outputs(<nae2:material:11>)
	.circuit(2)
    .duration(200)
    .EUt(7680)
    .buildAndRegister();