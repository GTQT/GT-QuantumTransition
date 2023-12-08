import gregtech.recipes.builders.*

def assembly_line = mods.gregtech.assembly_line

// 核聚变反应堆控制电脑Mk I * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('hull.luv') * 64, item('gregtech:fusion_casing') * 8, metaitem('sensor.luv') * 16, ore('circuitLuv') * 16, metaitem('plateDoublePlutonium241') * 32, metaitem('plateDoubleOsmiridium') * 16, metaitem('field.generator.iv') * 16,item('gregtech:meta_item_1', 606)*64, item('gregtech:meta_item_1', 606)*4, item('gregtech:meta_item_1', 606)*4, metaitem('wireGtSingleIndiumTinBariumTitaniumCuprate') * 64, metaitem('wireGtSingleIndiumTinBariumTitaniumCuprate') * 64)
	.fluidInputs(fluid('polybenzimidazole') * 11520, fluid('niobium_titanium') * 11520, fluid('zeron_100') * 57600, fluid('glue') * 160000)
    .outputs(metaitem('fusion_reactor.luv'))
	.stationResearch(b -> b.researchStack(metaitem('gcym:alloy_blast_smelter')).CWUt(4))
    .duration(1600)
    .EUt(30720)
    .buildAndRegister();
	
// 核聚变反应堆控制电脑Mk II * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('hull.zpm') * 64, item('gregtech:fusion_casing', 1) * 16, metaitem('sensor.zpm') * 32,ore('circuitZpm')* 32, metaitem('plateDoubleNaquadria') * 32, metaitem('plateDoubleEuropium') * 32, metaitem('field.generator.luv') * 32,item('gregtech:meta_item_1', 606)*64, item('gregtech:meta_item_1', 606)*4, item('gregtech:meta_item_1', 606)*4, metaitem('wireGtSingleUraniumRhodiumDinaquadide') * 64, metaitem('wireGtSingleUraniumRhodiumDinaquadide') * 64)
	.fluidInputs(fluid('polybenzimidazole') * 11520, fluid('vanadium_gallium') * 11520, fluid('europium') * 11520, fluid('duranium') * 5760)
    .outputs(metaitem('fusion_reactor.zpm'))
	.stationResearch(b -> b.researchStack(metaitem('fusion_reactor.luv')).CWUt(16))
    .duration(1600)
    .EUt(122880)
    .buildAndRegister();
// 核聚变反应堆控制电脑Mk III * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('hull.uv') * 64, item('gregtech:fusion_casing', 1) * 32, metaitem('sensor.uv') * 64, ore('circuitUv') * 64, metaitem('quantumstar') * 32, metaitem('plateDoubleAmericium') * 64, metaitem('field.generator.zpm') * 64,item('gcys:meta_item_1', 368)*64,item('gcys:meta_item_1', 368)*64,item('gcys:meta_item_1', 368)*64, metaitem('wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide') * 64, metaitem('wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide') * 64)
	.fluidInputs(fluid('polybenzimidazole') * 11520, fluid('yttrium_barium_cuprate') * 11520, fluid('darmstadtium') * 11520, fluid('plasma.adamantium') * 5760)
    .outputs(metaitem('fusion_reactor.uv'))
	.stationResearch(b -> b.researchStack(metaitem('fusion_reactor.zpm')).CWUt(64))
    .duration(1600)
    .EUt(491520)
    .buildAndRegister();
// 四型聚变反应堆控制电脑 * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('hull.uhv') * 64, item('gregtech:fusion_casing', 1) * 64,item('gregtech:fusion_casing', 1) * 64,ore('circuitUhv')* 64, metaitem('field.generator.uv') * 64, metaitem('sensor.uhv') * 64, metaitem('plateAdamantium') * 64,item('gcys:meta_item_1', 368)*64,item('gcys:meta_item_1', 368)*64, item('gcys:meta_item_1', 368)*64, metaitem('wireGtSinglePedotPss') * 64, metaitem('wireGtSinglePedotPss') * 64)
	.fluidInputs(fluid('ruthenium_trinium_americium_neutronate') * 14400, fluid('kevlar') * 57600, fluid('uranium_rhodium_dinaquadide') * 14400, fluid('draconium') * 14400)
    .outputs(metaitem('gtqtcore:fusion_reactor.uhv'))
	.stationResearch(b -> b.researchStack(metaitem('fusion_reactor.uv')).CWUt(256))
    .duration(1600)
    .EUt(1966080)
    .buildAndRegister();
// 五型聚变反应堆控制电脑 * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('hull.uev') * 64, item('gregtech:fusion_casing', 1) * 64,item('gregtech:fusion_casing', 1) * 64, ore('circuitUev') * 64, metaitem('field.generator.uhv') * 64, metaitem('sensor.uev') * 64, metaitem('plateAdamantium') * 64, item('gcys:meta_item_1', 369)*64,item('gcys:meta_item_1', 369)*64, item('gcys:meta_item_1', 369)*64, metaitem('wireGtSingleUevchaodao') * 64, metaitem('wireGtSingleUevchaodao') * 64)
	.fluidInputs(fluid('ruthenium_trinium_americium_neutronate') * 14400, fluid('kevlar') * 57600, fluid('uranium_rhodium_dinaquadide') * 14400, fluid('draconium') * 14400)
    .outputs(metaitem('gtqtcore:fusion_reactor.uev'))
	.stationResearch(b -> b.researchStack(metaitem('gtqtcore:fusion_reactor.uhv')).CWUt(1024))
    .duration(1600)
    .EUt(7864320)
    .buildAndRegister();
