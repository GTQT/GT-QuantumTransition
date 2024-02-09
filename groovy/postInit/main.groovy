mods.jei.removeAndHide(item('gregtech:machine', 1005))
mods.jei.removeAndHide(item('gregtech:machine', 1004))
mods.jei.removeAndHide(item('gregtech:machine', 1002))
mods.jei.removeAndHide(item('gregtech:machine', 1009))

mods.jei.removeAndHide(item('gregtech:machine', 260))
mods.jei.removeAndHide(item('gregtech:machine', 261))
mods.jei.removeAndHide(item('gregtech:machine', 262))
mods.jei.removeAndHide(item('gregtech:machine', 263))
mods.jei.removeAndHide(item('gregtech:machine', 264))
mods.jei.removeAndHide(item('gregtech:machine', 265))
mods.jei.removeAndHide(item('gregtech:machine', 266))
mods.jei.removeAndHide(item('gregtech:machine', 267))
mods.jei.removeAndHide(item('gregtech:machine', 268))
mods.jei.removeAndHide(item('gregtech:machine', 269))
mods.jei.removeAndHide(item('gregtech:machine', 270))
mods.jei.removeAndHide(item('gregtech:machine', 271))
mods.jei.removeAndHide(item('gregtech:machine', 272))
/*
mods.jei.removeAndHide(item('gregtech:machine', 335))
mods.jei.removeAndHide(item('gregtech:machine', 336))
mods.jei.removeAndHide(item('gregtech:machine', 337))
mods.jei.removeAndHide(item('gregtech:machine', 338))
mods.jei.removeAndHide(item('gregtech:machine', 339))
mods.jei.removeAndHide(item('gregtech:machine', 340))
mods.jei.removeAndHide(item('gregtech:machine', 341))
mods.jei.removeAndHide(item('gregtech:machine', 342))
mods.jei.removeAndHide(item('gregtech:machine', 343))
mods.jei.removeAndHide(item('gregtech:machine', 344))
mods.jei.removeAndHide(item('gregtech:machine', 345))
mods.jei.removeAndHide(item('gregtech:machine', 346))
mods.jei.removeAndHide(item('gregtech:machine', 347))
*/
// 白铜线圈方块 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('wireGtDoubleCupronickel') * 8, metaitem('foilBronze') * 8], [fluid('tin_alloy') * 144])
// 坎塔尔合金线圈方块 * 1
mods.gregtech.assembler.removeByInput(120, [metaitem('wireGtDoubleKanthal') * 8, metaitem('foilAluminium') * 8], [fluid('copper') * 144])
// 镍铬合金线圈方块 * 1
mods.gregtech.assembler.removeByInput(480, [metaitem('wireGtDoubleNichrome') * 8, metaitem('foilStainlessSteel') * 8], [fluid('aluminium') * 144])
// 钌钨钼合金线圈方块 * 1
mods.gregtech.assembler.removeByInput(1920, [metaitem('wireGtDoubleRtmAlloy') * 8, metaitem('foilVanadiumSteel') * 8], [fluid('nichrome') * 144])
// 高速钢-G线圈方块 * 1
mods.gregtech.assembler.removeByInput(7680, [metaitem('wireGtDoubleHssg') * 8, metaitem('foilTungstenCarbide') * 8], [fluid('tungsten') * 144])
// 硅岩线圈方块 * 1
mods.gregtech.assembler.removeByInput(30720, [metaitem('wireGtDoubleNaquadah') * 8, metaitem('foilOsmium') * 8], [fluid('tungsten_steel') * 144])
// 凯金线圈方块 * 1
mods.gregtech.assembler.removeByInput(122880, [metaitem('wireGtDoubleTrinium') * 8, metaitem('foilNaquadahEnriched') * 8], [fluid('naquadah') * 144])
// 三钛合金线圈方块 * 1
mods.gregtech.assembler.removeByInput(491520, [metaitem('wireGtDoubleTritanium') * 8, metaitem('foilNaquadria') * 8], [fluid('trinium') * 144])
// 铝锭 * 1
mods.gregtech.electric_blast_furnace.removeByInput(120, [metaitem('dustAluminium'), metaitem('circuit.integrated').withNbt(["Configuration": 1])], null)
// 铝锭 * 1
mods.gregtech.electric_blast_furnace.removeByInput(120, [metaitem('dustAluminium'), metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('nitrogen') * 1000])
// §7LV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin') * 3, metaitem('stickSteel') * 2, metaitem('electric.motor.lv') * 2, metaitem('electric.piston.lv'), metaitem('circuit.electronic')], null)
// §bMV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleCopper') * 3, metaitem('stickAluminium') * 2, metaitem('electric.motor.mv') * 2, metaitem('electric.piston.mv'), metaitem('circuit.good_electronic')], null)
// §6HV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleGold') * 3, metaitem('stickStainlessSteel') * 2, metaitem('electric.motor.hv') * 2, metaitem('electric.piston.hv'), metaitem('circuit.advanced_integrated')], null)
// §5EV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleAluminium') * 3, metaitem('stickTitanium') * 2, metaitem('electric.motor.ev') * 2, metaitem('electric.piston.ev'), metaitem('circuit.workstation')], null)
// 环氧树脂电路基板 * 1
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('plateEpoxy'), metaitem('foilGold') * 8], [fluid('sulfuric_acid') * 500])
// 环氧树脂电路基板 * 1
mods.gregtech.large_chemical_reactor.removeByInput(30, [metaitem('plateEpoxy'), metaitem('foilGold') * 8], [fluid('sulfuric_acid') * 500])
// 塑料电路基板 * 1
mods.gregtech.chemical_reactor.removeByInput(10, [metaitem('platePlastic'), metaitem('foilCopper') * 4], [fluid('sulfuric_acid') * 250])
// 塑料电路基板 * 2
mods.gregtech.chemical_reactor.removeByInput(10, [metaitem('platePolyvinylChloride'), metaitem('foilCopper') * 4], [fluid('sulfuric_acid') * 250])
// 塑料电路基板 * 4
mods.gregtech.chemical_reactor.removeByInput(10, [metaitem('platePolytetrafluoroethylene'), metaitem('foilCopper') * 4], [fluid('sulfuric_acid') * 250])
// 塑料电路基板 * 8
mods.gregtech.chemical_reactor.removeByInput(10, [metaitem('platePolybenzimidazole'), metaitem('foilCopper') * 4], [fluid('sulfuric_acid') * 250])
// 塑料电路基板 * 1
mods.gregtech.large_chemical_reactor.removeByInput(10, [metaitem('platePlastic'), metaitem('foilCopper') * 4], [fluid('sulfuric_acid') * 250])
// 塑料电路基板 * 2
mods.gregtech.large_chemical_reactor.removeByInput(10, [metaitem('platePolyvinylChloride'), metaitem('foilCopper') * 4], [fluid('sulfuric_acid') * 250])
// 塑料电路基板 * 4
mods.gregtech.large_chemical_reactor.removeByInput(10, [metaitem('platePolytetrafluoroethylene'), metaitem('foilCopper') * 4], [fluid('sulfuric_acid') * 250])
// 塑料电路基板 * 8
mods.gregtech.large_chemical_reactor.removeByInput(10, [metaitem('platePolybenzimidazole'), metaitem('foilCopper') * 4], [fluid('sulfuric_acid') * 250])
// 硅烷 * 1000
mods.gregtech.chemical_reactor.removeByInput(120, [metaitem('dustRutheniumChloride')], [fluid('trichlorosilane') * 4000])
// 中子素掺杂的单晶硅 * 1
mods.gregtech.electric_blast_furnace.removeByInput(7680, [metaitem('blockSilicon') * 32, metaitem('ingotNeutronium') * 4, metaitem('dustGalliumArsenide') * 2], [fluid('xenon') * 8000])

