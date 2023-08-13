import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val chemical_plant = mods.gregtech.recipe.RecipeMap.getByName("chemical_plant");
val lager_chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("lager_chemical_reactor");
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:83>*2)
    .fluidInputs(<liquid:chloroplatinic_acid>*1000)
	.outputs(<gregtech:meta_dust:32133>*7)
    .fluidOutputs(<liquid:diluted_hydrochloric_acid>*2000)
    .duration(4500)
    .EUt(8192)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:69>*1)
    .fluidInputs(<liquid:chlorine>*2000)
	.outputs(<gregtech:meta_dust:32134>*3)
    .duration(5000)
    .EUt(8192)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32134>*2)
    .fluidInputs(<liquid:phenol>*6000,<liquid:phosphorus_trichloride>*2000)
	.outputs(<gregtech:meta_dust:32135>*16)
    .fluidOutputs(<liquid:hydrochloric_acid>*6000,<liquid:oxygen>*6000)
    .duration(2400)
    .EUt(8192)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32135>*2)
    .fluidInputs(<liquid:butadiene>*2000)
	.outputs(<gregtech:meta_dust:32136>*1)
    .duration(4000)
    .EUt(8192)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32133>,<gregtech:meta_dust:32136>)
	.outputs(<gregtech:meta_dust:32137>,<gregtech:meta_dust:32138>*2)
    .duration(3200)
    .EUt(8192)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:83>)
    .fluidInputs(<liquid:chlorine>*1000)
	.outputs(<gregtech:meta_dust:32138>)
    .duration(1400)
    .EUt(8192)
    .buildAndRegister();
	

chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32139>*22,<gregtech:meta_dust:32041>*2)
    .fluidInputs(<liquid:sulfuric_acid>*1000,<liquid:ammonium_sulfate>*1000)
	.outputs(<gregtech:meta_dust:32141>*22)
    .fluidOutputs(<liquid:hydrogen>*4000,<liquid:ammonium_persulfate>*1000)
    .duration(3200)
    .EUt(32768)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:100>)
    .fluidInputs(<liquid:chlorine>*1000)
	.outputs(<gregtech:meta_dust:32143>)
    .duration(1000)
    .EUt(32768)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:100>*2,<gregtech:meta_dust:377>)
    .fluidInputs(<liquid:water>*1000)
	.outputs(<gregtech:meta_dust:32144>)
    .duration(1600)
    .EUt(32768)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32144>*3)
    .fluidInputs(<liquid:boron_trifluoride>*2000)
	.outputs(<gregtech:meta_dust:32145>*6,<gregtech:meta_dust:3551>)
    .duration(2400)
    .EUt(32768)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:3627>,<gregtech:meta_dust:32041>)
    .fluidInputs(<liquid:stannic_chloride>*4000,<liquid:oxygen>*1000,<liquid:methane>*3000)
	.outputs(<gregtech:meta_dust:32140>*22)
    .fluidOutputs(<liquid:trimethyltin_chloride>*1000,<liquid:diluted_hydrochloric_acid>*2000)
    .duration(2500)
    .EUt(131072)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:acetone>*1000,<liquid:formaldehyde>*2000,<liquid:benzene>*2000)
    .fluidOutputs(<liquid:dibenzylideneacetone>*1000,<liquid:water>*2000)
    .duration(3000)
    .EUt(16)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:77>)
    .fluidInputs(<liquid:dibenzylideneacetone>*3000)
	.outputs(<gregtech:meta_dust:32147>*16)
    .fluidOutputs(<liquid:chlorine>*3000)
    .duration(2000)
    .EUt(131072)
    .buildAndRegister();

