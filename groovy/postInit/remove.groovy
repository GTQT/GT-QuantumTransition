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
// §7LV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin') * 3, metaitem('stickSteel') * 2, metaitem('electric.motor.lv') * 2, metaitem('electric.piston.lv'), metaitem('circuit.electronic')], null)
// §bMV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleCopper') * 3, metaitem('stickAluminium') * 2, metaitem('electric.motor.mv') * 2, metaitem('electric.piston.mv'), metaitem('circuit.good_electronic')], null)
// §6HV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleGold') * 3, metaitem('stickStainlessSteel') * 2, metaitem('electric.motor.hv') * 2, metaitem('electric.piston.hv'), metaitem('circuit.advanced_integrated')], null)
// §5EV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleAluminium') * 3, metaitem('stickTitanium') * 2, metaitem('electric.motor.ev') * 2, metaitem('electric.piston.ev'), metaitem('circuit.workstation')], null)
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
// 氦等离子体 * 125
mods.gregtech.fusion_reactor.removeByInput(4096, null, [fluid('deuterium') * 125, fluid('tritium') * 125])
// 氧等离子体 * 125
mods.gregtech.fusion_reactor.removeByInput(4096, null, [fluid('carbon') * 16, fluid('helium_3') * 125])
// 氮等离子体 * 125
mods.gregtech.fusion_reactor.removeByInput(16384, null, [fluid('beryllium') * 16, fluid('deuterium') * 375])
// 铁等离子体 * 144
mods.gregtech.fusion_reactor.removeByInput(7680, null, [fluid('silicon') * 16, fluid('magnesium') * 16])
// 镍等离子体 * 144
mods.gregtech.fusion_reactor.removeByInput(30720, null, [fluid('potassium') * 16, fluid('fluorine') * 125])
// 氩等离子体 * 125
mods.gregtech.fusion_reactor.removeByInput(24576, null, [fluid('carbon') * 16, fluid('magnesium') * 16])
// 镅等离子体 * 144
mods.gregtech.fusion_reactor.removeByInput(98304, null, [fluid('plutonium_241') * 144, fluid('hydrogen') * 2000])
// 锡等离子体 * 144
mods.gregtech.fusion_reactor.removeByInput(49152, null, [fluid('silver') * 144, fluid('helium_3') * 375])
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
// 聚变线圈方块 * 1
mods.gregtech.assembler.removeByInput(122880, [item('gregtech:fusion_casing'), metaitem('field.generator.iv') * 2, metaitem('electric.pump.iv'), metaitem('neutron_reflector') * 2, metaitem('circuit.nano_mainframe') * 4, metaitem('pipeSmallFluidNaquadah') * 4, metaitem('plateEuropium') * 4], [fluid('vanadium_gallium') * 576])
// 进阶流体钻机 * 1
mods.gregtech.assembler.removeByInput(1920, [metaitem('hull.ev'), metaitem('frameTitanium') * 4, metaitem('circuit.workstation') * 4, metaitem('electric.motor.ev') * 4, metaitem('electric.pump.ev') * 4, metaitem('gearTungstenCarbide') * 4, metaitem('circuit.integrated').withNbt(["Configuration": 2])], null)
// 进阶流体钻机 II * 1
mods.gregtech.assembler.removeByInput(30720, [metaitem('hull.luv'), metaitem('frameTungstenSteel') * 4, metaitem('circuit.nano_mainframe') * 4, metaitem('electric.motor.luv') * 4, metaitem('electric.pump.luv') * 4, metaitem('gearOsmiridium') * 4, metaitem('circuit.integrated').withNbt(["Configuration": 2])], null)
// 基础采矿场 * 1
mods.gregtech.assembler.removeByInput(1920, [metaitem('hull.ev'), metaitem('frameTitanium') * 4, metaitem('circuit.workstation') * 4, metaitem('electric.motor.ev') * 4, metaitem('electric.pump.ev') * 4, metaitem('conveyor.module.ev') * 4, metaitem('gearTungsten') * 4, metaitem('circuit.integrated').withNbt(["Configuration": 2])], null)
// 进阶采矿场 * 1
mods.gregtech.assembler.removeByInput(7680, [metaitem('hull.iv'), metaitem('frameTungstenSteel') * 4, metaitem('circuit.mainframe') * 4, metaitem('electric.motor.iv') * 4, metaitem('electric.pump.iv') * 4, metaitem('conveyor.module.iv') * 4, metaitem('gearIridium') * 4, metaitem('circuit.integrated').withNbt(["Configuration": 2])], null)
// 进阶采矿场 II * 1
mods.gregtech.assembler.removeByInput(30720, [metaitem('hull.luv'), metaitem('frameHsss') * 4, metaitem('circuit.nano_mainframe') * 4, metaitem('electric.motor.luv') * 4, metaitem('electric.pump.luv') * 4, metaitem('conveyor.module.luv') * 4, metaitem('gearRuridit') * 4, metaitem('circuit.integrated').withNbt(["Configuration": 2])], null)
// 超导线圈方块 * 1
mods.gregtech.assembler.removeByInput(30720, [metaitem('wireGtDoubleIndiumTinBariumTitaniumCuprate') * 32, metaitem('foilNiobiumTitanium') * 32], [fluid('trinium') * 3456])
// 超导线圈方块 * 1
mods.gregtech.assembler.removeByInput(122880, [metaitem('wireGtDoubleUraniumRhodiumDinaquadide') * 16, metaitem('foilNiobiumTitanium') * 16], [fluid('trinium') * 2304])
// 超导线圈方块 * 1
mods.gregtech.assembler.removeByInput(491520, [metaitem('wireGtDoubleEnrichedNaquadahTriniumEuropiumDuranide') * 8, metaitem('foilNiobiumTitanium') * 8], [fluid('trinium') * 1152])
// 超导线圈方块 * 1
mods.gregtech.assembler.removeByInput(491520, [metaitem('wireGtDoubleRutheniumTriniumAmericiumNeutronate') * 4, metaitem('foilNiobiumTitanium') * 4], [fluid('trinium') * 576])
// 光缆 * 1
mods.gregtech.assembler.removeByInput(7680, [metaitem('wireFineBorosilicateGlass') * 8, metaitem('foilSilver') * 8], [fluid('polytetrafluoroethylene') * 144])
// 物品支架 * 1
mods.gregtech.assembly_line.removeByInput(100000, [metaitem('item_bus.import.zpm'), metaitem('emitter.luv') * 8, metaitem('circuit.quantum_mainframe'), metaitem('robot.arm.zpm') * 2, metaitem('electric.motor.zpm') * 2, metaitem('wireGtDoubleUraniumRhodiumDinaquadide') * 16, item('gregtech:optical_pipe_normal') * 2], [fluid('soldering_alloy') * 576, fluid('polybenzimidazole') * 288])
// 物品支架 * 1
mods.gregtech.assembly_line.removeByInput(100000, [metaitem('item_bus.import.zpm'), metaitem('emitter.luv') * 8, metaitem('circuit.quantum_mainframe'), metaitem('robot.arm.zpm') * 2, metaitem('electric.motor.zpm') * 2, metaitem('wireGtDoubleUraniumRhodiumDinaquadide') * 16, item('gregtech:optical_pipe_normal') * 2], [fluid('soldering_alloy') * 576, fluid('polybenzimidazole') * 288])
// 集成逻辑电路晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(120, [metaitem('wafer.silicon'), metaitem('glass_lens.red')], null)
// 集成逻辑电路晶圆 * 4
mods.gregtech.laser_engraver.removeByInput(480, [metaitem('wafer.phosphorus'), metaitem('glass_lens.red')], null)
// 集成逻辑电路晶圆 * 8
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.red')], null)
// 集成逻辑电路晶圆 * 16
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.red')], null)
// RAM晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(120, [metaitem('wafer.silicon'), metaitem('glass_lens.green')], null)
// RAM晶圆 * 4
mods.gregtech.laser_engraver.removeByInput(480, [metaitem('wafer.phosphorus'), metaitem('glass_lens.green')], null)
// RAM晶圆 * 8
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.green')], null)
// RAM晶圆 * 16
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.green')], null)
// CPU晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(120, [metaitem('wafer.silicon'), metaitem('glass_lens.light_blue')], null)
// CPU晶圆 * 4
mods.gregtech.laser_engraver.removeByInput(480, [metaitem('wafer.phosphorus'), metaitem('glass_lens.light_blue')], null)
// CPU晶圆 * 8
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.light_blue')], null)
// CPU晶圆 * 16
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.light_blue')], null)
// ULPIC晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(120, [metaitem('wafer.silicon'), metaitem('glass_lens.blue')], null)
// ULPIC晶圆 * 4
mods.gregtech.laser_engraver.removeByInput(480, [metaitem('wafer.phosphorus'), metaitem('glass_lens.blue')], null)
// ULPIC晶圆 * 8
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.blue')], null)
// ULPIC晶圆 * 16
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.blue')], null)
// LPIC晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(120, [metaitem('wafer.silicon'), metaitem('glass_lens.orange')], null)
// LPIC晶圆 * 4
mods.gregtech.laser_engraver.removeByInput(480, [metaitem('wafer.phosphorus'), metaitem('glass_lens.orange')], null)
// LPIC晶圆 * 8
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.orange')], null)
// LPIC晶圆 * 16
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.orange')], null)
// SSoC晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(120, [metaitem('wafer.silicon'), metaitem('glass_lens.cyan')], null)
// SSoC晶圆 * 4
mods.gregtech.laser_engraver.removeByInput(480, [metaitem('wafer.phosphorus'), metaitem('glass_lens.cyan')], null)
// SSoC晶圆 * 8
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.cyan')], null)
// SSoC晶圆 * 16
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.cyan')], null)
// NAND晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(480, [metaitem('wafer.phosphorus'), metaitem('glass_lens.gray')], null)
// NAND晶圆 * 4
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.gray')], null)
// NAND晶圆 * 8
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.gray')], null)
// NOR晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(480, [metaitem('wafer.phosphorus'), metaitem('glass_lens.pink')], null)
// NOR晶圆 * 4
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.pink')], null)
// NOR晶圆 * 8
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.pink')], null)
// PIC晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(480, [metaitem('wafer.phosphorus'), metaitem('glass_lens.brown')], null)
// PIC晶圆 * 4
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.brown')], null)
// PIC晶圆 * 8
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.brown')], null)
// SoC晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(480, [metaitem('wafer.phosphorus'), metaitem('glass_lens.yellow')], null)
// SoC晶圆 * 4
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.yellow')], null)
// SoC晶圆 * 8
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.yellow')], null)
// ASoC晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(1920, [metaitem('wafer.naquadah'), metaitem('glass_lens.purple')], null)
// ASoC晶圆 * 2
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.purple')], null)
// HASoC晶圆 * 1
mods.gregtech.laser_engraver.removeByInput(7680, [metaitem('wafer.neutronium'), metaitem('glass_lens.black')], null)
// 闪存 * 1
mods.gregtech.circuit_assembler.removeByInput(1200, [metaitem('circuit_board.advanced'), metaitem('circuit.advanced_integrated') * 2, metaitem('plate.random_access_memory') * 4, metaitem('plate.nor_memory_chip') * 16, metaitem('plate.nand_memory_chip') * 32, metaitem('wireFinePlatinum') * 32], [fluid('soldering_alloy') * 144])
// 闪存 * 1
mods.gregtech.circuit_assembler.removeByInput(1200, [metaitem('circuit_board.advanced'), metaitem('circuit.advanced_integrated') * 2, metaitem('plate.random_access_memory') * 4, metaitem('plate.nor_memory_chip') * 16, metaitem('plate.nand_memory_chip') * 32, metaitem('wireFinePlatinum') * 32], [fluid('tin') * 288])
// 盐酸 * 6000
mods.gregtech.chemical_reactor.removeByInput(240, null, [fluid('chloroform') * 2000, fluid('hydrofluoric_acid') * 4000])
// 铈粉 * 1
mods.gregtech.electrolyzer.removeByInput(30, [metaitem('dustCeriumOxide') * 3], null)
// 稀土 * 1
mods.gregtech.electrolyzer.removeByInput(30, [metaitem('dustMonazite') * 2], null)
// 气态氧 * 2000
mods.gregtech.electrolyzer.removeByInput(30, [metaitem('dustYanghuaha') * 3], null)
mods.gregtech.centrifuge.removeByInput(20, [metaitem('dustRareEarth')], null)
