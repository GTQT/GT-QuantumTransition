/*
点子备忘录
1、铝粉→铝锭 高热催化剂，不消耗，让铝粉480eu/t+坎塔尔线圈就可以烧铝锭
2、三种维护仓 注魔
3、建筑之杖 注魔
*/

//自动维护仓
mods.thaumcraft.infusion_crafting.recipeBuilder()
    .mainInput(item('gregtech:machine', 987)) //mv机身
    .output(item('gregtech:machine', 1656))
    .aspect('instrumentum', 128)
    .aspect('cognitio', 32)
    .input(ore('ingotSyrmorite'))
    .input(ore('ingotVoidMetal'))
    .input(item('thaumcraft:morphic_resonator'))
    .input(item('gregtech:machine', 1654)) //两个维护仓
    .input(item('gregtech:machine', 1654))
    .instability(4)
    .register()

//可配置维护仓
mods.thaumcraft.infusion_crafting.recipeBuilder()
    .mainInput(item('gregtech:machine', 987)) 
    .output(item('gregtech:machine', 1656))
    .aspect('instrumentum', 64)
    .aspect('cognitio', 16)
    .input(ore('ingotSyrmorite'))
    .input(item('thaumcraft:vis_resonator'))
    .input(item('gregtech:machine', 1654)) 
    .input(item('gregtech:machine', 1654))
    .instability(2)
    .register()

//自动过滤维护仓
mods.thaumcraft.infusion_crafting.recipeBuilder()
    .mainInput(item('gtqtcore:stepper', 14)) //自净过滤器V
    .output(item('gregtech:machine', 1401))
    .aspect('instrumentum', 256)
    .aspect('cognitio', 64)
    .input(ore('ingotSyrmorite'))
    .input(ore('ingotVoidMetal'))
    .input(item('thaumcraft:vis_resonator'))
    .input(item('thaumcraft:morphic_resonator'))
    .input(item('gregtech:machine', 1654)) //两个维护仓
    .input(item('gregtech:machine', 1654))
    .instability(8)
    .register()

//不毁手杖
mods.thaumcraft.infusion_crafting.recipeBuilder()
    .mainInput(item('betterbuilderswands:wanddiamond'))
    .output(item('betterbuilderswands:wandunbreakable', 12))
    .aspect('instrumentum', 128)
    .aspect('ordo', 64)
    .aspect('spatio', 32)
    .input(ore('ingotVoidMetal'))
    .input(ore('ingotVoidMetal'))
    .input(ore('stickLongThaumium'))
    .input(ore('screwThaumium'))
    .input(item('thaumcraft:vis_resonator'))
    .input(item('thaumcraft:morphic_resonator'))
    .instability(2)
    .register()

//末影蓄水槽、末影箱子
crafting.removeByOutput(item('enderstorage:ender_storage'))
crafting.removeByOutput(item('enderstorage:ender_storage', 1))
mods.thaumcraft.arcane_workbench.shapedBuilder()
    .row('EAE')
    .row('BCD')
    .row('EAE')
    .key('A', ore('chest'))
    .key('B', item('gregtech:meta_item_1', 233))
    .key('C', ore('gemEnderEye'))
    .key('D', item('gregtech:meta_item_1', 218))
    .key('E', ore('plateThaumium'))
    .output(item('enderstorage:ender_storage') * 2)
    .aspect('aer', 2).aspect('perditio', 2)
    .vis(150)
    .register()
mods.thaumcraft.arcane_workbench.shapedBuilder()
    .row('EAE')
    .row('BCD')
    .row('EAE')
    .key('A', item('gregtech:machine', 1612)) //钢桶
    .key('B', item('gregtech:meta_item_1', 233))
    .key('C', ore('gemEnderEye'))
    .key('D', item('gregtech:meta_item_1', 218))
    .key('E', ore('plateThaumium'))
    .output(item('enderstorage:ender_storage', 1) * 2)
    .aspect('aer', 2).aspect('perditio', 2)
    .vis(150)
    .register()