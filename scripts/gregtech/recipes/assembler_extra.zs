import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate_dense:2>*4,<extraplanets:cloth>*4)
    .fluidInputs(<liquid:plastic>* 144)
    .outputs(<extraplanets:tier1_armor_layer>*4)
	.circuit(20) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate_dense:55>*4,<extraplanets:cloth>*4)
    .fluidInputs(<liquid:plastic>* 144)
    .outputs(<extraplanets:tier1_pressure_layer>*4)
	.circuit(20) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_stick:323>*4,<gregtech:meta_plate:323>*2,<extraplanets:cloth>*4)
    .fluidInputs(<liquid:plastic>* 144)
    .outputs(<extraplanets:tier1_radiation_layer>*4)
	.circuit(20) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:131>*4,<gregtech:meta_item_1:146>*4,<gregtech:meta_item_1:101>*8,<gregtech:meta_block_frame_125:13>*2,<ore:circuitIv>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 1440)
	.outputs(<gregtech:machine:32006> * 1)
    .duration(300)
    .EUt(480)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:131>*4,<gregtech:meta_item_1:146>*4,<gregtech:meta_rotor:113>*8,<gregtech:meta_block_frame_20:3>*2,<ore:circuitIv>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 1440)
	.outputs(<gregtech:machine:32001> * 1)
    .duration(300)
    .EUt(480)
    .buildAndRegister();
//4
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate_dense:113>*4)
	.fluidInputs(<liquid:hsse>*576)
    .outputs(<extraplanets:tier4_items:3>)
    .duration(100)
	.circuit(20)
    .EUt(1960)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<extraplanets:tier4_items:3>*5,<gregtech:meta_stick:2519>*8,<gregtech:meta_block_frame_157:7>*8)
	.fluidInputs(<liquid:hsse>*576)
    .outputs(<extraplanets:nose_cone_tier4>)
    .duration(100)
	.circuit(20)
    .EUt(1960)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<extraplanets:tier4_items:3>*5,<gregtech:meta_stick:2519>*8,<gregtech:meta_block_frame_157:7>*8)
	.fluidInputs(<liquid:hsse>*576)
    .outputs(<extraplanets:tier4_items:2>)
    .duration(100)
	.circuit(21)
    .EUt(1960)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<extraplanets:tier4_items:3>*5,<gregtech:machine:32003>*2,<gregtech:meta_block_frame_157:7>*8)
	.fluidInputs(<liquid:hsse>*576)
    .outputs(<extraplanets:tier4_items>)
    .duration(100)
	.circuit(21)
    .EUt(1960)
    .buildAndRegister();

//5
assembler.recipeBuilder() 
    .inputs(<ore:plateDoubleRhodiumPlatedPalladium>*4)
	.fluidInputs(<liquid:iridium>*576)
    .outputs(<extraplanets:tier5_items:3>)
    .duration(100)
	.circuit(20)
    .EUt(7840)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<extraplanets:tier5_items:3>*5,<gregtech:meta_stick:2519>*8,<gregtech:meta_block_frame_3:2>*16)
	.fluidInputs(<liquid:iridium>*576)
    .outputs(<extraplanets:nose_cone_tier5>)
    .duration(100)
	.circuit(20)
    .EUt(7840)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<extraplanets:tier5_items:3>*5,<gregtech:meta_stick:2519>*8,<gregtech:meta_block_frame_3:2>*16)
	.fluidInputs(<liquid:iridium>*576)
    .outputs(<extraplanets:tier5_items:2>)
    .duration(100)
	.circuit(21)
    .EUt(7840)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<extraplanets:tier5_items:3>*5,<gregtech:machine:32003>*4,<gregtech:meta_block_frame_3:2>*16)
	.fluidInputs(<liquid:iridium>*576)
    .outputs(<extraplanets:tier5_items>)
    .duration(100)
	.circuit(21)
    .EUt(7840)
    .buildAndRegister();
	
//6
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate_double:126>*4)
	.fluidInputs(<liquid:duranium>*576)
    .outputs(<extraplanets:tier6_items:3>)
    .duration(100)
	.circuit(20)
    .EUt(31360)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<extraplanets:tier6_items:3>*5,<gregtech:meta_stick:3006>*8,<gregtech:meta_block_frame_2:1>*16)
	.fluidInputs(<liquid:duranium>*576)
    .outputs(<extraplanets:nose_cone_tier6>)
    .duration(100)
	.circuit(20)
    .EUt(31360)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<extraplanets:tier6_items:3>*5,<gregtech:meta_stick:3006>*8,<gregtech:meta_block_frame_2:1>*16)
	.fluidInputs(<liquid:duranium>*576)
    .outputs(<extraplanets:tier6_items:2>)
    .duration(100)
	.circuit(21)
    .EUt(31360)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<extraplanets:tier6_items:3>*5,<gregtech:machine:32003>*8,<gregtech:meta_block_frame_2:1>*16)
	.fluidInputs(<liquid:duranium>*576)
    .outputs(<extraplanets:tier6_items>)
    .duration(100)
	.circuit(21)
    .EUt(31360)
    .buildAndRegister();
	
//7
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate_dense:431>*4)
	.fluidInputs(<liquid:americium>*576)
    .outputs(<extraplanets:tier7_items:3>)
    .duration(100)
	.circuit(20)
    .EUt(125400)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<extraplanets:tier7_items:3>*5,<gregtech:meta_stick:15040>*8,<gregtech:meta_block_frame_2010:2>*16)
	.fluidInputs(<liquid:americium>*576)
    .outputs(<extraplanets:nose_cone_tier7>)
    .duration(100)
	.circuit(20)
    .EUt(125400)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<extraplanets:tier7_items:3>*5,<gregtech:meta_stick:15040>*8,<gregtech:meta_block_frame_2010:2>*16)
	.fluidInputs(<liquid:americium>*576)
    .outputs(<extraplanets:tier7_items:2>)
    .duration(100)
	.circuit(21)
    .EUt(125400)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<extraplanets:tier7_items:3>*5,<gregtech:machine:1012>*8,<gregtech:meta_block_frame_2010:2>*16)
	.fluidInputs(<liquid:americium>*576)
    .outputs(<extraplanets:tier7_items>)
    .duration(100)
	.circuit(21)
    .EUt(125400)
    .buildAndRegister();