// 六型聚变反应堆控制电脑 * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('hull.uiv') * 64, item('gregtech:fusion_casing', 1) * 64,item('gregtech:fusion_casing', 1) * 64,ore('circuitUiv') * 64, metaitem('field.generator.uev') * 64, metaitem('sensor.uiv') * 64, metaitem('plateAdamantium') * 64, item('gcys:meta_item_1', 369)*64,item('gcys:meta_item_1', 369)*64,item('gcys:meta_item_1', 369)*64, metaitem('wireGtSingleUivchaodao') * 64, metaitem('wireGtSingleUivchaodao') * 64)
	.fluidInputs(fluid('ruthenium_trinium_americium_neutronate') * 14400, fluid('kevlar') * 57600, fluid('uranium_rhodium_dinaquadide') * 14400, fluid('draconium') * 14400)
    .outputs(metaitem('gtqtcore:fusion_reactor.uiv'))
	.stationResearch(b -> b.researchStack(metaitem('gtqtcore:fusion_reactor.uev')).CWUt(4096))
    .duration(1600)
    .EUt(31457280)
    .buildAndRegister();

// 电动马达（UHV） * 1
mods.gregtech.assembly_line.removeByInput(400000, [metaitem('stickLongCgtMagnetic'), metaitem('stickLongAdamantium') * 4, metaitem('ringAdamantium') * 4, metaitem('roundAdamantium') * 8, metaitem('wireFineSiliconCarbide') * 64, metaitem('wireFineSiliconCarbide') * 64, metaitem('cableGtSingleEuropium') * 2], [fluid('soldering_alloy') * 576, fluid('lubricant') * 1000, fluid('vibranium') * 144])
// 电动马达（UHV） * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('stickLongCgtMagnetic'), metaitem('stickLongAdamantium') * 4, metaitem('ringAdamantium') * 4, metaitem('roundAdamantium') * 8,metaitem('stickLongNeutronium')*64,metaitem('stickLongNeutronium')*64,metaitem('stickLongNeutronium')*64,metaitem('stickLongNeutronium')*64, metaitem('wireFineSiliconCarbide') * 64, metaitem('wireFineSiliconCarbide') * 64, metaitem('cableGtSingleEuropium') * 2)
    .fluidInputs(fluid('soldering_alloy') * 5760, fluid('lubricant') * 10000, fluid('vibranium') * 1440)
    .outputs(metaitem('electric.motor.uhv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.motor.uv')).CWUt(16))
    .duration(1600)
    .EUt(400000)
    .buildAndRegister();

// 电动泵（UHV） * 1
mods.gregtech.assembly_line.removeByInput(400000, [metaitem('electric.motor.uhv'), metaitem('pipeLargeFluidDuranium'), metaitem('plateAdamantium') * 2, metaitem('screwAdamantium') * 8, metaitem('ringSiliconeRubber') * 16, metaitem('rotorOrichalcum'), metaitem('cableGtSingleEuropium') * 2], [fluid('soldering_alloy') * 576, fluid('lubricant') * 1000, fluid('vibranium') * 144])
// 电动泵（UHV） * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('electric.motor.uhv'), metaitem('pipeLargeFluidDuranium'), metaitem('plateAdamantium') * 2, metaitem('screwAdamantium') * 8, metaitem('ringSiliconeRubber') * 16, metaitem('rotorOrichalcum'), metaitem('cableGtSingleEuropium') * 2)
    .fluidInputs(fluid('soldering_alloy') * 5760, fluid('lubricant') * 10000, fluid('vibranium') * 1440)
    .outputs(metaitem('electric.pump.uhv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.pump.uv')).CWUt(16))
    .duration(1600)
    .EUt(400000)
    .buildAndRegister();

// 传送带（UHV） * 1
mods.gregtech.assembly_line.removeByInput(400000, [metaitem('electric.motor.uhv') * 2, metaitem('plateAdamantium') * 2, metaitem('ringAdamantium') * 4, metaitem('roundAdamantium') * 16, metaitem('screwAdamantium') * 4, metaitem('cableGtSingleEuropium') * 2], [fluid('soldering_alloy') * 576, fluid('lubricant') * 1000, fluid('styrene_butadiene_rubber') * 3456, fluid('vibranium') * 144])
// 传送带（UHV） * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('electric.motor.uhv') * 2, metaitem('plateAdamantium') * 2, metaitem('ringAdamantium') * 4, metaitem('roundAdamantium') * 16, metaitem('screwAdamantium') * 4, metaitem('cableGtSingleEuropium') * 2)
    .fluidInputs(fluid('soldering_alloy') * 5760, fluid('lubricant') * 10000, fluid('styrene_butadiene_rubber') * 34560, fluid('vibranium') * 1440)
    .outputs(metaitem('conveyor.module.uhv'))
	.stationResearch(b -> b.researchStack(metaitem('conveyor.module.uv')).CWUt(16))
    .duration(1600)
    .EUt(400000)
    .buildAndRegister();

