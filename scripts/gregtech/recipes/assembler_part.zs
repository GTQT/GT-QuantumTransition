import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
// 电动马达（MV） * 1
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtSingleCopper> * 2, <gregtech:meta_stick:2>*2, <metaitem:stickSteelMagnetic>, <metaitem:wireGtDoubleCupronickel> * 4], null).remove();
assembler.recipeBuilder() 
    .inputs(<ore:cableGtSingleCopper>*2,<gregtech:meta_stick:2>*2,<ore:wireGtDoubleAnnealedCopper>*4,<ore:stickSteelMagnetic>)
    .outputs(<gregtech:meta_item_1:128>)
    .duration(100)
    .EUt(30)
    .buildAndRegister();
	
// 末影流体连接覆盖板 * 1
<recipemap:assembler>.findRecipe(480, [<metaitem:plateEnderPearl> * 9, <metaitem:plateDoubleStainlessSteel>, <metaitem:sensor.hv>, <metaitem:emitter.hv>, <metaitem:electric.pump.hv>], [<liquid:plastic> * 288]).remove();
assembler.recipeBuilder() 
    .inputs(<metaitem:plateEnderPearl> * 18, <metaitem:plateDoubleStainlessSteel>*2,<ore:circuitEv>, <metaitem:sensor.ev>*2, <metaitem:emitter.ev>*2, <metaitem:electric.pump.ev>)
	.fluidInputs(<liquid:polytetrafluoroethylene>*576)
    .outputs(<gregtech:meta_item_1:311>*4)
    .duration(1200)
    .EUt(480)
    .buildAndRegister();
	
// 基础钻井平台 * 1
<recipemap:assembler>.findRecipe(120, [<metaitem:hull.mv>, <metaitem:frameSteel> * 4, <metaitem:circuit.good_electronic> * 4, <metaitem:electric.motor.mv> * 4, <metaitem:electric.pump.mv> * 4, <metaitem:gearVanadiumSteel> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
assembler.recipeBuilder() 
    .inputs(<metaitem:hull.hv>, <metaitem:frameSteel> * 4, <ore:circuitHv> * 4, <metaitem:electric.motor.hv> * 4, <metaitem:electric.pump.hv> * 4, <metaitem:gearVanadiumSteel> * 16)
	.fluidInputs(<liquid:polytetrafluoroethylene>*576)
    .outputs(<gregtech:machine:1032>)
    .duration(1200)
	.circuit(2)
    .EUt(480)
    .buildAndRegister();
	

