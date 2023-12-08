import mods.gregtech.recipe.RecipeMap;
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
chemical_bath.recipeBuilder() 
    .inputs(<contenttweaker:rebuxiu_item> * 1)
    .fluidInputs(<liquid:coolant> * 125)
    .outputs(<gregtech:meta_ingot:323> * 1)
    .fluidOutputs(<liquid:hot_coolant> * 125)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

chemical_bath.recipeBuilder() 
    .inputs(<gregtech:meta_ingot_hot:288> * 1)
    .fluidInputs(<liquid:coolant> * 125)
    .outputs(<gregtech:meta_ingot:288> * 1)
    .fluidOutputs(<liquid:hot_coolant> * 125)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

chemical_bath.recipeBuilder() 
    .inputs(<gregtech:meta_crushed:69>)
    .fluidInputs(<liquid:mercury> * 100)
    .outputs(<gregtech:meta_crushed_purified:69>)
    .duration(600)
    .EUt(16)
    .buildAndRegister();

chemical_bath.recipeBuilder() 
    .inputs(<gregtech:meta_ingot_hot:99> * 1)
    .fluidInputs(<liquid:coolant> * 125)
    .outputs(<gregtech:meta_ingot:99> * 1)
    .fluidOutputs(<liquid:hot_coolant> * 125)
    .duration(400)
    .EUt(16)
    .buildAndRegister();
	
chemical_bath.recipeBuilder() 
    .inputs(<gregtech:meta_dust:449>*11)
    .fluidInputs(<liquid:hydrofluoric_acid> * 4000)
    .outputs(<gregtech:meta_dust:3535>*7)
    .duration(400)
    .EUt(7600)
    .buildAndRegister();

chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_white> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();

chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_orange> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:1>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_magenta> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:2>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_light_blue> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:3>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_yellow> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:4>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_lime> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:5>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_pink> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:6>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_gray> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:7>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_light_gray> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:8>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_cyan> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:9>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_purple> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:10>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_blue> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:11>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_brown> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:12>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_green> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:13>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_red> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:14>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_bath.recipeBuilder() 
    .fluidInputs(<liquid:dye_black> * 144)
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:wool:15>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
chemical_bath.recipeBuilder() 
    .inputs(<ore:stickWood>)
	.fluidInputs(<liquid:creosote>*1000)
	.outputs(<forestry:oak_stick>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	