// 电力活塞（UHV） * 1
mods.gregtech.assembly_line.removeByInput(400000, [metaitem('electric.motor.uhv'), metaitem('plateAdamantium') * 4, metaitem('ringAdamantium') * 4, metaitem('roundAdamantium') * 16, metaitem('stickAdamantium') * 4, metaitem('gearOrichalcum'), metaitem('gearSmallOrichalcum') * 2, metaitem('cableGtSingleEuropium') * 2], [fluid('soldering_alloy') * 576, fluid('lubricant') * 1000, fluid('vibranium') * 144])
// 电力活塞（UHV） * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('electric.motor.uhv'), metaitem('plateAdamantium') * 4, metaitem('ringAdamantium') * 4, metaitem('roundAdamantium') * 16, metaitem('stickAdamantium') * 4, metaitem('gearOrichalcum'), metaitem('gearSmallOrichalcum') * 2, metaitem('cableGtSingleEuropium') * 2)
    .fluidInputs(fluid('soldering_alloy') * 5760, fluid('lubricant') * 10000, fluid('vibranium') * 1440)
    .outputs(metaitem('electric.piston.uhv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.piston.uv')).CWUt(16))
    .duration(1600)
    .EUt(400000)
    .buildAndRegister();

// 机械臂（UHV） * 1
mods.gregtech.assembly_line.removeByInput(400000, [metaitem('stickLongAdamantium') * 4, metaitem('gearAdamantium'), metaitem('gearSmallAdamantium') * 3, metaitem('electric.motor.uhv') * 2, metaitem('electric.piston.uhv'), metaitem('circuit.wetware_mainframe'), metaitem('circuit.crystal_mainframe') * 2, metaitem('circuit.quantum_mainframe') * 4, metaitem('cableGtSingleEuropium') * 4], [fluid('soldering_alloy') * 1728, fluid('lubricant') * 1000, fluid('vibranium') * 144])
// 机械臂（UHV） * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('stickLongAdamantium') * 4, metaitem('gearAdamantium'), metaitem('gearSmallAdamantium') * 3, metaitem('electric.motor.uhv') * 2, metaitem('electric.piston.uhv'), metaitem('circuit.wetware_mainframe'), metaitem('circuit.crystal_mainframe') * 2, metaitem('circuit.quantum_mainframe') * 4, metaitem('cableGtSingleEuropium') * 4)
    .fluidInputs(fluid('soldering_alloy') * 17280, fluid('lubricant') * 10000, fluid('vibranium') * 1440)
    .outputs(metaitem('robot.arm.uhv'))
	.stationResearch(b -> b.researchStack(metaitem('robot.arm.uv')).CWUt(16))
    .duration(1600)
    .EUt(400000)
    .buildAndRegister();

// 力场发生器（UHV） * 1
mods.gregtech.assembly_line.removeByInput(400000, [metaitem('frameAdamantium'), metaitem('plateAdamantium') * 6, metaitem('gravistar'), metaitem('emitter.uhv') * 2, metaitem('circuit.wetware_mainframe') * 2, metaitem('wireFinePedotPss') * 64, metaitem('wireFinePedotPss') * 64, metaitem('cableGtSingleEuropium') * 4], [fluid('soldering_alloy') * 1728, fluid('vibranium') * 144])
// 力场发生器（UHV） * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('frameAdamantium'), metaitem('plateAdamantium') * 6, metaitem('gravistar'), metaitem('emitter.uhv') * 2, metaitem('circuit.wetware_mainframe') * 2, metaitem('wireFinePedotPss') * 64, metaitem('wireFinePedotPss') * 64, metaitem('cableGtSingleEuropium') * 4)
    .fluidInputs(fluid('soldering_alloy') * 17280, fluid('vibranium') * 1440)
    .outputs(metaitem('field.generator.uhv'))
	.stationResearch(b -> b.researchStack(metaitem('field.generator.uv')).CWUt(16))
    .duration(1600)
    .EUt(400000)
    .buildAndRegister();


// 发射器（UHV） * 1
mods.gregtech.assembly_line.removeByInput(400000, [metaitem('frameAdamantium'), metaitem('electric.motor.uhv'), metaitem('stickLongAdamantium') * 4, metaitem('gravistar'), metaitem('circuit.wetware_mainframe') * 2, metaitem('foilVibranium') * 64, metaitem('foilVibranium') * 32, metaitem('cableGtSingleEuropium') * 4], [fluid('soldering_alloy') * 1152, fluid('vibranium') * 144])
// 发射器（UHV） * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('frameAdamantium'), metaitem('electric.motor.uhv'), metaitem('stickLongAdamantium') * 4, metaitem('gravistar'), metaitem('circuit.wetware_mainframe') * 2, metaitem('foilVibranium') * 64, metaitem('foilVibranium') * 32, metaitem('cableGtSingleEuropium') * 4)
    .fluidInputs(fluid('soldering_alloy') * 11520, fluid('vibranium') * 1440)
    .outputs(metaitem('emitter.uhv'))
	.stationResearch(b -> b.researchStack(metaitem('emitter.uv')).CWUt(16))
    .duration(1600)
    .EUt(400000)
    .buildAndRegister();


