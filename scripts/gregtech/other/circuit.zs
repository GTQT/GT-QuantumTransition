import mods.gregtech.recipe.RecipeMap;
val circuit_assembler = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
// 化学超级计算机 * 1
assembly_line.recipeBuilder() 
    .inputs(<gcys:meta_item_1:400>,<gcys:meta_item_1:1>* 2, <metaitem:component.advanced_smd.diode> * 10, <metaitem:plate.nor_memory_chip> * 16, <metaitem:plate.random_access_memory> * 32, <metaitem:wireFineEuropium> * 24, <metaitem:foilKaptonK> * 32, <metaitem:plateAmericium> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 1440)
	.outputs(<gcys:meta_item_1:2>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(491520)
    .buildAndRegister();
	
// 化学电脑主机 * 1
assembly_line.recipeBuilder() 
    .inputs(<metaitem:frameDarmstadtium> * 2, <gcys:meta_item_1:2> * 2, <metaitem:component.advanced_smd.diode> * 64, <metaitem:component.advanced_smd.capacitor> * 64, <metaitem:component.advanced_smd.transistor> * 64, <metaitem:component.advanced_smd.resistor> * 64, <metaitem:component.advanced_smd.inductor> * 64, <metaitem:foilKaptonK> * 64, <metaitem:plate.random_access_memory> * 32, <metaitem:wireGtDoublePedotPss> * 16, <metaitem:plateAmericium> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kapton_e> * 1296)
	.outputs(<gcys:meta_item_1:3>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(491520)
    .buildAndRegister();
// 光学超级计算机 * 1
assembly_line.recipeBuilder() 
    .inputs(<gcys:meta_item_1:401>,<gcys:meta_item_1:5>* 2 * 2, <gcys:meta_item_1:421> * 8, <metaitem:plate.nor_memory_chip> * 16, <gcys:meta_item_1:200> * 32, <gcys:meta_item_1:201> * 24, <metaitem:foilKaptonE> * 32, <metaitem:plateTritanium> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 1728)
	.outputs(<gcys:meta_item_1:6>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(491520)
    .buildAndRegister();
// 光学电脑主机 * 1
assembly_line.recipeBuilder() 
    .inputs(<metaitem:frameTritanium> * 2,<gcys:meta_item_1:6>*2, <gcys:meta_item_1:421> * 8, <metaitem:plate.nor_memory_chip> * 16, <gcys:meta_item_1:200> * 32,<gcys:meta_item_1:368>* 2, <gcys:meta_item_1:424> * 8, <gcys:meta_item_1:420> * 16,<gcys:meta_item_1:422> * 8, <metaitem:plateTritanium> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gcys:meta_item_1:7>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(491520)
    .buildAndRegister();
// 自旋电子学处理器 * 2
//assembly_line.recipeBuilder() 
 //   .inputs(<gcys:meta_item_1:224>, <metaitem:crystal.central_processing_unit>, <gcys:meta_item_1:427> * 8, <gcys:meta_item_1:425> * 8, <gcys:meta_item_1:428> * 8, <metaitem:wireFineCarbonNanotube> * 8)
 //   .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
//	.outputs(<gcys:meta_item_1:8>)
 //   .duration(1600)
//	.property("cleanroom", "cleanroom")
 //   .EUt(7864320)
 //   .buildAndRegister();
// 自旋电子学组件 * 2
//assembly_line.recipeBuilder() 
 //   .inputs(<gcys:meta_item_1:402>,<gcys:meta_item_1:8> * 2, <gcys:meta_item_1:429> * 6, <gcys:meta_item_1:425> * 12, <gcys:meta_item_1:220> * 24, <metaitem:wireFineCarbonNanotube> * 16)
 //   .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
//	.outputs(<gcys:meta_item_1:9>)
  //  .duration(1600)
	//.property("cleanroom", "cleanroom")
   // .EUt(7864320)
   // .buildAndRegister();
// 自旋电子学超级计算机 * 1
assembly_line.recipeBuilder() 
    .inputs(<gcys:meta_item_1:402>,<gcys:meta_item_1:9>* 2, <gcys:meta_item_1:426> * 8, <metaitem:plate.nor_memory_chip> * 16, <gcys:meta_item_1:220> * 32, <metaitem:wireFineCarbonNanotube> * 24, <metaitem:foilFullerene> * 32, <metaitem:platePlutoniumPhosphide> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gcys:meta_item_1:10>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(7864320)
    .buildAndRegister();
// 自旋电子学电脑主机 * 1
assembly_line.recipeBuilder() 
    .inputs(<ore:frameGtFullerene>* 2,<gcys:meta_item_1:10>* 2, <gcys:meta_item_1:426> * 8, <metaitem:plate.nor_memory_chip> * 16, <gcys:meta_item_1:220> * 32,<gcys:meta_item_1:368>* 2, <metaitem:cableGtSingleCarbonNanotube> * 8, <gcys:meta_item_1:429> * 8, <gcys:meta_item_1:425> * 16, <gcys:meta_item_1:427> * 8, <metaitem:platePlutoniumPhosphide> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gcys:meta_item_1:11>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(7864320)
    .buildAndRegister();
	
	
	
	
	
	
	
	
	
// 电动马达（UEV） * 1
assembly_line.recipeBuilder() 
    .inputs(<metaitem:stickLongCgtMagnetic>, <metaitem:stickLongMetallicHydrogen> * 4, <metaitem:ringMetallicHydrogen> * 4, <ore:roundAdamantium> * 8, <metaitem:wireFineCarbonNanotube> * 64, <metaitem:wireFineCarbonNanotube> * 64, <metaitem:cableGtSinglePedotTma> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gregtech:meta_item_1:136>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(1600000)
    .buildAndRegister();
// 电动泵（UEV） * 1
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:136>, <metaitem:pipeLargeFluidNeutronium>, <metaitem:plateMetallicHydrogen> * 2, <metaitem:screwMetallicHydrogen> * 8, <metaitem:ringStyreneButadieneRubber> * 16, <ore:rotorUniverseNeutronium>, <metaitem:cableGtSinglePedotTma> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gregtech:meta_item_1:151>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(1600000)
    .buildAndRegister();
// 传送带（UEV） * 1
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:136> * 2, <metaitem:plateMetallicHydrogen> * 2, <metaitem:ringMetallicHydrogen> * 4, <ore:roundAdamantium> * 16, <metaitem:screwMetallicHydrogen> * 4, <metaitem:cableGtSinglePedotTma> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gregtech:meta_item_1:166>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(1600000)
    .buildAndRegister();
// 电力活塞（UEV） * 1
assembly_line.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:136>, <metaitem:plateMetallicHydrogen> * 4, <metaitem:ringMetallicHydrogen> * 4, <ore:roundAdamantium> * 16, <metaitem:stickMetallicHydrogen> * 4, <metaitem:gearMetallicHydrogen>, <metaitem:gearSmallMetallicHydrogen> * 2, <metaitem:cableGtSinglePedotTma> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gregtech:meta_item_1:181>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(1600000)
    .buildAndRegister();
// 机械臂（UEV） * 1
assembly_line.recipeBuilder() 
    .inputs(<metaitem:stickLongMetallicHydrogen> * 4, <metaitem:gearMetallicHydrogen>, <metaitem:gearSmallMetallicHydrogen> * 3, <gregtech:meta_item_1:136> * 2, <metaitem:electric.piston.uev>, <ore:circuitUev>*2, <metaitem:cableGtSinglePedotTma> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gregtech:meta_item_1:196>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(1600000)
    .buildAndRegister();
// 力场发生器（UEV） * 1
assembly_line.recipeBuilder() 
    .inputs(<metaitem:frameMetallicHydrogen>, <metaitem:plateMetallicHydrogen> * 6, <metaitem:gravistar>*64, <metaitem:emitter.uev> * 2, <ore:circuitUev> * 2 * 2, <metaitem:wireFineCarbonNanotube> * 64, <metaitem:wireFineCarbonNanotube> * 64, <metaitem:cableGtSinglePedotTma> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gregtech:meta_item_1:211>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(1600000)
    .buildAndRegister();
// 发射器（UEV） * 1
assembly_line.recipeBuilder() 
    .inputs(<metaitem:frameMetallicHydrogen>, <gregtech:meta_item_1:136>, <metaitem:stickLongMetallicHydrogen> * 4, <metaitem:gravistar>, <ore:circuitUev> * 2, <metaitem:foilMercuryCadmiumTelluride> * 64, <metaitem:foilMercuryCadmiumTelluride> * 32, <metaitem:cableGtSinglePedotTma> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gregtech:meta_item_1:226>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(1600000)
    .buildAndRegister();
// 传感器（UEV） * 1
assembly_line.recipeBuilder() 
    .inputs(<metaitem:frameMetallicHydrogen>, <gregtech:meta_item_1:136>, <metaitem:plateMetallicHydrogen> * 4, <metaitem:gravistar>, <ore:circuitUev> * 2, <metaitem:foilFullerene> * 64, <metaitem:foilFullerene> * 32, <metaitem:cableGtSinglePedotTma> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 2880, <liquid:kevlar> * 1296)
	.outputs(<gregtech:meta_item_1:241>)
    .duration(1600)
	.property("cleanroom", "cleanroom")
    .EUt(1600000)
    .buildAndRegister();