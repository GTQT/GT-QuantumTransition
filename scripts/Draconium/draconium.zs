import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
//觉醒龙粒、锭、块
recipes.addShapeless(<draconicevolution:nugget:1>, [<ore:nuggetDraconiumAwakened>]);
recipes.addShapeless(<draconicevolution:draconic_ingot>, [<ore:ingotDraconiumAwakened>]);
recipes.addShapeless(<draconicevolution:draconic_block>, [<ore:blockDraconiumAwakened>]);

//移除龙锭熔炉配方
furnace.remove(<draconicevolution:draconium_ingot>);
furnace.remove(<gregtech:meta_ingot:32092>);

//移除龙尘矿物辞典
<ore:dustDraconium>.remove(<draconicevolution:draconium_dust>);

//循环隐藏jei
var jeiItems as IItemStack[] = [
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_dust>,
    <draconicevolution:nugget:0>,
    <draconicevolution:draconium_block>,
    <draconicevolution:draconium_ore:*>
];

for i, item in jeiItems {
    JEI.removeAndHide(item,true);
}

//循环删除配方
var removeItems as IItemStack[] = [
    <draconicevolution:wyvern_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:wyvern_energy_core>,
    <draconicevolution:draconic_energy_core>
];
for i, item in removeItems {
    recipes.remove(item);
}


//龙芯
assembly_line.recipeBuilder()
    .inputs([
        <gregtech:meta_item_1:705> * 2,
        <ore:wireFineEnrichedNaquadahTriniumEuropiumDuranide> * 24,
        <ore:plateDenseDraconium> * 1,
        <ore:boltOsmiridium> * 24,
        <gregtech:meta_item_1:708> * 1
    ])
    .outputs(<draconicevolution:draconic_core>)
    .fluidInputs([<liquid:soldering_alloy> * 864,<liquid:polybenzimidazole> * 144])
    .EUt(131072)
    .duration(500)
    .buildAndRegister();

//双足飞龙核心
assembly_line.recipeBuilder()
    .inputs([
        <ore:frameGtUniverseNeutronium>,
        <draconicevolution:draconic_core> * 2,
        <ore:wireFineIndiumTinBariumTitaniumCuprate>* 64 ,
        <ore:plateDoubleEuropium> * 2,
        <ore:plateDenseDraconium> * 4,
        <gregtech:meta_item_1:708> * 1
    ])
    .outputs(<draconicevolution:wyvern_core>)
    .fluidInputs([<liquid:soldering_alloy> * 1440,<liquid:polybenzimidazole> * 288])
    .EUt(524288)
    .duration(650)
    .buildAndRegister();

//觉醒核心
assembly_line.recipeBuilder()
    .inputs([
        <ore:frameGtUniverseNeutronium>*2,
        <draconicevolution:wyvern_energy_core> * 1,
        <draconicevolution:wyvern_core> * 2,
        <ore:wireFineNaquadria> * 64,
        <ore:wireFineNaquadria> * 64,
        <ore:plateDenseDraconiumAwakened> * 4,
        <ore:plateDenseTritanium> * 4,
        <ore:boltMelodicAlloy> * 48,
        <gregtech:meta_item_1:708> * 4
    ])
    .outputs(<draconicevolution:awakened_core>)
    .fluidInputs([<liquid:soldering_alloy> * 1440,<liquid:polybenzimidazole> * 288,<liquid:naquadria> * 576])
    .EUt(524288)
    .duration(2000)
    .buildAndRegister();

//混沌核心
assembly_line.recipeBuilder()
    .inputs([
        <draconicevolution:awakened_core> * 4,
        <ore:plateDenseNeutronium> * 4,
        <ore:plateDenseDraconiumAwakened> * 16,
        <ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 48,
        <ore:boltDarmstadtium> * 64,
        <ore:boltDarmstadtium> * 64,
        <ore:wireGtOctalYttriumBariumCuprate> * 32,
        <ore:circuitUhv>,
        <ore:circuitUhv>,
        <gregtech:meta_item_1:209>* 2,
        <gregtech:meta_item_1:209>* 2,
        <draconicadditions:chaotic_energy_core> * 2,
    ])
    .outputs(<draconicevolution:chaotic_core>)
    .fluidInputs([<liquid:soldering_alloy> * 2304, <liquid:polybenzimidazole> * 864, <liquid:naquadria> * 1152])
    .EUt(131072)
    .duration(1000)
    .buildAndRegister();

//飞龙能量核心
assembly_line.recipeBuilder()
    .inputs([
        <draconicevolution:draconic_core> * 4,
        <gregtech:meta_item_1:606> * 8,
        <ore:plateDraconium> * 8,
        <ore:plateDuranium> * 16,
        <ore:wireFineNaquadah> * 64,
        <ore:wireFineNaquadah> * 64
    ])
    .outputs(<draconicevolution:wyvern_energy_core> * 2)
    .fluidInputs([
        <liquid:soldering_alloy> * 1152,
        <liquid:star_inside_material> * 64000
    ])
    .EUt(32768)
    .duration(600)
    .buildAndRegister();

//神龙能量核心
assembly_line.recipeBuilder()
    .inputs([
        <ore:frameGtUniverseNeutronium>*16,
        <draconicevolution:wyvern_energy_core> * 2,
        <draconicevolution:wyvern_core> * 2,
        <ore:plateDarmstadtium> * 16,
        <ore:plateDraconiumAwakened> * 4,
        <ore:wireFineEnrichedNaquadahTriniumEuropiumDuranide> * 64
    ])
    .outputs(<draconicevolution:draconic_energy_core> * 1)
    .fluidInputs([
        <liquid:soldering_alloy> * 1152,
        <liquid:star_inside_material> * 64000
    ])
    .EUt(131072)
    .duration(1000)
    .buildAndRegister();

//混沌能量核心
assembly_line.recipeBuilder()
    .inputs([<draconicevolution:draconic_energy_core> * 4,<draconicevolution:chaos_shard>,<gregtech:meta_item_1:581> * 24,<gregtech:meta_item_1:752>,
            <ore:plateTritanium> * 16,<gregtech:meta_item_1:208> * 2,<ore:wireFineUraniumRhodiumDinaquadide> * 64,
            <ore:boltMelodicAlloy> * 32,<ore:boltCrystallineAlloy> * 32])
    .outputs(<draconicadditions:chaotic_energy_core>)
    .fluidInputs([
        <liquid:soldering_alloy> * 1152,
        <liquid:star_inside_material> * 128000
    ])
    .EUt(524288)
    .duration(1200)
    .buildAndRegister();

//零点模块
assembly_line.recipeBuilder()
    .inputs([<gregtech:meta_item_1:750> * 4,<draconicevolution:wyvern_energy_core> * 2,<ore:wireFineUraniumRhodiumDinaquadide> * 64,<ore:wireFineUraniumRhodiumDinaquadide> * 64,
            <ore:wireFineUraniumRhodiumDinaquadide> * 64,<ore:wireFineUraniumRhodiumDinaquadide> * 64,<ore:plateDenseDraconium> * 16])
    .outputs(<gregtech:meta_item_1:752>.withTag({Charge: 2147483647 as long}))
    .fluidInputs([<liquid:soldering_alloy> * 18432,<liquid:sulfuric_acid> * 128000,<liquid:mercury> * 128000])
    .EUt(524288)
    .duration(500)
    .buildAndRegister();