// 传感器（UHV） * 1
mods.gregtech.assembly_line.removeByInput(400000, [metaitem('frameAdamantium'), metaitem('electric.motor.uhv'), metaitem('plateAdamantium') * 4, metaitem('gravistar'), metaitem('circuit.wetware_mainframe') * 2, metaitem('foilNaquadria') * 64, metaitem('foilNaquadria') * 32, metaitem('cableGtSingleEuropium') * 4], [fluid('soldering_alloy') * 1152, fluid('vibranium') * 144])
// 传感器（UHV） * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('frameAdamantium'), metaitem('electric.motor.uhv'), metaitem('plateAdamantium') * 4, metaitem('gravistar'), metaitem('circuit.wetware_mainframe') * 2, metaitem('foilNaquadria') * 64, metaitem('foilNaquadria') * 32, metaitem('cableGtSingleEuropium') * 4)
    .fluidInputs(fluid('soldering_alloy') * 11520, fluid('vibranium') * 1440)
    .outputs(metaitem('sensor.uhv'))
	.stationResearch(b -> b.researchStack(metaitem('sensor.uv')).CWUt(16))
    .duration(1600)
    .EUt(400000)
    .buildAndRegister();
	
	
	
	
// 电动马达（UEV） * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(ore('stickLongCgtMagnetic'), ore('stickLongMetallicHydrogen') * 4, ore('ringMetallicHydrogen') * 4, ore('roundAdamantium') * 8,ore('stickLongRutheniumTriniumAmericiumNeutronate') * 64, ore('stickLongRutheniumTriniumAmericiumNeutronate') * 64, ore('stickLongRutheniumTriniumAmericiumNeutronate') * 64, ore('stickLongRutheniumTriniumAmericiumNeutronate') * 64, ore('wireFinePlutoniumPhosphide') * 64, ore('wireFinePlutoniumPhosphide') * 64, ore('cableGtSinglePedotTma') * 2)
	.fluidInputs(fluid('soldering_alloy') * 28800, fluid('lubricant') * 25000, fluid('kevlar') * 12960)
	.outputs(metaitem('electric.motor.uev'))
	.stationResearch(b -> b.researchStack(metaitem('electric.motor.uhv')).CWUt(64))
    .duration(1600)
    .EUt(1600000)
    .buildAndRegister();
	
// 电动泵（UEV） * 1
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(metaitem('electric.motor.uev'), ore('pipeLargeFluidNeutronium'), ore('plateMetallicHydrogen') * 2, ore('screwMetallicHydrogen') * 8, ore('ringStyreneButadieneRubber') * 16, ore('rotorUniverseNeutronium') , ore('cableGtSinglePedotTma') * 2)
	.fluidInputs(fluid('soldering_alloy') * 28800, fluid('lubricant') * 25000, fluid('kevlar') * 12960)
	.outputs(metaitem('electric.pump.uev'))
	.stationResearch(b -> b.researchStack(metaitem('electric.pump.uhv')).CWUt(64))
    .duration(1600)
    .EUt(1600000)
    .buildAndRegister();
	
	
// 传送带（UEV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('electric.motor.uev') * 2, metaitem('plateMetallicHydrogen') * 2, metaitem('ringMetallicHydrogen') * 4, metaitem('roundAdamantium') * 16, metaitem('screwMetallicHydrogen') * 4, metaitem('cableGtSinglePedotTma') * 2)
	.fluidInputs(fluid('soldering_alloy') * 28800, fluid('lubricant') * 25000, fluid('zylon') * 43200, fluid('kevlar') * 12960)
	.outputs(metaitem('conveyor.module.uev'))
	.stationResearch(b -> b.researchStack(metaitem('conveyor.module.uhv')).CWUt(64))
    .duration(1600)
    .EUt(1600000)
    .buildAndRegister();

// 电力活塞（UEV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('electric.motor.uev'), metaitem('plateMetallicHydrogen') * 4, metaitem('ringMetallicHydrogen') * 4, metaitem('roundAdamantium') * 16, metaitem('stickMetallicHydrogen') * 4, metaitem('gearMetallicHydrogen'), metaitem('gearSmallMetallicHydrogen') * 2, metaitem('cableGtSinglePedotTma') * 2)
	.fluidInputs(fluid('soldering_alloy') * 28800, fluid('lubricant') * 25000, fluid('zylon') * 43200, fluid('kevlar') * 12960)
	.outputs(metaitem('electric.piston.uev'))
	.stationResearch(b -> b.researchStack(metaitem('electric.piston.uhv')).CWUt(64))
    .duration(1600)
    .EUt(1600000)
    .buildAndRegister();

// 机械臂（UEV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('stickLongMetallicHydrogen') * 4, metaitem('gearMetallicHydrogen'), metaitem('gearSmallMetallicHydrogen') * 3, metaitem('electric.motor.uev') * 2, metaitem('electric.piston.uev'), ore('circuitUev') * 2, metaitem('cableGtSinglePedotTma') * 4)
	.fluidInputs(fluid('soldering_alloy') * 28800, fluid('kevlar') * 12960)
	.outputs(metaitem('robot.arm.uev'))
	.stationResearch(b -> b.researchStack(metaitem('robot.arm.uhv')).CWUt(64))
    .duration(1600)
    .EUt(1600000)
    .buildAndRegister();

// 力场发生器（UEV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('frameMetallicHydrogen'), metaitem('plateMetallicHydrogen') * 6, metaitem('gravistar') * 64, metaitem('emitter.uev') * 2, ore('circuitUev') * 2, metaitem('wireFinePlutoniumPhosphide') * 64, metaitem('wireFinePlutoniumPhosphide') * 64, metaitem('cableGtSinglePedotTma') * 4)
	.fluidInputs(fluid('soldering_alloy') * 28800, fluid('lubricant') * 25000, fluid('zylon') * 43200, fluid('kevlar') * 12960)
	.outputs(metaitem('field.generator.uev'))
	.stationResearch(b -> b.researchStack(metaitem('field.generator.uhv')).CWUt(64))
    .duration(1600)
    .EUt(1600000)
    .buildAndRegister();

