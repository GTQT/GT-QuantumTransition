import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidSteel>, <ore:plateDarkSteel>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:plastic> * 288)
	.outputs(<enderio:item_liquid_conduit:1>)
	.duration(100).EUt(120).buildAndRegister();

//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidPolytetrafluoroethylene>, <ore:plateVibrantAlloy>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:plastic> * 288)
	.outputs(<enderio:item_liquid_conduit:2>)
	.duration(100).EUt(120).buildAndRegister();
	

//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidSteel>, <ore:plateDarkSteel>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 144)
	.outputs(<enderio:item_liquid_conduit:1>)
	.duration(100).EUt(480).buildAndRegister();

//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidPolytetrafluoroethylene>, <ore:plateVibrantAlloy>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 144)
	.outputs(<enderio:item_liquid_conduit:2>)
	.duration(100).EUt(480).buildAndRegister();

//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidSteel>, <ore:plateDarkSteel>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_liquid_conduit:1>)
	.duration(100).EUt(1960).buildAndRegister();

//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidPolytetrafluoroethylene>, <ore:plateVibrantAlloy>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_liquid_conduit:2>)
	.duration(100).EUt(1960).buildAndRegister();
	

	
//Energy Conduit
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleGold>, <ore:plateConductiveIron>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 288)
	.outputs(<enderio:item_power_conduit>)
	.duration(100).EUt(120).buildAndRegister();

//Energy Conduit
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleAluminium>, <ore:plateEnergeticAlloy>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 288)
	.outputs(<enderio:item_power_conduit:1>)
	.duration(100).EUt(256).buildAndRegister();

//ME Conduit
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16>, <ore:plateSilicon>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 288)
	.outputs(<enderio:item_me_conduit>)
	.duration(100).EUt(256).buildAndRegister();

//ME Conduit
assembler.recipeBuilder()
    .inputs(<enderio:item_me_conduit> * 4, <ore:plateTitanium>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 288)
	.outputs(<enderio:item_me_conduit:1>)
	.duration(100).EUt(480).buildAndRegister();

//Redstone Conduit
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy>,<ore:plateRedstoneAlloy>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 288)
	.outputs(<enderio:item_redstone_conduit>)
	.duration(100).EUt(64).buildAndRegister();
	
//Endergy Conduit
assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleRedAlloy>, <ore:plateCrudeSteel>])
    .fluidInputs(<liquid:tin> * 144)
	.outputs(<enderio:item_endergy_conduit>)
	.duration(100).EUt(7).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleIron>, <ore:plateIron>])
    .fluidInputs(<liquid:tin> * 144)
	.outputs(<enderio:item_endergy_conduit:1>)
	.duration(100).EUt(16).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleTin>, <ore:plateAluminium>])
    .fluidInputs(<liquid:soldering_alloy> * 144)
	.outputs(<enderio:item_endergy_conduit:2>)
	.duration(100).EUt(30).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleNickel>, <ore:plateGold>])
    .fluidInputs(<liquid:soldering_alloy> * 144)
	.outputs(<enderio:item_endergy_conduit:3>)
	.duration(100).EUt(64).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleAnnealedCopper>, <ore:plateCopper>])
    .fluidInputs(<liquid:soldering_alloy> * 144)
	.outputs(<enderio:item_endergy_conduit:4>)
	.duration(100).EUt(96).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleElectrum>, <ore:plateSilver>])
    .fluidInputs(<liquid:plastic> * 144)
	.outputs(<enderio:item_endergy_conduit:5>)
	.duration(100).EUt(160).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleBlackSteel>, <ore:plateElectrum>])
    .fluidInputs(<liquid:plastic> * 144)
	.outputs(<enderio:item_endergy_conduit:6>)
	.duration(100).EUt(192).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleTungstenSteel>, <ore:plateEnergeticSilver>])
    .fluidInputs(<liquid:epoxy> * 144)
	.outputs(<enderio:item_endergy_conduit:7>)
	.duration(100).EUt(320).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleHssg>, <ore:plateCrystallineAlloy>])
    .fluidInputs(<liquid:epoxy> * 144)
	.outputs(<enderio:item_endergy_conduit:8>)
	.duration(100).EUt(960).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleNiobiumTitanium>, <ore:plateCrystallinePinkSlime>])
    .fluidInputs(<liquid:polytetrafluoroethylene> * 144)
	.outputs(<enderio:item_endergy_conduit:9>)
	.duration(100).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleNaquadahAlloy>, <ore:plateMelodicAlloy>])
    .fluidInputs(<liquid:polytetrafluoroethylene> * 144)
	.outputs(<enderio:item_endergy_conduit:10>)
	.duration(100).EUt(7680).buildAndRegister();
	
	
	