// 生橡胶末 * 3
mods.gregtech.extractor.removeByInput(2, [metaitem('rubber_drop')], null)
// 生橡胶末 * 1
mods.gregtech.extractor.removeByInput(2, [item('gregtech:rubber_leaves') * 16], null)
// 生橡胶末 * 1
mods.gregtech.extractor.removeByInput(2, [item('gregtech:rubber_log')], null)
// 生橡胶末 * 1
mods.gregtech.extractor.removeByInput(2, [item('gregtech:rubber_sapling')], null)
// 生橡胶末 * 2
mods.gregtech.extractor.removeByInput(2, [item('minecraft:slime_ball')], null)
// 生橡胶末 * 3
mods.gregtech.centrifuge.removeByInput(5, [metaitem('rubber_drop')], null)
// §8ULV§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing'), metaitem('cableGtSingleRedAlloy') * 2], [fluid('plastic') * 288])
// §7LV§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing', 1), metaitem('cableGtSingleTin') * 2], [fluid('plastic') * 288])
// §bMV§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing', 2), metaitem('cableGtSingleCopper') * 2], [fluid('plastic') * 288])
// §bMV§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing', 2), metaitem('cableGtSingleAnnealedCopper') * 2], [fluid('plastic') * 288])
// §6HV§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing', 3), metaitem('cableGtSingleGold') * 2], [fluid('plastic') * 288])
// §5EV§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing', 4), metaitem('cableGtSingleAluminium') * 2], [fluid('plastic') * 288])
// §1IV§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing', 5), metaitem('cableGtSinglePlatinum') * 2], [fluid('polytetrafluoroethylene') * 288])
// §dLuV§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing', 6), metaitem('cableGtSingleNiobiumTitanium') * 2], [fluid('polytetrafluoroethylene') * 288])
// §cZPM§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing', 7), metaitem('cableGtSingleVanadiumGallium') * 2], [fluid('polybenzimidazole') * 288])
// §3UV§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing', 8), metaitem('cableGtSingleYttriumBariumCuprate') * 2], [fluid('polybenzimidazole') * 288])
// §4UHV§r机器外壳 * 1
mods.gregtech.assembler.removeByInput(16, [item('gregtech:machine_casing', 9), metaitem('cableGtSingleEuropium') * 2], [fluid('polybenzimidazole') * 288])
// 萘 * 400
mods.gregtech.distillation_tower.removeByInput(120, null, [fluid('coal_tar') * 1000])
// 含硫重燃油 * 15
mods.gregtech.distillation_tower.removeByInput(96, null, [fluid('oil') * 50])
// 含硫重燃油 * 10
mods.gregtech.distillation_tower.removeByInput(96, null, [fluid('oil_light') * 150])
// 含硫重燃油 * 250
mods.gregtech.distillation_tower.removeByInput(288, null, [fluid('oil_heavy') * 100])
// 含硫重燃油 * 10
mods.gregtech.distillation_tower.removeByInput(96, null, [fluid('oil_medium') * 100])
// 柴油 * 24000
mods.gregtech.large_chemical_reactor.removeByInput(480, [metaitem('circuit.integrated').withNbt(["Configuration": 24])], [fluid('light_fuel') * 20000, fluid('heavy_fuel') * 4000])
// 柴油 * 6000
mods.gregtech.mixer.removeByInput(120, null, [fluid('light_fuel') * 5000, fluid('heavy_fuel') * 1000])
// 沥青 * 1
mods.gregtech.mixer.removeByInput(16, [metaitem('dustCoal')], [fluid('concrete') * 144])
// 沥青 * 1
mods.gregtech.mixer.removeByInput(16, [metaitem('dustCharcoal')], [fluid('concrete') * 144])
// 沥青 * 1
mods.gregtech.mixer.removeByInput(16, [metaitem('dustCarbon')], [fluid('concrete') * 144])
// 酚醛树脂电路基板 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('dustWood'), metaitem('circuit.integrated').withNbt(["Configuration": 1])], [fluid('glue') * 50])