// 发射器（UEV） * 1
mods.gregtech.assembly_line.recipeBuilder() 
	.inputs(metaitem('frameMetallicHydrogen'), metaitem('electric.motor.uev'), metaitem('stickLongMetallicHydrogen') * 4, metaitem('gravistar'), ore('circuitUev') * 2, metaitem('foilMercuryCadmiumTelluride') * 64, metaitem('foilMercuryCadmiumTelluride') * 32, metaitem('cableGtSinglePedotTma') * 4)
	.fluidInputs(fluid('soldering_alloy') * 28800, fluid('kevlar') * 12960)
	.outputs(metaitem('emitter.uev'))
	.stationResearch(b -> b.researchStack(metaitem('emitter.uhv')).CWUt(64))
    .duration(1600)
    .EUt(1600000)
    .buildAndRegister();

// 传感器（UEV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('frameMetallicHydrogen'), metaitem('electric.motor.uev'), metaitem('plateMetallicHydrogen') * 4, metaitem('gravistar'), ore('circuitUev') * 2, metaitem('foilFullerene') * 64, metaitem('foilFullerene') * 32, metaitem('cableGtSinglePedotTma') * 4)
	.fluidInputs(fluid('soldering_alloy') * 28800, fluid('kevlar') * 12960)
	.outputs(metaitem('sensor.uev'))
	.stationResearch(b -> b.researchStack(metaitem('sensor.uhv')).CWUt(64))
    .duration(1600)
    .EUt(1600000)
    .buildAndRegister();




// 电动马达（UIV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('stickLongSuperconductingMagnetMixture'), metaitem('stickLongAusteniteSteel') * 4, metaitem('ringAusteniteSteel') * 4, metaitem('roundAusteniteSteel') * 8, metaitem('stickLongInfinity') * 64, metaitem('stickLongInfinity') * 64, metaitem('stickLongInfinity') * 64, metaitem('stickLongInfinity') * 64, metaitem('wireFineLunarium') * 64, metaitem('wireFineLunarium') * 64, metaitem('cableGtSingleSunnarium') * 2).fluidInputs(fluid('soldering_alloy') * 23040, fluid('lubricant') * 50000, fluid('zylon') * 4320, fluid('peek') * 2880)
	.outputs(metaitem('electric.motor.uiv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.motor.uev')).CWUt(256))
    .duration(1600)
    .EUt(6400000)
    .buildAndRegister();

// 电动泵（UIV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('electric.motor.uiv'), item('gregtech:hermetic_casing', 8) * 2, metaitem('plateAusteniteSteel') * 2, metaitem('screwAusteniteSteel') * 8, metaitem('ringSiliconeRubber') * 48, metaitem('rotorAurorium'), metaitem('cableGtSingleSunnarium') * 2).fluidInputs(fluid('soldering_alloy') * 23040, fluid('lubricant') * 50000, fluid('zylon') * 4320, fluid('aurorium') * 2880)
	.outputs(metaitem('electric.pump.uiv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.pump.uev')).CWUt(256))
    .duration(1600)
    .EUt(6400000)
    .buildAndRegister();

// 传送带（UIV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('electric.motor.uiv') * 2, metaitem('plateAusteniteSteel') * 2, metaitem('ringAusteniteSteel') * 4, metaitem('roundAusteniteSteel') * 16, metaitem('screwAusteniteSteel') * 4, metaitem('cableGtSingleSunnarium') * 2).fluidInputs(fluid('soldering_alloy') * 2304, fluid('lubricant') * 50000, fluid('zylon') * 4320, fluid('styrene_butadiene_rubber') * 3456)
	.outputs(metaitem('conveyor.module.uiv'))
	.stationResearch(b -> b.researchStack(metaitem('conveyor.module.uev')).CWUt(256))
    .duration(1600)
    .EUt(6400000)
    .buildAndRegister();

// 电力活塞（UIV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('electric.motor.uiv'), metaitem('plateAusteniteSteel') * 4, metaitem('ringAusteniteSteel') * 4, metaitem('roundAusteniteSteel') * 16, metaitem('stickAusteniteSteel') * 4, metaitem('gearLunarium'), metaitem('gearSmallLunarium') * 2, metaitem('cableGtSingleSunnarium') * 2).fluidInputs(fluid('soldering_alloy') * 23040, fluid('lubricant') * 5000, fluid('zylon') * 4320, fluid('aurorium') * 2880)
	.outputs(metaitem('electric.piston.uiv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.piston.uev')).CWUt(256))
    .duration(1600)
    .EUt(6400000)
    .buildAndRegister();

// 机械臂（UIV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('stickLongAusteniteSteel') * 4, metaitem('gearLunarium'), metaitem('gearSmallLunarium') * 3, metaitem('electric.motor.uiv') * 2, metaitem('electric.piston.uiv'), ore('circuitUiv'), ore('circuitUev') * 2, ore('circuitUhv') * 4, metaitem('cableGtSingleSunnarium') * 4).fluidInputs(fluid('soldering_alloy') * 51840, fluid('lubricant') * 5000, fluid('zylon') * 4320, fluid('aurorium') * 2880)
	.outputs(metaitem('robot.arm.uiv'))
	.stationResearch(b -> b.researchStack(metaitem('robot.arm.uev')).CWUt(256))
    .duration(1600)
    .EUt(6400000)
    .buildAndRegister();

