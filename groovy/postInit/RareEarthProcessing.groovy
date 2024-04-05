// 铈粉 * 1
mods.gregtech.electrolyzer.removeByInput(30, [metaitem('dustCeriumOxide') * 3], null)
// 稀土 * 1
mods.gregtech.electrolyzer.removeByInput(30, [metaitem('dustMonazite') * 2], null)
// 气态氧 * 2000
mods.gregtech.electrolyzer.removeByInput(30, [metaitem('dustYanghuaha') * 3], null)
mods.gregtech.centrifuge.removeByInput(20, [metaitem('dustRareEarth')], null)

mods.gregtech.chemical_bath.recipeBuilder()
    .inputs(ore('crushedNickel'))
	.outputs(item('gregtech:meta_crushed_purified', 69))
	.fluidInputs(fluid('mercury')*100)
    .duration(200) 
	.EUt(30)
    .buildAndRegister()
	