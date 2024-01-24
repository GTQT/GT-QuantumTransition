// 砷化镓粉 * 2
mods.gregtech.mixer.removeByInput(7, [metaitem('dustGallium'), metaitem('dustArsenic'), metaitem('circuit.integrated').withNbt(["Configuration": 1])], null)
mods.gregtech.electric_blast_furnace.recipeBuilder()
    .inputs(metaitem('dustArsenic'),metaitem('dustGallium'))
    .outputs(metaitem('dustGalliumArsenide')*2)
	.EUt(120)
	.property("temperature", 1600)
    .duration(1200) 
    .buildAndRegister()
	