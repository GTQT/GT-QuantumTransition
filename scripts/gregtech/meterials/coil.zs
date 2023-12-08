import mods.gregtech.recipe.RecipeMap;
val alloy_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
alloy_smelter.recipeBuilder() 
    .inputs(<gregtech:meta_plate:339>,<gregtech:meta_dust:386>)
    .outputs(<gregtech:meta_plate:32221>*1)
    .duration(100)
    .EUt(24)
    .buildAndRegister();
	
// 白铜线圈方块 * 1
<recipemap:assembler>.findRecipe(30, [<metaitem:wireGtDoubleCupronickel> * 8, <metaitem:foilBronze> * 8], [<liquid:tin_alloy> * 144]).remove();
// 坎塔尔合金线圈方块 * 1
<recipemap:assembler>.findRecipe(120, [<metaitem:wireGtDoubleKanthal> * 8, <metaitem:foilAluminium> * 8], [<liquid:copper> * 144]).remove();
// 镍铬合金线圈方块 * 1
<recipemap:assembler>.findRecipe(480, [<metaitem:wireGtDoubleNichrome> * 8, <metaitem:foilStainlessSteel> * 8], [<liquid:aluminium> * 144]).remove();
// 钨钢线圈方块 * 1
<recipemap:assembler>.findRecipe(1920, [<metaitem:wireGtDoubleTungstenSteel> * 8, <metaitem:foilVanadiumSteel> * 8], [<liquid:nichrome> * 144]).remove();
// 高速钢-G线圈方块 * 1
<recipemap:assembler>.findRecipe(7680, [<metaitem:wireGtDoubleHssg> * 8, <metaitem:foilTungstenCarbide> * 8], [<liquid:tungsten> * 144]).remove();
// 硅岩线圈方块 * 1
<recipemap:assembler>.findRecipe(30720, [<metaitem:wireGtDoubleNaquadah> * 8, <metaitem:foilOsmium> * 8], [<liquid:tungsten_steel> * 144]).remove();
// 凯金线圈方块 * 1
<recipemap:assembler>.findRecipe(122880, [<metaitem:wireGtDoubleTrinium> * 8, <metaitem:foilNaquadahEnriched> * 8], [<liquid:naquadah> * 144]).remove();
// 三钛合金线圈方块 * 1
<recipemap:assembler>.findRecipe(491520, [<metaitem:wireGtDoubleTritanium> * 8, <metaitem:foilNaquadria> * 8], [<liquid:trinium> * 144]).remove();

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder() 
    .inputs(<metaitem:wireGtDoubleCupronickel> * 8, <metaitem:foilBronze> * 8,<gregtech:meta_plate:32221>*2)
    .fluidInputs(<liquid:tin_alloy> * 144)
    .outputs(<gregtech:wire_coil:0>)
	.circuit(10) 
    .duration(120)
    .EUt(30)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:wireGtDoubleKanthal> * 8, <metaitem:foilAluminium> * 8,<gregtech:meta_plate:32221>*2)
    .fluidInputs(<liquid:copper> * 144)
    .outputs(<gregtech:wire_coil:1>)
	.circuit(10) 
    .duration(120)
    .EUt(120)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:wireGtDoubleNichrome> * 8, <metaitem:foilStainlessSteel> * 8,<gregtech:meta_plate:32221>*4)
    .fluidInputs(<liquid:aluminium> * 144)
    .outputs(<gregtech:wire_coil:2>)
	.circuit(10) 
    .duration(120)
    .EUt(480)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:wireGtDoubleTungstenSteel> * 8, <metaitem:foilVanadiumSteel> * 8,<gregtech:meta_plate:32221>*4)
    .fluidInputs(<liquid:nichrome> * 144)
    .outputs(<gregtech:wire_coil:3>)
	.circuit(10) 
    .duration(120)
    .EUt(1960)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:wireGtDoubleHssg> * 8, <metaitem:foilTungstenCarbide> * 8,<gregtech:meta_plate:32221>*8)
    .fluidInputs(<liquid:tungsten> * 144)
    .outputs(<gregtech:wire_coil:4>)
	.circuit(10) 
    .duration(120)
    .EUt(7860)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:wireGtDoubleNaquadah> * 8, <metaitem:foilOsmium> * 8,<gregtech:meta_plate:32221>*8)
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs(<gregtech:wire_coil:5>)
	.circuit(10) 
    .duration(120)
    .EUt(31440)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:wireGtDoubleTrinium> * 8, <metaitem:foilNaquadahEnriched> * 8,<gregtech:meta_plate:32221>*16)
    .fluidInputs(<liquid:naquadah> * 144)
    .outputs(<gregtech:wire_coil:6>)
	.circuit(10) 
    .duration(120)
    .EUt(125760)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:wireGtDoubleTritanium> * 8, <metaitem:foilNaquadria> * 8,<gregtech:meta_plate:32221>*16)
    .fluidInputs(<liquid:trinium> * 144)
    .outputs(<gregtech:wire_coil:7>)
	.circuit(10) 
    .duration(120)
    .EUt(503040)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:wireGtHexXbDraconium>*8,<ore:foilMetallicHydrogen>*16,<gregtech:meta_plate:32221>*32)
	.fluidInputs(<liquid:kevlar>*576)
    .outputs(<gtqtcore:wire_coil:0>)
    .duration(1200)
    .EUt(2012160)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:wireGtHexXbDraconiumAwakened>*8,<ore:foilAusteniteSteel>*32,<gregtech:meta_plate:32221>*64)
	.fluidInputs(<liquid:kevlar>*576)
    .outputs(<gtqtcore:wire_coil:1>)
    .duration(1200)
    .EUt(8048640)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:wireGtHexUniverseNeutronium>*8,<ore:foilMetallicHydrogen>*48,<gregtech:meta_plate:32221>*128)
	.fluidInputs(<liquid:kevlar>*576)
    .outputs(<gtqtcore:wire_coil:2>)
    .duration(1200)
    .EUt(32194560)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:plateDoubleInfinity>*8,<ore:foilTiberium>*64,<gregtech:meta_plate:32221>*256)
	.fluidInputs(<liquid:kevlar>*576)
    .outputs(<gtqtcore:wire_coil:3>)
    .duration(1200)
    .EUt(128778240)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:wireGtHexMetallicHydrogen>*8,<ore:foilArcanium>*128,<gregtech:meta_plate:32221>*512)
	.fluidInputs(<liquid:kevlar>*576)
    .outputs(<gtqtcore:wire_coil:4>)
    .duration(1200)
    .EUt(128778240*4)
    .buildAndRegister();
	