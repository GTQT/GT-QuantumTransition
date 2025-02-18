// 生橡胶末 * 3
mods.gregtech.extractor.removeByInput(2, [metaitem('rubber_drop')], null)
//铂系
// 铂粉 * 1
mods.gregtech.electrolyzer.removeByInput(60, null, [fluid('chloroplatinicacid') * 1000])
// 钌粉 * 1
mods.gregtech.large_chemical_reactor.removeByInput(120, [metaitem('dustRutheniumTetroxide') * 5, metaitem('dustCarbon') * 2], null)
// 钌粉 * 1
mods.gregtech.chemical_reactor.removeByInput(120, [metaitem('dustRutheniumTetroxide') * 5, metaitem('dustCarbon') * 2], null)
// 铱粉 * 1
mods.gregtech.chemical_reactor.removeByInput(30, [metaitem('dustIridiumChloride') * 4], [fluid('hydrogen') * 3000])
// 铱粉 * 1
mods.gregtech.large_chemical_reactor.removeByInput(30, [metaitem('dustIridiumChloride') * 4], [fluid('hydrogen') * 3000])
// 纯净镍矿石 * 1
mods.gregtech.chemical_bath.removeByInput(30, [metaitem('crushedNickel')], [fluid('mercury') * 100])
// §7LV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleTin') * 3, metaitem('stickSteel') * 2, metaitem('electric.motor.lv') * 2, metaitem('electric.piston.lv'), metaitem('circuit.electronic')], null)
// §bMV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleCopper') * 3, metaitem('stickAluminium') * 2, metaitem('electric.motor.mv') * 2, metaitem('electric.piston.mv'), metaitem('circuit.good_electronic')], null)
// §6HV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleGold') * 3, metaitem('stickStainlessSteel') * 2, metaitem('electric.motor.hv') * 2, metaitem('electric.piston.hv'), metaitem('circuit.advanced_integrated')], null)
// §5EV§r机械臂 * 1
mods.gregtech.assembler.removeByInput(30, [metaitem('cableGtSingleAluminium') * 3, metaitem('stickTitanium') * 2, metaitem('electric.motor.ev') * 2, metaitem('electric.piston.ev'), metaitem('circuit.workstation')], null)
// 中子素掺杂的单晶硅 * 1
mods.gregtech.electric_blast_furnace.removeByInput(7680, [metaitem('blockSilicon') * 32, metaitem('ingotNeutronium') * 4, metaitem('dustGalliumArsenide') * 2], [fluid('xenon') * 8000])
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
// 光缆 * 1
mods.gregtech.assembler.removeByInput(7680, [metaitem('wireFineBorosilicateGlass') * 8, metaitem('foilSilver') * 8], [fluid('polytetrafluoroethylene') * 144])
// 闪存 * 1
mods.gregtech.circuit_assembler.removeByInput(1200, [metaitem('circuit_board.advanced'), metaitem('circuit.advanced_integrated') * 2, metaitem('plate.random_access_memory') * 4, metaitem('plate.nor_memory_chip') * 16, metaitem('plate.nand_memory_chip') * 32, metaitem('wireFinePlatinum') * 32], [fluid('soldering_alloy') * 144])
// 闪存 * 1
mods.gregtech.circuit_assembler.removeByInput(1200, [metaitem('circuit_board.advanced'), metaitem('circuit.advanced_integrated') * 2, metaitem('plate.random_access_memory') * 4, metaitem('plate.nor_memory_chip') * 16, metaitem('plate.nand_memory_chip') * 32, metaitem('wireFinePlatinum') * 32], [fluid('tin') * 288])