//Item Conduit
assembler.recipeBuilder()
    .inputs([<ore:pipeSmallItemElectrum>, <ore:platePulsatingIron>,<enderio:item_material:4>*2])
    .fluidInputs(<liquid:plastic> * 288)
	.outputs(<enderio:item_item_conduit>)
	.duration(100).EUt(120).buildAndRegister();
	
//Item Conduit
assembler.recipeBuilder()
    .inputs([<ore:pipeSmallItemElectrum>, <ore:platePulsatingIron>,<enderio:item_material:4>*2])
    .fluidInputs(<liquid:polytetrafluoroethylene> * 144)
	.outputs(<enderio:item_item_conduit>)
	.duration(100).EUt(120).buildAndRegister();
	
//Item Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallItemElectrum>,<ore:platePulsatingIron>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:plastic> * 288)
	.outputs(<enderio:item_item_conduit>)
	.duration(100).EUt(120).buildAndRegister();
	
//Item Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallItemElectrum>,<ore:platePulsatingIron>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polybenzimidazole> * 144)
	.outputs(<enderio:item_item_conduit>)
	.duration(100).EUt(256).buildAndRegister();

//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidBronze>, <ore:plateElectricalSteel>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:plastic> * 144)
	.outputs(<enderio:item_liquid_conduit>)
	.duration(100).EUt(120).buildAndRegister();
	
//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidBronze>, <ore:plateElectricalSteel>,<gregtech:meta_item_1:501>*4)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_liquid_conduit>)
	.duration(100).EUt(256).buildAndRegister();

//Fluid Conduit
assembler.recipeBuilder()
    .inputs([<ore:pipeSmallFluidBronze>, <ore:plateElectricalSteel>,<enderio:item_material:4>*2])
    .fluidInputs(<liquid:plastic> * 144)
	.outputs(<enderio:item_liquid_conduit>)
	.duration(100).EUt(120).buildAndRegister();
	
//Fluid Conduit
assembler.recipeBuilder()
    .inputs([<ore:pipeSmallFluidBronze>, <ore:plateElectricalSteel>,<enderio:item_material:4>*2])
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_liquid_conduit>)
	.duration(100).EUt(120).buildAndRegister();


//Energy Conduit
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleGold>, <ore:plateConductiveIron>)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_power_conduit>)
	.duration(100).EUt(256).buildAndRegister();

//Energy Conduit
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleAluminium>, <ore:plateEnergeticAlloy>)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_power_conduit:1>)
	.duration(100).EUt(256).buildAndRegister();

//ME Conduit
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16>, <ore:plateSilicon>)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_me_conduit>)
	.duration(100).EUt(256).buildAndRegister();

//ME Conduit
assembler.recipeBuilder()
    .inputs(<enderio:item_me_conduit> * 4, <ore:plateTitanium>)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_me_conduit:1>)
	.duration(100).EUt(512).buildAndRegister();
	
//Redstone Conduit
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy>, <ore:plateRedstoneAlloy>)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_redstone_conduit>)
	.duration(100).EUt(128).buildAndRegister();