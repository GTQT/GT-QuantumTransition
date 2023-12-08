mods.gregtech.gas_turbine.recipeBuilder()
    .fluidInputs(liquid('eng'))
    .duration(1)
    .EUt(8192)
    .buildAndRegister()
	
mods.gregtech.semi_fluid_generator.recipeBuilder()
    .fluidInputs(liquid('eng'))
    .duration(1)
    .EUt(8192)
    .buildAndRegister()
	
mods.gregtech.combustion_generator.recipeBuilder()
    .fluidInputs(liquid('eng'))
    .duration(1)
    .EUt(8192)
    .buildAndRegister()
	
	
mods.gregtech.gas_turbine.recipeBuilder()
    .fluidInputs(liquid('biogas')*8)
    .duration(6)
    .EUt(32)
    .buildAndRegister();
	
mods.gregtech.semi_fluid_generator.recipeBuilder()
    .fluidInputs(liquid('lava')*4)
    .duration(1)
    .EUt(32)
    .buildAndRegister();
	
mods.gregtech.combustion_generator.recipeBuilder()
     .fluidInputs(liquid('gasoline_premium')*1)
    .duration(100)
    .EUt(32)
    .buildAndRegister();

mods.gregtech.gas_turbine.recipeBuilder()
    .fluidInputs(liquid('hydrogen')*16)
    .duration(2)
    .EUt(32)
    .buildAndRegister();
	
mods.gregtech.combustion_generator.removeByInput(32, null, [fluid('naphtha')])
mods.gregtech.combustion_generator.recipeBuilder()
    .fluidInputs(liquid('naphtha')*16)
    .duration(2)
    .EUt(32)
    .buildAndRegister();
	
mods.gregtech.gas_turbine.removeByInput(32, null, [fluid('benzene')])
