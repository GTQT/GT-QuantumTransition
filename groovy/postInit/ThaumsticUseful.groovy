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

//干掉铋
mods.thaumcraft.crucible.removeByOutput(item('planarartifice:bismuth_ingot'))