// 力场发生器（UIV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('frameAusteniteSteel'), metaitem('plateAusteniteSteel') * 6, metaitem('gravistar') * 8, metaitem('emitter.uiv') * 2, ore('circuitUiv'), metaitem('wireFineMithril') * 64, metaitem('wireFineMithril') * 64, metaitem('cableGtSingleLunarium') * 4).fluidInputs(fluid('soldering_alloy') * 51840, fluid('zylon') * 4320, fluid('aurorium') * 2880)
	.outputs(metaitem('field.generator.uiv'))
	.stationResearch(b -> b.researchStack(metaitem('field.generator.uev')).CWUt(256))
    .duration(1600)
    .EUt(6400000)
    .buildAndRegister();

// 发射器（UIV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('frameAusteniteSteel'), metaitem('electric.motor.uiv'), metaitem('stickLongAusteniteSteel') * 4, metaitem('gravistar') * 4, ore('circuitUiv') * 2, metaitem('foilLunarium') * 64, metaitem('foilLunarium') * 32, metaitem('cableGtSingleSunnarium') * 4).fluidInputs(fluid('soldering_alloy') * 34560, fluid('zylon') * 4320, fluid('aurorium') * 2880)
	.outputs(metaitem('emitter.uiv'))
	.stationResearch(b -> b.researchStack(metaitem('emitter.uev')).CWUt(256))
    .duration(1600)
    .EUt(6400000)
    .buildAndRegister();

// 传感器（UIV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('frameAusteniteSteel'), metaitem('electric.motor.uiv'), metaitem('plateAusteniteSteel') * 4, metaitem('gravistar') * 4, ore('circuitUiv') * 2, metaitem('foilLunarium') * 64, metaitem('foilLunarium') * 64, metaitem('cableGtSingleLunarium') * 4).fluidInputs(fluid('soldering_alloy') * 34560, fluid('zylon') * 4320, fluid('aurorium') * 2880)
	.outputs(metaitem('sensor.uiv'))
	.stationResearch(b -> b.researchStack(metaitem('sensor.uev')).CWUt(256))
    .duration(1600)
    .EUt(6400000)
    .buildAndRegister();






// 电动马达（UXV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('stickLongSuperconductingMagnetMixture'), metaitem('stickLongTiberium') * 4, metaitem('ringTiberium') * 4, metaitem('roundTiberium') * 8, metaitem('stickLongOctalSuperheavyElementMixture') * 64, metaitem('stickLongOctalSuperheavyElementMixture') * 64, metaitem('stickLongOctalSuperheavyElementMixture') * 64, metaitem('stickLongOctalSuperheavyElementMixture') * 64, metaitem('wireFineHikarium') * 64, metaitem('wireFineHikarium') * 64, metaitem('cableGtSingleCrystalMatrix') * 2).fluidInputs(fluid('soldering_alloy') * 34560, fluid('lubricant') * 7000, fluid('black_hole_matter_polymer_matrix') * 5760, fluid('zylon') * 4320)
	.outputs(metaitem('electric.motor.uxv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.motor.uiv')).CWUt(1024))
    .duration(1600)
    .EUt(25600000)
    .buildAndRegister();

// 电动泵（UXV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('electric.motor.uxv'), item('gregtech:hermetic_casing', 8) * 4, metaitem('plateTiberium') * 2, metaitem('screwTiberium') * 8, metaitem('ringSiliconeRubber') * 64, metaitem('rotorNeutronium'), metaitem('cableGtSingleCrystalMatrix') * 2).fluidInputs(fluid('soldering_alloy') * 46080, fluid('lubricant') * 7000, fluid('black_hole_matter_polymer_matrix') * 5760, fluid('neutronium') * 4320)
	.outputs(metaitem('electric.pump.uxv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.pump.uiv')).CWUt(1024))
    .duration(1600)
    .EUt(25600000)
    .buildAndRegister();

// 传送带（UXV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('electric.motor.uxv') * 2, metaitem('plateTiberium') * 2, metaitem('ringTiberium') * 4, metaitem('roundTiberium') * 16, metaitem('screwTiberium') * 4, metaitem('cableGtSingleCrystalMatrix') * 2).fluidInputs(fluid('soldering_alloy') * 46080, fluid('lubricant') * 7000, fluid('black_hole_matter_polymer_matrix') * 5760, fluid('styrene_butadiene_rubber') * 3456)
	.outputs(metaitem('conveyor.module.uxv'))
	.stationResearch(b -> b.researchStack(metaitem('conveyor.module.uiv')).CWUt(1024))
    .duration(1600)
    .EUt(25600000)
    .buildAndRegister();

// 电力活塞（UXV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('electric.motor.uxv'), metaitem('plateTiberium') * 4, metaitem('ringTiberium') * 4, metaitem('roundTiberium') * 16, metaitem('stickTiberium') * 4, metaitem('gearHikarium'), metaitem('gearSmallHikarium') * 2, metaitem('cableGtSingleCrystalMatrix') * 2).fluidInputs(fluid('soldering_alloy') * 46080, fluid('lubricant') * 70000, fluid('black_hole_matter_polymer_matrix') * 5760, fluid('neutronium') * 4320)
	.outputs(metaitem('electric.piston.uxv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.piston.uiv')).CWUt(1024))
    .duration(1600)
    .EUt(25600000)
    .buildAndRegister();

