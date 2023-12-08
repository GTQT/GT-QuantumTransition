import mods.gregtech.recipe.RecipeMap;
val chemical_plant = mods.gregtech.recipe.RecipeMap.getByName("chemical_plant");
chemical_plant.recipeBuilder()
    .inputs(<gregtech:meta_dust:32137>*23,<gregtech:meta_dust:18>*8,<gregtech:meta_dust:32141>*4,<gregtech:meta_dust:32147>)
    .fluidInputs(<liquid:silver_tetrafluoroborate>*4000,<liquid:trimethyltin_chloride>*4000)
	.outputs(<gregtech:meta_dust:112>*4,<gregtech:meta_dust:32041>*8,<gregtech:meta_dust:32143>*8,<gregtech:meta_dust:299>*6)
    .fluidOutputs(<liquid:cycloparaphenylene>*1000,<liquid:boron_trifluoride>*4000,<liquid:hydrofluoric_acid>*4000)
    .duration(4000)
    .EUt(122880)
    .buildAndRegister();
	
//二苄基四乙酰六氮杂异纤锌烷 (Dibenzyltetraacetylhexaazaisowurtzitane)
chemical_plant.recipeBuilder()
    .inputs(<gregtech:meta_dust:32158>,<gregtech:meta_dust:32159>)
    .notConsumable(<gregtech:meta_plate:89>)
    .fluidInputs(<liquid:hydrogen>*1000,<liquid:hydrobromic_acid>*100,<liquid:ethylbenzene>*500)
	.outputs(<gregtech:meta_dust:32157>*12)
	.fluidOutputs(<liquid:ethylene_glycol>*1000)
    .duration(3200)
    .EUt(122880)
    .buildAndRegister();

