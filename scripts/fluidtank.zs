import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
recipes.remove(<fluidtank:blocktank7>);
recipes.remove(<fluidtank:blocktank6>);
recipes.remove(<fluidtank:blocktank5>);
recipes.remove(<fluidtank:blocktank3:3>);
recipes.remove(<fluidtank:blocktank4>);
recipes.remove(<fluidtank:blocktank3:2>);
recipes.remove(<fluidtank:blocktank3:1>);
recipes.remove(<fluidtank:blocktank3>);
recipes.remove(<fluidtank:blocktank2:2>);
recipes.remove(<fluidtank:blocktank2:1>);
recipes.remove(<fluidtank:blocktank2>);
recipes.remove(<fluidtank:blocktank1>);
recipes.addShaped(<fluidtank:blocktank3:1>, [[<ore:ringTungstenSteel>, <ore:plateDenseTungstenSteel>, <ore:ringTungstenSteel>], [<ore:plateDenseTungstenSteel>, <ore:pipeNonupleFluidTungstenSteel>, <ore:plateDenseTungstenSteel>], [<ore:ringTungstenSteel>, <ore:plateDenseTungstenSteel>, <ore:ringTungstenSteel>]]);
recipes.addShaped(<fluidtank:blocktank3>, [[<ore:ringTitanium>, <ore:plateDenseTitanium>, <ore:ringTitanium>], [<ore:plateDenseTitanium>, <ore:pipeNonupleFluidTitanium>, <ore:plateDenseTitanium>], [<ore:ringTitanium>, <ore:plateDenseTitanium>, <ore:ringTitanium>]]);
recipes.addShaped(<fluidtank:blocktank2:2>, [[<ore:ringStainlessSteel>, <ore:plateDenseStainlessSteel>, <ore:ringStainlessSteel>], [<ore:plateDenseStainlessSteel>, <ore:pipeNonupleFluidStainlessSteel>, <ore:plateDenseStainlessSteel>], [<ore:ringStainlessSteel>, <ore:plateDenseStainlessSteel>, <ore:ringStainlessSteel>]]);
recipes.addShaped(<fluidtank:blocktank2:1>, [[<ore:ringGold>,<gregtech:meta_plate:41>, <ore:ringGold>], [<gregtech:meta_plate:41>, <gregtech:fluid_pipe_large:41>,<gregtech:meta_plate:41>], [<ore:ringGold>, <gregtech:meta_plate:41>,<ore:ringGold>]]);
recipes.addShaped(<fluidtank:blocktank2>, [[<ore:ringSteel>, <ore:plateBlackSteel>, <ore:ringSteel>], [<ore:plateBlackSteel>, <ore:pipeHugeFluidSteel>, <ore:plateBlackSteel>], [<ore:ringSteel>, <ore:plateBlackSteel>, <ore:ringSteel>]]);
recipes.addShaped(<fluidtank:blocktank1>, [[<ore:ringBronze>, <ore:plateBronze>, <ore:ringBronze>], [<ore:plateBronze>, <ore:pipeHugeFluidBronze>, <ore:plateBronze>], [<ore:ringBronze>, <ore:plateBronze>, <ore:ringBronze>]]);

assembler.recipeBuilder() 
    .inputs(<ore:ringBronze> * 4,<ore:plateBronze> * 4)
    .outputs(<fluidtank:blocktank1>)
	.circuit(4) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:ringSteel> * 4,<ore:plateBlackSteel> * 4)
	.fluidInputs(<liquid:glue>*144)
    .outputs(<fluidtank:blocktank2>)
	.circuit(4) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:ringGold> * 4,<gregtech:meta_plate:41> * 4)
	.fluidInputs(<liquid:plastic>*144)
    .outputs(<fluidtank:blocktank2:1>)
	.circuit(4) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:ringStainlessSteel> * 4,<ore:plateDenseStainlessSteel> * 4)
	.fluidInputs(<liquid:plastic>*144)
    .outputs(<fluidtank:blocktank2:2>)
	.circuit(4) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:ringTitanium> * 4,<ore:plateDenseTitanium> * 4)
	.fluidInputs(<liquid:polytetrafluoroethylene>*288)
    .outputs(<fluidtank:blocktank3>)
	.circuit(4) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:ringTungstenSteel> * 8,<ore:plateDenseTungstenSteel> * 8)
	.fluidInputs(<liquid:polytetrafluoroethylene>*288)
    .outputs(<fluidtank:blocktank3:1>)
	.circuit(4) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_ring:3006> * 12,<ore:plateDoubleNaquadria> * 12)
	.fluidInputs(<liquid:duranium>*144)
    .outputs(<fluidtank:blocktank3:3>)
	.circuit(4) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_8> * 8,<gregtech:meta_ring:128> * 16,<gregtech:meta_plate_double:128>*16,<gregtech:meta_screw:27>*32)
	.fluidInputs(<liquid:duranium>*576)
    .outputs(<fluidtank:blocktank4>)
	.circuit(4) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();