import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:324> * 6,<gregtech:meta_plate:55>*2)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:crafting:9>* 1)
	.circuit(3) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
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
    .inputs(<ic2:fluid_cell>,<minecraft:redstone>)
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
    .EUt(1920)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<compactmachines3:wallbreakable>*48,<gregtech:meta_item_1:210>*12,<appliedenergistics2:quantum_ring>*12)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 576)
    .outputs(<compactmachines3:machine:5>)
    .duration(1200)
    .EUt(4096)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:591> * 4,<gregtech:meta_item_1:592> *8,<gregtech:meta_item_1:600>*16,<ore:circuitHv> * 4,<gregtech:meta_wire_fine:55>*16,<gregtech:meta_plate:1007> * 4)
    .fluidInputs(<liquid:glue> * 500)
    .outputs(<gregtech:meta_item_1:261> * 1)
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:527>,<gregtech:meta_wire_fine:55>*16,<gregtech:meta_plate:99> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 500)
    .outputs(<ic2:crafting:27> * 1)
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_ring:3533>*64,<gregtech:meta_stick_long:423>*2,<gregtech:meta_item_1:102>*4)
    .fluidInputs(<liquid:polystyrene_sulfonate>*576)
    .outputs(<gcys:meta_item_1:500>)
    .duration(120)
	.circuit(10)
    .EUt(125400)
    .buildAndRegister();