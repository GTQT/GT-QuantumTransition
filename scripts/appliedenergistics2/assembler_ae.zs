import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:591> * 4,<threng:material> * 4,<ore:circuitIv> * 4,<gregtech:meta_wire_fine:55>*16)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<threng:big_assembler> *2)
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<threng:big_assembler> * 1,<threng:material> * 2,<gregtech:meta_wire_fine:55>*16,<gregtech:meta_plate:99> * 4,<threng:material:13>)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<threng:big_assembler:1> * 1)
    .duration(120)
    .EUt(2048)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:circuitEv>*2,<gregtech:meta_plate:214>*8,<appliedenergistics2:material:22> * 8,<appliedenergistics2:material:8> * 8,<gregtech:meta_dust:339>* 8)
	.fluidInputs(<liquid:polybenzimidazole> * 144)
    .outputs(<appliedenergistics2:material:44> * 8)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:circuitEv>*2,<gregtech:meta_plate:214>*8,<appliedenergistics2:material:22> * 8,<appliedenergistics2:material:8> * 8,<appliedenergistics2:material:1> * 8)
	.fluidInputs(<liquid:polybenzimidazole> * 144)
    .outputs(<appliedenergistics2:material:43> * 8)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:circuitEv>*2,<gregtech:meta_plate:214>*8,<appliedenergistics2:material:22> * 8,<appliedenergistics2:material:8> * 8,<gregtech:meta_dust:339>* 8)
	.fluidInputs(<liquid:polytetrafluoroethylene> * 576)
    .outputs(<appliedenergistics2:material:44> * 8)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ore:circuitEv>*2,<gregtech:meta_plate:214>*8,<appliedenergistics2:material:22> * 8,<appliedenergistics2:material:8> * 8,<appliedenergistics2:material:1> * 8)
	.fluidInputs(<liquid:polytetrafluoroethylene> * 576)
    .outputs(<appliedenergistics2:material:43> * 8)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:113> * 2,<appliedenergistics2:material:43>,<appliedenergistics2:material:12> * 2,<appliedenergistics2:interface> * 2)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<appliedenergistics2:part:260> * 4)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:113> * 2,<appliedenergistics2:material:44>,<appliedenergistics2:material:12> * 2,<appliedenergistics2:interface> * 2)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<appliedenergistics2:part:240> * 4)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:113> * 2,<appliedenergistics2:material:43>,<appliedenergistics2:material:12> * 2,<appliedenergistics2:fluid_interface>* 2)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<appliedenergistics2:part:261> * 4)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:113> * 2,<appliedenergistics2:material:44>,<appliedenergistics2:material:12> * 2,<appliedenergistics2:fluid_interface> * 2)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<appliedenergistics2:part:241> * 4)
    .duration(120)
    .EUt(128)
    .buildAndRegister();	
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:113> * 2,<appliedenergistics2:material:43>,<appliedenergistics2:material:12> * 2,<appliedenergistics2:interface> * 2)
	.fluidInputs(<liquid:polytetrafluoroethylene> * 1440)
    .outputs(<appliedenergistics2:part:260> * 4)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:113> * 2,<appliedenergistics2:material:44>,<appliedenergistics2:material:12> * 2,<appliedenergistics2:interface> * 2)
	.fluidInputs(<liquid:polytetrafluoroethylene> * 1440)
    .outputs(<appliedenergistics2:part:240> * 4)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:113> * 2,<appliedenergistics2:material:43>,<appliedenergistics2:material:12> * 2,<appliedenergistics2:fluid_interface>* 2)
	.fluidInputs(<liquid:polytetrafluoroethylene> * 1440)
    .outputs(<appliedenergistics2:part:261> * 4)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:113> * 2,<appliedenergistics2:material:44>,<appliedenergistics2:material:12> * 2,<appliedenergistics2:fluid_interface> * 2)
	.fluidInputs(<liquid:polytetrafluoroethylene> * 1440)
    .outputs(<appliedenergistics2:part:241> * 4)
    .duration(120)
    .EUt(128)
    .buildAndRegister();		
	
assembler.recipeBuilder() 
    .inputs(<appliedenergistics2:part:240> * 1,<appliedenergistics2:part:260> * 1,<appliedenergistics2:material:12> * 2,<gregtech:meta_plate:113> * 2)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<appliedenergistics2:part:460> * 2)
    .duration(120)
	.circuit(1)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<appliedenergistics2:part:240> * 1,<appliedenergistics2:part:260> * 1,<appliedenergistics2:material:12> * 2,<gregtech:meta_plate:113> * 2)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<appliedenergistics2:part:220> * 2)
    .duration(120)
	.circuit(2)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<appliedenergistics2:part:241> * 1,<appliedenergistics2:part:261> * 1,<appliedenergistics2:material:12> * 2,<gregtech:meta_plate:113> * 2)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<appliedenergistics2:part:221> * 2)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:machine:114>,<appliedenergistics2:material:44> * 4,<appliedenergistics2:material:43> * 4,<gregtech:meta_plate:113> * 16)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<appliedenergistics2:molecular_assembler> * 4)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:527>,<gregtech:meta_plate:113> * 16)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<opencomputers:material:6> * 16)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:526>,<gregtech:meta_plate:1016> * 16)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<opencomputers:material:7> * 16)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<appliedenergistics2:part:16> * 4,<gregtech:meta_plate:113> * 8,<appliedenergistics2:material:23>,<appliedenergistics2:material:43>,<appliedenergistics2:material:44>)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<appliedenergistics2:interface> * 2)
    .duration(120)
	.circuit(20)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:113> * 4,<appliedenergistics2:material:12>*4,<ore:circuitEv> * 1)
	.fluidInputs(<liquid:polybenzimidazole> * 576)
    .outputs(<appliedenergistics2:controller>)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_dust:339>,<ore:blockGlass>)
    .outputs(<appliedenergistics2:quartz_glass>*2)
    .duration(20)
    .EUt(12)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_plate:113>*4,<ore:circuitEv>,<appliedenergistics2:material:12>*4)
    .outputs(<appliedenergistics2:controller>)
    .duration(20)
	.circuit(1)
    .EUt(12)
    .buildAndRegister();