// 机械臂（UXV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('stickLongTiberium'), metaitem('gearHikarium'), metaitem('gearSmallHikarium') * 3, metaitem('electric.motor.uxv') * 2, metaitem('electric.piston.uxv'), ore('circuitUxv'), ore('circuitUiv') * 2, ore('circuitUev') * 4, metaitem('cableGtSingleCrystalMatrix') * 4).fluidInputs(fluid('soldering_alloy') * 6912, fluid('lubricant') * 70000, fluid('black_hole_matter_polymer_matrix') * 5760, fluid('neutronium') * 4320)
	.outputs(metaitem('robot.arm.uxv'))
	.stationResearch(b -> b.researchStack(metaitem('robot.arm.uiv')).CWUt(1024))
    .duration(1600)
    .EUt(25600000)
    .buildAndRegister();

// 力场发生器（UXV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('frameTiberium'), metaitem('plateTiberium') * 6, metaitem('gravistar') * 16, metaitem('emitter.uxv') * 2, ore('circuitUxv'), metaitem('wireFineHikarium') * 64, metaitem('wireFineHikarium') * 64, metaitem('cableGtSingleHikarium') * 4).fluidInputs(fluid('soldering_alloy') * 6912, fluid('black_hole_matter_polymer_matrix') * 5760, fluid('neutronium') * 4320)
	.outputs(metaitem('field.generator.uxv'))
	.stationResearch(b -> b.researchStack(metaitem('field.generator.uiv')).CWUt(1024))
    .duration(1600)
    .EUt(25600000)
    .buildAndRegister();

// 发射器（UXV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('frameTiberium'), metaitem('electric.motor.uxv'), metaitem('stickLongTiberium') * 4, metaitem('gravistar') * 8, ore('circuitUxv') * 2, metaitem('foilHikarium') * 64, metaitem('foilHikarium') * 32, metaitem('cableGtSingleCrystalMatrix') * 4).fluidInputs(fluid('soldering_alloy') * 46080, fluid('black_hole_matter_polymer_matrix') * 5760, fluid('neutronium') * 4320)
	.outputs(metaitem('emitter.uxv'))
	.stationResearch(b -> b.researchStack(metaitem('emitter.uiv')).CWUt(1024))
    .duration(1600)
    .EUt(25600000)
    .buildAndRegister();

// 传感器（UXV） * 1
mods.gregtech.assembly_line.recipeBuilder()
	.inputs(metaitem('frameTiberium'), metaitem('electric.motor.uxv'), metaitem('plateTiberium') * 4, metaitem('gravistar') * 8, ore('circuitUxv') * 2, metaitem('foilHikarium') * 64, metaitem('foilHikarium') * 32, metaitem('cableGtSingleHikarium') * 4).fluidInputs(fluid('soldering_alloy') * 46080, fluid('black_hole_matter_polymer_matrix') * 5760, fluid('neutronium') * 4320)
	.outputs(metaitem('sensor.uxv'))
	.stationResearch(b -> b.researchStack(metaitem('sensor.uiv')).CWUt(1024))
    .duration(1600)
    .EUt(25600000)
    .buildAndRegister();
	
	

	
// 电动马达（OpV） * 1
mods.gregtech.assembly_line.recipeBuilder().inputs(metaitem('stickLongStellarDebris'), metaitem('stickLongArcanium') * 4, metaitem('ringArcanium') * 4, metaitem('roundArcanium') * 8, metaitem('stickLongMagnetoHydrodynamicallyConstrainedStarMatter') * 64, metaitem('stickLongMagnetoHydrodynamicallyConstrainedStarMatter') * 64, metaitem('stickLongMagnetoHydrodynamicallyConstrainedStarMatter') * 64, metaitem('stickLongMagnetoHydrodynamicallyConstrainedStarMatter') * 64, metaitem('wireFineHypogen') * 64, metaitem('wireFineHypogen') * 64, metaitem('cableGtSingleSuperheavyElementMixture') * 2).fluidInputs(fluid('soldering_alloy') * 460800, fluid('lubricant') * 9000, fluid('dense_magnetically_constrained_stellar_plasma_fluid') * 72000, fluid('black_hole_matter_polymer_matrix') * 57600)
	.outputs(metaitem('electric.motor.opv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.motor.uxv')).CWUt(4096))
    .duration(1600)
    .EUt(102400000)
    .buildAndRegister();

// 电动泵（OpV） * 1
mods.gregtech.assembly_line.recipeBuilder().inputs(metaitem('electric.motor.opv'), item('gregtech:hermetic_casing', 8) * 8, metaitem('plateArcanium') * 2, metaitem('screwArcanium') * 8, metaitem('ringSiliconeRubber') * 64, metaitem('rotorInfinity'), metaitem('cableGtSingleSuperheavyElementMixture') * 2).fluidInputs(fluid('soldering_alloy') * 9216, fluid('lubricant') * 9000, fluid('dense_magnetically_constrained_stellar_plasma_fluid') * 7200, fluid('infinity') * 5760)
	.outputs(metaitem('electric.pump.opv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.pump.uxv')).CWUt(4096))
    .duration(1600)
    .EUt(102400000)
    .buildAndRegister();

