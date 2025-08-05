//Alchemy炼金学

//Quicksilver水银
mods.gregtech.fluid_solidifier.recipeBuilder()
    .fluidInputs(fluid('mercury') * 144)
    .notConsumable(item('gregtech:meta_item_1', 17))
    .outputs(item('thaumcraft:quicksilver'))
    .duration(100)
    .EUt(16)
    .buildAndRegister()

//Quartz Sliver石英碎片
mods.gregtech.forge_hammer.recipeBuilder()
    .inputs(item('appliedenergistics2:part:140'))
    .outputs(item('thaumcraft:nugget:9') * 2)
    .duration(10)
    .EUt(16)
    .buildAndRegister()

//Blank Label空白标签
crafting.addShaped(item('thaumcraft:label'), [
    [ore('dyeBlack'), item('gregtech:meta_item_1:438'), ore('paper')],
    [ore('paper'), ore('paper'), ore('paper')],
    [null, null, null]
])

mods.gregtech.assembler.recipeBuilder()
    .inputs(ore('paper') * 4)
    .inputs(ore('dyeBlack'))
    .fluidInputs(fluid('glue') * 100)
    .outputs(item('thaumcraft:label') * 2)
    .duration(100)
    .EUt(16)
    .buildAndRegister()

// Void Jar 虚空罐子
mods.thaumcraft.arcane_workbench.removeByOutput(item('thaumcraft:jar_void'))
mods.thaumcraft.arcane_workbench.shapelessBuilder()
    .researchKey('WARDEDJARS')
    .input(item('thaumcraft:jar_normal'))
    .input(ore('plateEnderPearl'))
    .output(item('thaumcraft:jar_void'))
    .vis(5)
    .register()

//Brass Lid Brace黄铜盖箍
crafting.replaceShaped(item('thaumcraft:jar_brace') * 2, [
    [ore('plateBrass'), ore('stickWood'), ore('plateBrass')],
    [ore('stickWood'), ore('toolHammer'), ore('stickWood')],
    [ore('plateBrass'), ore('stickWood'), ore('plateBrass')]
])
mods.gregtech.assembler.recipeBuilder()
    .inputs(ore('plateBrass') * 4)
    .inputs(ore('stickWood') * 4)
    .outputs(item('thaumcraft:jar_brace') * 2)
    .duration(200)
    .EUt(8)
    .buildAndRegister()

//Essentia Filter源质滤管
mods.thaumcraft.arcane_workbench.removeByOutput(item('thaumcraft:filter') * 2)
mods.thaumcraft.arcane_workbench.shapedBuilder()
    .researchKey('BASEALCHEMY')
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

//Morphic Resonator形态谐振器
mods.thaumcraft.arcane_workbench.removeByOutput(item('thaumcraft:morphic_resonator'))
mods.thaumcraft.arcane_workbench.shapedBuilder()
    .researchKey('BASEALCHEMY')
    .row('ABA')
    .row('DCE')
    .row('ABA')
    .key('A', ore('paneGlass'))
    .key('B', ore('plateBrass'))
    .key('C', ore('gemAmethyst'))
    .key('D', ore('toolHammer'))
    .key('E', ore('toolWrench'))
    .output(item('thaumcraft:morphic_resonator'))
    .aspect('ordo')
    .vis(20)
    .register()

//Essentia Tube源质管道
mods.thaumcraft.arcane_workbench.removeByOutput(item('thaumcraft:tube') * 8)
mods.thaumcraft.arcane_workbench.shapedBuilder()
    .researchKey('TUBES')
    .row('ABA')
    .row('CDC')
    .row('AEA')
    .key('A', ore('plateBrass'))
    .key('B', item('thaumcraft:quicksilver'))
    .key('C', ore('paneGlass'))
    .key('D', ore('pipeNormalFluidGold'))
    .key('E', ore('toolHammer'))
    .output(item('thaumcraft:tube') * 8)
    .aspect('aqua')
    .vis(10)
    .register()

//Essentia Buffer源质缓存器
mods.thaumcraft.arcane_workbench.removeByOutput(item('thaumcraft:tube_buffer'))
mods.thaumcraft.arcane_workbench.shapedBuilder()
    .researchKey('TUBES')
    .row('ABA')
    .row('CDC')
    .row('AEA')
    .key('A', ore('plateBrass'))
    .key('B', item('thaumcraft:tube_valve'))
    .key('C', item('thaumcraft:tube'))
    .key('D', ore('gearSmallBrass'))
    .key('E', item('thaumcraft:tube_restrict'))
    .output(item('thaumcraft:tube_buffer'))
    .vis(25)
    .register()

//Alchemical Construct炼金构材
mods.thaumcraft.arcane_workbench.removeByOutput(item('thaumcraft:metal_alchemical'))
mods.thaumcraft.arcane_workbench.shapedBuilder()
    .researchKey('TUBES')
    .row('ABA')
    .row('CDC')
    .row('ABA')
    .key('A', ore('plateDoubleSteel'))
    .key('B', item('thaumcraft:tube_valve'))
    .key('C', item('thaumcraft:tube'))
    .key('D', ore('frameGtBrass'))
    .output(item('thaumcraft:metal_alchemical'))
    .vis(50)
    .register() 

//Auxiliary Slurry Pump附属粘浆泵
mods.thaumcraft.arcane_workbench.removeByOutput(item('thaumcraft:smelter_aux'))
mods.thaumcraft.arcane_workbench.shapedBuilder()
    .researchKey('IMPROVEDSMELTING@2')
    .row('ADA')
    .row('BEB')
    .row('CFC')
    .key('A', item('thaumcraft:plank_greatwood'))
    .key('B', ore('plateSteel'))
    .key('C', ore('plateBrass'))
    .key('D', item('thaumcraft:tube_filter'))
    .key('E', item('thaumcraft:metal_alchemical'))
    .key('F', item('gregtech:meta_item_1', 142))
    .output(item('thaumcraft:smelter_aux'))
    .aspect('aer') .aspect('ignis') .aspect('aqua') .aspect('terra') .aspect('ordo') .aspect('perditio')
    .vis(150)
    .register()
    
//Auxiliary Venting Port辅助排放口
mods.thaumcraft.arcane_workbench.removeByOutput(item('thaumcraft:smelter_vent'))
mods.thaumcraft.arcane_workbench.shapedBuilder()
    .researchKey('IMPROVEDSMELTING2@2')
    .row('ABA')
    .row('CDC')
    .row('ABA')
    .key('A', ore('plateSteel'))
    .key('B', ore('plateBrass'))
    .key('C', item('thaumcraft:filter'))
    .key('D', item('thaumcraft:metal_alchemical'))
    .output(item('thaumcraft:smelter_vent'))
    .aspect('aer', 6)
    .vis(150)
    .register()

//Mnemonic Matrix记忆矩阵
mods.thaumcraft.arcane_workbench.removeByOutput(item('thaumcraft:brain_box'))
mods.thaumcraft.arcane_workbench.shapedBuilder()
    .researchKey('THAUMATORIUM')
    .row('ABA')
    .row('BCB')
    .row('ABA')
    .key('A', ore('plateThaumium'))
    .key('B', ore('gemAmber'))
    .key('C', item('thaumcraft:mind'))
    .output(item('thaumcraft:brain_box'))
    .aspect('terra').aspect('ordo')
    .vis(50)
    .register()

//干掉铋
mods.thaumcraft.crucible.removeByOutput(item('planarartifice:bismuth_ingot'))