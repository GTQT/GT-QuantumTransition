import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val lager_chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("lager_chemical_reactor");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val chemical_plant = mods.gregtech.recipe.RecipeMap.getByName("chemical_plant");
//硅胶基质Silica Gel Base
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:356>*4,<gregtech:meta_dust:377>*3) 
	.fluidInputs(<liquid:hydrochloric_acid>*1000,<liquid:steam>*1000)
	.fluidOutputs(<liquid:silica_gel_base>*2000)
    .duration(120)
    .EUt(7800)
	.circuit(5) 
    .buildAndRegister();
	
//硅胶Silica Gel
centrifuge.recipeBuilder() 
	.fluidInputs(<liquid:silica_gel_base>*1000)
	.outputs(<gregtech:meta_dust:32151>)
    .duration(120)
    .EUt(7800)
	.circuit(5) 
    .buildAndRegister();

//六硝基六轴异伍兹烷Hexanitrohexaaxaisowurtzitane
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32151>,<gregtech:meta_dust:32153>)
    .fluidInputs(<liquid:ethylenediamine>*1000)
	.outputs(<gregtech:meta_dust:32150>*3)
    .duration(4500)
    .EUt(7800)
    .buildAndRegister();
	
//粗制六硝基六氧杂纤锌烷 (Crude Hexanitrohexaaxaisowurtzitane)
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32154>,<gregtech:meta_dust:32155>*6)
    .fluidInputs(<liquid:water>*4000)
	.outputs(<gregtech:meta_dust:32153>)
    .duration(600)
    .EUt(7800)
    .buildAndRegister();
	
//四氟硝铵 (Nitronium Tetrafluoroborate)
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:boron_trifluoride>*1000,<liquid:hydrofluoric_acid>*1000,<liquid:nitric_acid>*1000)
	.outputs(<gregtech:meta_dust:32155>)
	.fluidOutputs(<liquid:water>*1000)
    .duration(800)
    .EUt(7800)
    .buildAndRegister();
	
//四乙酰二硝基六氮杂异戊二烯 (Tetraacetyldinitrosohexaazaisowurtzitane)
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32156>,<gregtech:meta_dust:32157>)
    .fluidInputs(<liquid:water>*4000)
	.outputs(<gregtech:meta_dust:32154>)
    .duration(600)
    .EUt(7800)
    .buildAndRegister();
	
//四氟硼酸亚硝铵 (Nitrosonium Tetrafluoroborate)
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:boron_trifluoride>*2000,<liquid:hydrofluoric_acid>*2000,<liquid:nitrogen_dioxide>*4000)
	.outputs(<gregtech:meta_dust:32156>)
	.fluidOutputs(<liquid:nitric_acid>*1000)
    .duration(800)
    .EUt(7800)
    .buildAndRegister();
	
//琥珀酰亚胺醋酸酯 (Succinimidyl Acetate)
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:15035>)
    .fluidInputs(<liquid:ethylene_glycol>*1000,<liquid:tetrahydrofuran>*1000)
	.outputs(<gregtech:meta_dust:32158>)
	.fluidOutputs(<liquid:acetic_acid>*2000)
    .duration(600)
    .EUt(7800)
    .buildAndRegister();
	
//六苄基六氮杂异伍兹烷 (Hexabenzylhexaazaisowurtzitane)
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:15035>)
    .fluidInputs(<liquid:ethylenediamine>*1000,<liquid:butyraldehyde>*1000)
	.outputs(<gregtech:meta_dust:32159>*2)
    .duration(600)
    .EUt(7800)
    .buildAndRegister();
	
