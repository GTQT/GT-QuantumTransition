//Essentia Filter源质滤管
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("essentia_filter", "BASEALCHEMY", 10,
    [<aspect:aqua>], <thaumcraft:filter> * 2, [
    [null, <ore:toolHammer>, null],
    [<ore:pipeNormalFluidGold>, <thaumcraft:slab_silverwood>, <ore:pipeNormalFluidGold>],
    [null, <ore:toolWrench>, null]]);

/*
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
*/

//Morphic Resonator形态谐振器
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:morphic_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("morphic_resonator", "FIRSTSTEPS@2", 20,
    [<aspect:ordo>], <thaumcraft:morphic_resonator>, [
    [<ore:paneGlass>, <ore:plateBrass>, <ore:paneGlass>],
    [<ore:toolHammer>, <ore:gemAmethyst>, <ore:toolWrench>],
    [<ore:paneGlass>, <ore:plateGold>, <ore:paneGlass>]]);

/*
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
*/

//Essentia Tube源质管道
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube", "BASEALCHEMY", 20,
    [<aspect:aqua>], <thaumcraft:tube> * 8, [
    [<ore:plateBrass>, <thaumcraft:quicksilver>, <ore:plateBrass>],
    [<ore:paneGlass>, <ore:pipeNormalFluidGold>, <ore:paneGlass>],
    [<ore:plateBrass>, <ore:toolHammer>, <ore:plateBrass>]]);

/*
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
*/