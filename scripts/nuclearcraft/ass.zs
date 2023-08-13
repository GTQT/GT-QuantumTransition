import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:3020>*8,<gregtech:meta_plate:55>*2,<ore:circuitIv>,<gregtech:cable_single:115>*2)
	.fluidInputs(<liquid:polytetrafluoroethylene>*144)
    .outputs(<nuclearcraft:part:10>)
    .duration(50)
    .EUt(512)
	.circuit(10)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:323>*4,<gregtech:meta_plate:55>*4)
	.fluidInputs(<liquid:polytetrafluoroethylene>*144)
    .outputs(<nuclearcraft:part>)
    .duration(50)
    .EUt(512)
	.circuit(10)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:2516>*4,<gregtech:meta_plate:55>*4)
	.fluidInputs(<liquid:polytetrafluoroethylene>*144)
    .outputs(<nuclearcraft:part:1>)
    .duration(50)
    .EUt(512)
	.circuit(10)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:116>*4,<gregtech:meta_plate:55>*4)
	.fluidInputs(<liquid:polytetrafluoroethylene>*576)
    .outputs(<nuclearcraft:part:2>)
    .duration(50)
    .EUt(512)
	.circuit(10)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:3000>*4,<gregtech:meta_plate:55>*4)
	.fluidInputs(<liquid:polytetrafluoroethylene>*576)
    .outputs(<nuclearcraft:part:3>)
    .duration(50)
    .EUt(512)
	.circuit(10)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_188:12>*4,<gregtech:meta_plate:3020>*4)
	.fluidInputs(<liquid:polytetrafluoroethylene>*576)
    .outputs(<nuclearcraft:part:12>)
    .duration(50)
    .EUt(512)
	.circuit(10)
    .buildAndRegister();