// 加氢裂化乙烷 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('ethane') * 500, fluid('hydrogen') * 2000])
// 蒸汽裂化乙烷 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('ethane') * 1000, fluid('steam') * 1000])
// 加氢裂化乙烯 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('ethylene') * 500, fluid('hydrogen') * 2000])
// 蒸汽裂化乙烯 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('ethylene') * 1000, fluid('steam') * 1000])
// 加氢裂化丙烯 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('propene') * 500, fluid('hydrogen') * 2000])
// 蒸汽裂化丙烯 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('propene') * 1000, fluid('steam') * 1000])
// 加氢裂化丙烷 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('propane') * 500, fluid('hydrogen') * 2000])
// 蒸汽裂化丙烷 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('propane') * 1000, fluid('steam') * 1000])
// 加氢裂化丁烷 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('butane') * 500, fluid('hydrogen') * 2000])
// 蒸汽裂化丁烷 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('butane') * 1000, fluid('steam') * 1000])
// 加氢裂化丁烯 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('butene') * 500, fluid('hydrogen') * 2000])
// 蒸汽裂化丁烯 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('butene') * 1000, fluid('steam') * 1000])
// 加氢裂化丁二烯 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('butadiene') * 500, fluid('hydrogen') * 2000])
// 蒸汽裂化丁二烯 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('butadiene') * 1000, fluid('steam') * 1000])
// 轻度加氢裂化重燃油 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 1])], [fluid('heavy_fuel') * 500, fluid('hydrogen') * 1000])
// 轻度蒸汽裂化重燃油 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 1])], [fluid('heavy_fuel') * 1000, fluid('steam') * 1000])
// 重度加氢裂化重燃油 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('heavy_fuel') * 500, fluid('hydrogen') * 3000])
// 重度蒸汽裂化重燃油 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 3])], [fluid('heavy_fuel') * 1000, fluid('steam') * 1000])
// 轻度加氢裂化轻燃油 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 1])], [fluid('light_fuel') * 500, fluid('hydrogen') * 1000])
// 轻度蒸汽裂化轻燃油 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 1])], [fluid('light_fuel') * 1000, fluid('steam') * 1000])
// 重度加氢裂化轻燃油 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('light_fuel') * 500, fluid('hydrogen') * 3000])
// 重度蒸汽裂化轻燃油 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 3])], [fluid('light_fuel') * 1000, fluid('steam') * 1000])
// 轻度加氢裂化石脑油 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 1])], [fluid('naphtha') * 500, fluid('hydrogen') * 1000])
// 轻度蒸汽裂化石脑油 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 1])], [fluid('naphtha') * 1000, fluid('steam') * 1000])
// 重度加氢裂化石脑油 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('naphtha') * 500, fluid('hydrogen') * 3000])
// 重度蒸汽裂化石脑油 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 3])], [fluid('naphtha') * 1000, fluid('steam') * 1000])
// 轻度加氢裂化炼油气 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 1])], [fluid('refinery_gas') * 500, fluid('hydrogen') * 1000])
// 轻度蒸汽裂化炼油气 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 1])], [fluid('refinery_gas') * 1000, fluid('steam') * 1000])
// 重度加氢裂化炼油气 * 250
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 2])], [fluid('refinery_gas') * 500, fluid('hydrogen') * 3000])
// 重度蒸汽裂化炼油气 * 500
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('circuit.integrated').withNbt(["Configuration": 3])], [fluid('refinery_gas') * 1000, fluid('steam') * 1000])

