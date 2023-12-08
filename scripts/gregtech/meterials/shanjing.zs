import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val large_chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");	
chemical_reactor.recipeBuilder() 
	.fluidInputs(<liquid:xishishannijiang>*1000,<liquid:water>*9000)
	.fluidOutputs(<liquid:xishishanrongye>*10000)
	.outputs(<gregtech:meta_dust:32335>)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
	.fluidInputs(<liquid:xishishanrongye>*2000,<liquid:caosuan>*3000)
	.fluidOutputs(<liquid:shanzhuoye>*50)
	.outputs(<gregtech:meta_dust:32358>*5,<gregtech:meta_dust_tiny:32346>*2)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
	.fluidInputs(<liquid:shanzhuoye>*1000,<liquid:hydrofluoric_acid>*2000)
	.fluidOutputs(<liquid:fuhuashanjingfen>*1000)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32358>*5)
	.fluidInputs(<liquid:hydrochloric_acid>*6000)
	.outputs(<gregtech:meta_dust:32360>*8)
	.fluidOutputs(<liquid:carbon_monoxide>*6000)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32360>*2)
	.fluidInputs(<liquid:yuchulixitu>*1000)
	.fluidOutputs(<liquid:xituhuahewu>*3000)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:209>)
	.fluidInputs(<liquid:yuchulixitu>*6000)
	.fluidOutputs(<liquid:xituhuahewu>*3000)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32362>*3)
	.fluidInputs(<liquid:pwlq>*1000)
	.fluidOutputs(<liquid:xitucuiquzhuoye>*1000)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:312>*2)
	.fluidInputs(<liquid:xitucuiquzhuoye>*1000)
	.fluidOutputs(<liquid:daichengdianxitucuiquzhuoye>*3000)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
	.fluidInputs(<liquid:daichengdianxitucuiquzhuoye>*3000,<liquid:sulfuric_acid>*2000)
	.fluidOutputs(<liquid:pwlq>*1000,<liquid:sodium_bisulfate>*2000)
	.outputs(<gregtech:meta_dust:32363>)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
	.inputs(<gregtech:meta_dust:32363>)
	.fluidInputs(<liquid:chlorine>*6000)
	.fluidOutputs(<liquid:hydrochloric_acid>*4000)
	.outputs(<gregtech:meta_dust:32364>)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();

val electric_blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("electric_blast_furnace");
electric_blast_furnace.recipeBuilder() 
	.inputs(<gregtech:meta_dust:32364>,<gregtech:meta_dust:59>*2)
	.outputs(<gregtech:meta_dust:32354>,<gregtech:meta_dust:357>*6)
	.property("temperature", 7500)
    .duration(120)
    .EUt(7800)
    .buildAndRegister();