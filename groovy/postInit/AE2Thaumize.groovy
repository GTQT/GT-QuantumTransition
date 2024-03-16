//AE2 物品全面注魔化

//石英玻璃
crafting.removeByOutput(item('appliedenergistics2:quartz_glass') * 4)
mods.gregtech.electric_blast_furnace.recipeBuilder()
    .inputs(ore('blockGlass') * 4)
    .inputs(metaitem('dustCertusQuartz') * 1)
    .outputs(item('appliedenergistics2:quartz_glass') * 8)
    .duration(100)
    .property("temperature", 1800)
    .EUt(120)
    .buildAndRegister()
mods.gregtech.electric_blast_furnace.recipeBuilder()
    .inputs(ore('blockGlass') * 4)
    .inputs(metaitem('dustNetherQuartz') * 1)
    .outputs(item('appliedenergistics2:quartz_glass') * 8)
    .duration(100)
    .property("temperature", 1800)
    .EUt(120)
    .buildAndRegister()

//聚能石英玻璃
crafting.removeByOutput(item('appliedenergistics2:quartz_vibrant_glass'))
mods.gregtech.electric_blast_furnace.recipeBuilder()
    .inputs(item('appliedenergistics2:quartz_glass') * 1)
    .inputs(ore('dustFluix') * 2)
    .outputs(item('appliedenergistics2:quartz_vibrant_glass') * 1)
    .duration(100)
    .property("temperature", 1800)
    .EUt(120)
    .buildAndRegister()

//奥术工作台破坏核心
mods.thaumcraft.arcane_workbench.recipeBuilder()
    .row(' A ')
    .row('BCB')
    .row(' D ')
    .key('A', ore('toolHammer'))
    .key('B', ore('pipeNormalFluidGold'))
    .key('C', item('thaumcraft:slab_silverwood'))
    .key('D', ore('toolWrench'))
    .output(item('thaumcraft:filter') * 2)
    .aspect('aqua')
    .vis(10)
    .register()

//注魔me输入总线
mods.thaumcraft.infusion_crafting.recipeBuilder()