// 传送带（OpV） * 1
mods.gregtech.assembly_line.recipeBuilder().inputs(metaitem('electric.motor.opv') * 2, metaitem('plateArcanium') * 2, metaitem('ringArcanium') * 4, metaitem('roundArcanium') * 16, metaitem('screwArcanium') * 4, metaitem('cableGtSingleSuperheavyElementMixture') * 2).fluidInputs(fluid('soldering_alloy') * 9216, fluid('lubricant') * 9000, fluid('dense_magnetically_constrained_stellar_plasma_fluid') * 7200, fluid('styrene_butadiene_rubber') * 34560)
	.outputs(metaitem('conveyor.module.opv'))
	.stationResearch(b -> b.researchStack(metaitem('conveyor.module.uxv')).CWUt(4096))
    .duration(1600)
    .EUt(102400000)
    .buildAndRegister();

// 电力活塞（OpV） * 1
mods.gregtech.assembly_line.recipeBuilder().inputs(metaitem('electric.motor.opv'), metaitem('plateArcanium') * 4, metaitem('ringArcanium') * 4, metaitem('roundArcanium') * 16, metaitem('stickArcanium') * 4, metaitem('gearHypogen'), metaitem('gearSmallHypogen') * 2, metaitem('cableGtSingleSuperheavyElementMixture') * 2).fluidInputs(fluid('soldering_alloy') * 9216, fluid('lubricant') * 9000, fluid('dense_magnetically_constrained_stellar_plasma_fluid') * 7200, fluid('infinity') * 5760)
	.outputs(metaitem('electric.piston.opv'))
	.stationResearch(b -> b.researchStack(metaitem('electric.piston.uxv')).CWUt(4096))
    .duration(1600)
    .EUt(102400000)
    .buildAndRegister();

// 机械臂（OpV） * 1
mods.gregtech.assembly_line.recipeBuilder().inputs(metaitem('stickLongArcanium'), metaitem('gearHypogen'), metaitem('gearSmallHypogen') * 3, metaitem('electric.motor.opv') * 2, metaitem('electric.piston.opv'), ore('circuitOpv'), ore('circuitUxv') * 2, ore('circuitUiv') * 4, metaitem('cableGtSingleSuperheavyElementMixture') * 2).fluidInputs(fluid('soldering_alloy') * 8640, fluid('lubricant') * 9000, fluid('dense_magnetically_constrained_stellar_plasma_fluid') * 7200, fluid('infinity') * 5760)
	.outputs(metaitem('robot.arm.opv'))
	.stationResearch(b -> b.researchStack(metaitem('robot.arm.uxv')).CWUt(4096))
    .duration(1600)
    .EUt(102400000)
    .buildAndRegister();

// 力场发生器（OpV） * 1
mods.gregtech.assembly_line.recipeBuilder().inputs(metaitem('frameArcanium'), metaitem('plateArcanium') * 6, metaitem('gravistar') * 32, metaitem('emitter.opv') * 2, ore('circuitOpv'), metaitem('wireFineHypogen') * 64, metaitem('wireFineHypogen') * 64, metaitem('cableGtSingleSuperheavyElementMixture') * 4).fluidInputs(fluid('soldering_alloy') * 8640, fluid('dense_magnetically_constrained_stellar_plasma_fluid') * 7200, fluid('infinity') * 5760)
	.outputs(metaitem('field.generator.opv'))
	.stationResearch(b -> b.researchStack(metaitem('field.generator.uxv')).CWUt(4096))
    .duration(1600)
    .EUt(102400000)
    .buildAndRegister();


// 发射器（OpV） * 1
mods.gregtech.assembly_line.recipeBuilder().inputs(metaitem('frameArcanium'), metaitem('electric.motor.opv'), metaitem('stickLongArcanium') * 4, metaitem('gravistar') * 16, ore('circuitOpv') * 2, metaitem('foilHypogen') * 64, metaitem('foilHypogen') * 32, metaitem('cableGtSingleSuperheavyElementMixture') * 4).fluidInputs(fluid('soldering_alloy') * 5760, fluid('dense_magnetically_constrained_stellar_plasma_fluid') * 7200, fluid('infinity') * 5760)
	.outputs(metaitem('emitter.opv'))
	.stationResearch(b -> b.researchStack(metaitem('emitter.uxv')).CWUt(4096))
    .duration(1600)
    .EUt(102400000)
    .buildAndRegister();

// 传感器（OpV） * 1
mods.gregtech.assembly_line.recipeBuilder().inputs(metaitem('frameArcanium'), metaitem('electric.motor.opv'), metaitem('plateArcanium') * 4, metaitem('gravistar') * 16, ore('circuitOpv') * 2, metaitem('foilHypogen') * 64, metaitem('foilHypogen') * 32, metaitem('cableGtSingleSuperheavyElementMixture') * 4).fluidInputs(fluid('soldering_alloy') * 5760, fluid('dense_magnetically_constrained_stellar_plasma_fluid') * 7200, fluid('infinity') * 5760)
	.outputs(metaitem('sensor.opv'))
	.stationResearch(b -> b.researchStack(metaitem('sensor.uxv')).CWUt(4096))
    .duration(1600)
    .EUt(102400000)
    .buildAndRegister();