//铂系
// 铂粉 * 1
mods.gregtech.electrolyzer.removeByInput(60, null, [fluid('chloroplatinicacid') * 1000])
// 三氧化二铑粉 * 5
mods.gregtech.large_chemical_reactor.removeByInput(480, null, [fluid('rhodium_sulfate') * 1000, fluid('water') * 3000])
// 三氧化二铑粉 * 5
mods.gregtech.chemical_reactor.removeByInput(480, null, [fluid('rhodium_sulfate') * 1000, fluid('water') * 3000])
// 钌粉 * 1
mods.gregtech.large_chemical_reactor.removeByInput(120, [metaitem('dustRutheniumTetroxide') * 5, metaitem('dustCarbon') * 2], null)
// 钌粉 * 1
mods.gregtech.chemical_reactor.removeByInput(120, [metaitem('dustRutheniumTetroxide') * 5, metaitem('dustCarbon') * 2], null)
// 铱粉 * 1
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('dustIridiumChloride') * 4], [fluid('hydrogen') * 3000])
// 铱粉 * 1
mods.gregtech.large_chemical_reactor.removeByInput(30, [metaitem('dustIridiumChloride') * 4], [fluid('hydrogen') * 3000])
// 金粉 * 1
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustRichGoldSulphide') * 8], null)
// 金粉 * 1
mods.gregtech.electrolyzer.removeByInput(60, [metaitem('dustLeanGoldSulphide') * 7], null)
