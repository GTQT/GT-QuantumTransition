import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
//Item Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallItemElectrum>, <ore:platePulsatingIron>)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_item_conduit>)
	.duration(100).EUt(256).buildAndRegister();

//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidBronze>, <ore:plateElectricalSteel>)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_liquid_conduit>)
	.duration(100).EUt(256).buildAndRegister();

//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidSteel>, <ore:plateDarkSteel>)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_liquid_conduit:1>)
	.duration(100).EUt(256).buildAndRegister();

//Fluid Conduit
assembler.recipeBuilder()
    .inputs(<ore:pipeSmallFluidPolytetrafluoroethylene>, <ore:plateVibrantAlloy>)
    .fluidInputs(<liquid:polybenzimidazole> * 72)
	.outputs(<enderio:item_liquid_conduit:2>)
	.duration(100).EUt(512).buildAndRegister();

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