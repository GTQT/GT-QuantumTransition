import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val fluid_heater = mods.gregtech.recipe.RecipeMap.getByName("fluid_heater");
val large_chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
mixer.recipeBuilder() 
	.inputs(<gregtech:meta_dust:77>,<gregtech:meta_dust:18>)
	.outputs(<gregtech:meta_dust:32368>)
	.fluidInputs(<liquid:formaldehyde>*1000,<liquid:hydrochloric_acid>*1000)
    .duration(1960)
    .EUt(7800)
    .buildAndRegister();

//柴隆
large_chemical_reactor.recipeBuilder() 
    .notConsumable(<gregtech:meta_dust:32369>)       
    .inputs(<gregtech:meta_dust:32370>*16)
    .fluidInputs(<liquid:dinitrodipropanyloxybenzene>*1000)
    .outputs(<gregtech:meta_dust:32252>*1) 
	.fluidOutputs(<liquid:oxygen>*6000)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();
	
//对苯二甲醛
large_chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:erxiujiaben>*1000,<liquid:sulfuric_acid>*1000)
    .outputs(<gregtech:meta_dust:32370>*16) 
	.fluidOutputs(<liquid:bromine>*2000,<liquid:hydrogen_sulfide>*1000,<liquid:hydrogen_peroxide>*1000)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();
	
//二溴甲苯
large_chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:oxygen>*1000,<liquid:bromine>*2000,<liquid:para_xylene>*1000)
	.fluidOutputs(<liquid:erxiujiaben>*1000,<liquid:water>*1000)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();

//二硝基二丙氧基苯
large_chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32372>*3)
    .fluidInputs(<liquid:nitric_acid>*2000,<liquid:acetic_anhydride>*1000,<liquid:resorcinol>*1000,<liquid:propene>*1000,<liquid:lvbingwan>*1000)
	.outputs(<gregtech:meta_dust:312>)
	.fluidOutputs(<liquid:dinitrodipropanyloxybenzene>*1000,<liquid:water>*2000,<liquid:acetic_acid>,<liquid:yisuanna>)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();
	
//lvbingwan
mixer.recipeBuilder() 
    .fluidInputs(<liquid:hydrochloric_acid>*1000,<liquid:propene>*1000)
	.fluidOutputs(<liquid:lvbingwan>*1000)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:101>*2)
	.circuit(1)
    .fluidInputs(<liquid:oxygen>*1000)
	.outputs(<gregtech:meta_dust:32372>*3)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();
	
//间苯二酚
large_chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:benzene>*1000,<liquid:propene>*1000,<liquid:oxygen>*3000)
	.fluidOutputs(<liquid:resorcinol>*1000,<liquid:acetone>*1000,<liquid:hydroquinone>*1000)
    .duration(1200)
    .EUt(1960)
	.circuit(20)
    .buildAndRegister();
	
//乙酸酐
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:acetic_acid>*1000,<liquid:ethenone>*1000)
	.fluidOutputs(<liquid:acetic_anhydride>*1000)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();
	
fluid_heater.recipeBuilder() 
    .fluidInputs(<liquid:acetone>*1000)
	.fluidOutputs(<liquid:ethenone>*1000)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();
	
val electric_blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("electric_blast_furnace");
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32252> * 1)
    .outputs(<gregtech:meta_dust:32251> * 1) 
	.fluidOutputs(<liquid:propane>*2000)
    .property("temperature", 7500)
    .duration(1200)
    .EUt(1960)
    .buildAndRegister();