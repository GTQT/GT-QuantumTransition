static gtqt(String name) {
	return 'gtqt:' + name
}

static gtqtId(String name) {
	return resource('gtqt', name)
}

ALLOY_SMELTER = recipemap('alloy_smelter')
MIXER = recipemap('mixer')
MACERATOR = recipemap('macerator')
SOLIDIFIER = recipemap('fluid_solidifier')
ASSEMBLER = recipemap('assembler')
ARC_FURNACE = recipemap('arc_furnace')
ALLOY_BLAST_SMELTER = recipemap('alloy_blast_smelter')
FORMING_PRESS = recipemap('forming_press')

// Hide items from JEI
mods.jei.ingredient.yeet(
        item('enderio:item_material', 3),
        item('enderio:item_material', 21),
        item('enderio:item_material', 23),
        item('enderio:item_material', 24),
        item('enderio:item_material', 25),
        item('enderio:item_material', 26),
        item('enderio:item_material', 27),
        item('enderio:item_material', 28),
        item('enderio:item_material', 29),
        item('enderio:item_material', 32),
        item('enderio:item_material', 33),
        item('enderio:item_material', 35),
        item('enderio:item_material', 38),
        item('enderio:item_material', 55),
        item('enderio:item_material', 75),
        item('enderio:item_material', 76),

        item('enderio:item_capacitor_grainy'),
        item('enderio:item_capacitor_crystalline'),
        item('enderio:item_capacitor_melodic'),
        item('enderio:item_capacitor_silver'),
        item('enderio:item_capacitor_energetic_silver'),
        item('enderio:item_capacitor_vivid'),

        item('enderio:item_data_conduit'),

        item('enderio:item_redstone_conduit'),

        item('enderio:item_power_conduit', 1),
        item('enderio:item_power_conduit'),
        item('enderio:item_power_conduit', 2),

        item('enderio:item_endergy_conduit'),
        item('enderio:item_endergy_conduit', 1),
        item('enderio:item_endergy_conduit', 2),
        item('enderio:item_endergy_conduit', 3),
        item('enderio:item_endergy_conduit', 4),
        item('enderio:item_endergy_conduit', 5),
        item('enderio:item_endergy_conduit', 6),
        item('enderio:item_endergy_conduit', 7),
        item('enderio:item_endergy_conduit', 8),
        item('enderio:item_endergy_conduit', 9),
        item('enderio:item_endergy_conduit', 10),
        item('enderio:item_endergy_conduit', 11),

        item('enderio:block_solar_panel'),
        item('enderio:block_solar_panel', 1),
        item('enderio:block_solar_panel', 2),
        item('enderio:block_solar_panel', 3),
        item('enderio:block_solar_panel', 4),
        item('enderio:block_solar_panel', 5),
        item('enderio:block_solar_panel', 5),
        item('enderio:block_solar_panel', 6),

        item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu': 'enderiomachines:solar']),
        item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu': 'enderiomachines:solar1']),
        item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu': 'enderiomachines:solar2']),
        item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu': 'enderiomachines:solar3']),

        item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu': 'enderiomachines:solar', 'enderio:enabled': (byte) 1]),
        item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu': 'enderiomachines:solar1', 'enderio:enabled': (byte) 1]),
        item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu': 'enderiomachines:solar2', 'enderio:enabled': (byte) 1]),
        item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu': 'enderiomachines:solar3', 'enderio:enabled': (byte) 1]),

        item('enderio:block_lava_generator'),
        item('enderio:block_enhanced_sag_mill'),
        item('enderio:block_simple_sag_mill'),
        item('enderio:block_stirling_generator'),
        item('enderio:block_sag_mill'),
        item('enderio:block_combustion_generator'),
        item('enderio:block_enhanced_combustion_generator'),
        item('enderio:block_simple_stirling_generator'),
        item('enderio:block_simple_furnace'),
        item('enderio:block_simple_alloy_smelter'),
        item('enderio:block_alloy_smelter'),
        item('enderio:block_enhanced_alloy_smelter'),
)

// Hide JEI categories
[
        'LavaGenerator',
        'StirlingGenerator',
        'SolarPanel',
        'GrindingBall',
        'SagMill',
        'CombustionGenerator',
        'AlloySmelter',
].each {
    mods.jei.category.hideCategory(it)
}

// EIO metals to gregtech 
// End Alloy
ALLOY_SMELTER.recipeBuilder()
        .inputs([item('minecraft:ender_eye'), item('enderio:item_alloy_ingot')])
        .outputs([item('enderio:item_alloy_ingot', 8)])
        .duration(160)
        .EUt(1024)
        .buildAndRegister()

// Energetic Alloy
ALLOY_SMELTER.recipeBuilder()
        .inputs([ore('dustGlowstone'), ore('ingotGold') * 2])
        .outputs([item('enderio:item_alloy_ingot', 1) * 2])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

// Electric steel
ALLOY_SMELTER.recipeBuilder()
        .inputs([ore('ingotIron'), ore('dustSilicon')])
        .outputs([item('enderio:item_alloy_ingot')])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

// Vibrant alloy
ALLOY_SMELTER.recipeBuilder()
        .inputs([item('enderio:item_alloy_ingot', 1) * 2, ore('enderpearl')])
        .outputs([item('enderio:item_alloy_ingot', 2) * 2])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

// Dark steel
ALLOY_SMELTER.recipeBuilder()
        .inputs([ore('ingotSteel'), ore('stoneObsidian')])
        .outputs([item('enderio:item_alloy_ingot', 6)])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

// Soularium
ALLOY_SMELTER.recipeBuilder()
        .inputs([item('minecraft:soul_sand'), ore('ingotGold')])
        .outputs([item('enderio:item_alloy_ingot', 7)])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

// Pulsating iron ingot
ALLOY_SMELTER.recipeBuilder()
        .inputs([ore('ingotIron'), ore('dustUranium')])
        .outputs([item('enderio:item_alloy_ingot', 5)])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

ALLOY_SMELTER.recipeBuilder()
        .inputs([ore('ingotIron'), ore('ingotUranium')])
        .outputs([item('enderio:item_alloy_ingot', 5)])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

// Conductive iron
ALLOY_SMELTER.recipeBuilder()
        .inputs([ore('dustRedstone'), ore('ingotIron')])
        .outputs([item('enderio:item_alloy_ingot', 4)])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

// Red alloy
ALLOY_SMELTER.recipeBuilder()
        .inputs([ore('dustRedstone'), ore('itemSilicon')])
        .outputs([item('enderio:item_alloy_ingot', 3)])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

// Organic black dye
ALLOY_SMELTER.recipeBuilder()
        .inputs([item('minecraft:coal'), item('minecraft:tallgrass', 1) * 2])
        .outputs([item('enderio:item_material', 50) * 2])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

// Organic brown dye
ALLOY_SMELTER.recipeBuilder()
        .inputs([item('minecraft:coal', 1), ore('treeSapling') * 4])
        .outputs([item('enderio:item_material', 49) * 2])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

ALLOY_SMELTER.recipeBuilder()
        .inputs([item('minecraft:quartz') * 4])
        .outputs([item('enderio:block_fused_quartz')])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

MIXER.recipeBuilder()
        .inputs([ore('gravel') * 4, ore('sand') * 4])
        .fluidInputs(fluid('water') * 1000)
        .outputs([ore('itemBinderComposite').getFirst() * 16])
        .duration(80)
        .EUt(500)
        .buildAndRegister()

ALLOY_BLAST_SMELTER.recipeBuilder()
        .inputs([ore('dustStarmetalAlloy') * 5, ore('dustAmericium') * 4, ore('dustNetherStar')])
        .fluidOutputs(fluid('molten.stellar_alloy') * 1440)
        .duration(420)
        .blastFurnaceTemp(8100)
        .EUt(2430)
        .buildAndRegister()

SOLIDIFIER.recipeBuilder()
        .fluidInputs(fluid('molten.stellar_alloy') * 144)
        .notConsumable(metaitem('shape.mold.ingot'))
        .outputs(item('enderio:item_alloy_endergy_ingot', 3))
        .duration(20)
        .EUt(8)
        .buildAndRegister()

crafting.removeByOutput(item('enderio:block_soul_binder'))

crafting.addShaped(gtqt('block_soul_binder'), item('enderio:block_soul_binder'), [
        [item('enderio:item_alloy_ingot', 7), item('minecraft:skull', 2), item('enderio:item_alloy_ingot', 7)],
        [item('minecraft:skull', 2), item('enderio:item_material', 53), item('minecraft:skull', 2)],
        [item('enderio:item_alloy_ingot', 7), item('minecraft:skull', 2), item('enderio:item_alloy_ingot', 7)]
])

crafting.addShapeless(gtqt('invisible_block_convert'), item('enderio:block_decoration1', 15), [item('enderio:item_conduit_facade', 2)])

crafting.addShaped(gtqt('item_conduit_facade'), item('enderio:item_conduit_facade', 2), [
        [null, null, null],
        [null, item('enderio:item_conduit_facade'), item('appliedenergistics2:quartz_vibrant_glass')],
        [null, null, null]
])

crafting.addShaped(gtqt('item_conduit_facade_2'), item('enderio:item_conduit_facade', 2), [
        [item('enderio:item_material', 4), item('enderio:item_material', 4), item('enderio:item_material', 4)],
        [item('enderio:item_material', 4), item('appliedenergistics2:quartz_vibrant_glass'), item('enderio:item_material', 4)],
        [item('enderio:item_material', 4), item('enderio:item_material', 4), item('enderio:item_material', 4)]
])

crafting.removeByOutput(item('enderio:block_decoration1', 15))

crafting.removeByOutput(item('enderio:item_conduit_facade', 2))

ASSEMBLER.recipeBuilder()
        .inputs([ore('plateDoubleSteel'), item('enderio:item_alloy_ingot', 6)])
        .outputs([item('enderio:item_dark_steel_upgrade')])
        .duration(100)
        .EUt(30)
        .buildAndRegister()


crafting.removeByOutput(item('enderio:item_yeta_wrench'))

crafting.addShaped(gtqt('item_yeta_wrench'), item('enderio:item_yeta_wrench'), [
        [null, item('minecraft:iron_ingot'), null],
        [null, ore('ingotTin'), null],
        [item('minecraft:iron_ingot'), null, item('minecraft:iron_ingot')]
])

crafting.removeByOutput(item('enderio:block_tele_pad'))

ASSEMBLER.recipeBuilder()
        .inputs([metaitem('emitter.mv'), metaitem('sensor.mv'), item('enderio:block_cap_bank', 3), metaitem('hull.mv') * 3])
        .outputs([item('enderio:block_tele_pad') * 9])
        .duration(180)
        .EUt(480)
        .buildAndRegister()

MACERATOR.recipeBuilder()
        .inputs([item('enderio:item_material', 14)])
        .outputs([item('enderio:item_material', 36)])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

MACERATOR.recipeBuilder()
        .inputs([item('enderio:item_material', 16)])
        .outputs([item('enderio:item_material', 37)])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

MACERATOR.recipeBuilder()
        .inputs([item('enderio:item_material', 19)])
        .outputs([item('enderio:item_material', 34)])
        .duration(160)
        .EUt(30)
        .buildAndRegister()

ARC_FURNACE.recipeBuilder()
        .inputs([ore('dustCoke') * 64])
        .fluidInputs(fluid('fire_water') * 100)
        .outputs([item('enderio:item_material', 20) * 64])
        .duration(120)
        .EUt(28)
        .buildAndRegister()


crafting.addShaped(item('enderio:item_redstone_conduit') * 8, [
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')],
        [ore('ingotRedAlloy'), ore('ingotRedAlloy'), ore('ingotRedAlloy')],
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')]
])

crafting.addShaped(item('enderio:item_material', 41), [
        [ore('ingotSoularium'), ore('ingotIron'), ore('ingotSoularium')],
        [ore('dustSilicon'), item('minecraft:skull', 2), ore('dustSilicon')],
        [ore('dustSilicon'), item('minecraft:redstone_block'), ore('dustSilicon')]
])

crafting.addShapeless(item('enderio:item_material', 1), [ore('dyeBlack'), ore('itemSimpleMachineChassi')])

crafting.addShapeless(item('enderio:item_material', 53), [ore('dyeSoulMachine'), ore('itemMachineChassi')])

crafting.addShapeless(item('enderio:item_material', 54), [ore('ingotDarkSteel'), ore('itemMachineChassi')])

crafting.addShaped(item('enderio:item_endergy_conduit', 2) * 8, [
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')],
        [ore('ingotAluminium'), ore('itemConduitBinder'), ore('ingotAluminium')],
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')]
])

crafting.addShaped(item('enderio:item_power_conduit') * 8, [
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')],
        [ore('ingotStainlessSteel'), item('enderio:item_endergy_conduit', 2), ore('ingotStainlessSteel')],
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')]
])

crafting.addShaped(item('enderio:item_power_conduit', 1) * 8, [
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')],
        [ore('ingotTitanium'), item('enderio:item_power_conduit'), ore('ingotTitanium')],
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')]
])

crafting.addShaped(item('enderio:item_power_conduit', 2) * 8, [
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')],
        [ore('ingotTungstenSteel'), item('enderio:item_power_conduit', 1), ore('ingotTungstenSteel')],
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')]
])

crafting.addShaped(item('enderio:item_endergy_conduit', 11) * 8, [
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')],
        [ore('wireGtSingleMaxSuperconductor'), ore('wireGtSingleMaxSuperconductor'), ore('wireGtSingleMaxSuperconductor')],
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')]
])

mods.enderio.vat.remove(fluid('rocket_fuel') * 1000)
crafting.removeByOutput(item('enderio:item_extract_speed_upgrade'))

crafting.addShaped(item('enderio:item_extract_speed_upgrade'), [[ore('ingotIron'), ore('ingotIron'), ore('ingotIron')], [ore('ingotBronze'), ore('craftingPiston'), ore('ingotBronze')], [ore('ingotBronze'), ore('dustRedstone'), ore('ingotBronze')]])
crafting.removeByOutput(item('enderio:item_liquid_conduit', 2))
crafting.removeByOutput(item('enderio:item_liquid_conduit'))
crafting.addShaped(item('enderio:item_liquid_conduit') * 8, [[ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')], [item('minecraft:glass'), item('minecraft:glass'), item('minecraft:glass')], [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')]])
crafting.addShaped(item('enderio:item_liquid_conduit', 2) * 8, [[ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')], [ore('nuggetPulsatingIron'), item('enderio:item_liquid_conduit', 1), ore('nuggetPulsatingIron')], [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')]])
crafting.addShaped(item('enderio:item_liquid_conduit', 2) * 8, [[ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')], [ore('nuggetPulsatingIron'), ore('fusedQuartz'), ore('nuggetPulsatingIron')], [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')]])

crafting.removeByOutput(item('enderio:block_farm_station'))


ASSEMBLER.recipeBuilder()
        .inputs(item('gregtech:mte', 986))
        .inputs(ore('circuitLv') * 2)
        .inputs(ore('skullZombieController'))
        .inputs(ore('toolHoe'))
        .outputs(item('enderio:block_farm_station'))
        .circuitMeta(0)
        .duration(160)
        .EUt(30)
        .buildAndRegister()


crafting.removeByOutput(item('enderio:item_advanced_item_filter'))
crafting.addShaped(item('enderio:item_advanced_item_filter'), [[ore('plateRedstone'), ore('plateDiamond'), ore('plateRedstone')], [ore('plateDiamond'), item('enderio:item_basic_item_filter'), ore('plateDiamond')], [ore('plateRedstone'), ore('plateDiamond'), ore('plateRedstone')]])


crafting.removeByOutput(item('enderio:item_capacitor_stellar'))
crafting.addShaped(item('enderio:item_capacitor_stellar'), [[ore('plateSterlingSilver'), ore('dustSilverChloride'), ore('plateSterlingSilver')], [item('enderio:item_basic_capacitor', 2), item('minecraft:lapis_block'), item('enderio:item_basic_capacitor', 2)], [ore('plateSterlingSilver'), ore('dustSilverChloride'), ore('plateSterlingSilver')]])


FORMING_PRESS.recipeBuilder()
        .inputs(ore('ingotSoularium') * 2, ore('itemSkull'), ore('dustSilicon') * 2, ore('ingotVibrantAlloy'))
        .outputs(item('enderio:item_material', 43))
        .EUt(16)
        .duration(150)
        .buildAndRegister()


crafting.addShaped(item('enderio:block_dark_fused_quartz') * 8, [[ore('blockGlassHardened'), ore('blockGlassHardened'), ore('blockGlassHardened')], [ore('blockGlassHardened'), ore('dyeBlack'), ore('blockGlassHardened')], [ore('blockGlassHardened'), ore('blockGlassHardened'), ore('blockGlassHardened')]])
crafting.addShaped(item('enderio:block_enlightened_fused_quartz') * 8, [[ore('blockGlassHardened'), ore('blockGlassHardened'), ore('blockGlassHardened')], [ore('blockGlassHardened'), item('astralsorcery:itemusabledust'), ore('blockGlassHardened')], [ore('blockGlassHardened'), ore('blockGlassHardened'), ore('blockGlassHardened')]])
crafting.addShaped(item('enderio:block_dark_fused_quartz') * 8, [[ore('blockGlassHardened'), ore('blockGlassHardened'), ore('blockGlassHardened')], [ore('blockGlassHardened'), item('astralsorcery:itemusabledust', 1), ore('blockGlassHardened')], [ore('blockGlassHardened'), ore('blockGlassHardened'), ore('blockGlassHardened')]])
crafting.addShaped(item('enderio:block_enlightened_fused_quartz') * 8, [[ore('blockGlassHardened'), ore('blockGlassHardened'), ore('blockGlassHardened')], [ore('blockGlassHardened'), ore('dustGlowstone'), ore('blockGlassHardened')], [ore('blockGlassHardened'), ore('blockGlassHardened'), ore('blockGlassHardened')]])
crafting.addShaped(item('enderio:item_broken_spawner'), [[ore('dustSoularium'), ore('dyeSoulMachine'), ore('dustSoularium')], [ore('dyeSoulMachine'), ore('itemSoulMachineChassi'), ore('dyeSoulMachine')], [ore('dustSoularium'), ore('dyeSoulMachine'), ore('dustSoularium')]])


crafting.removeByOutput(item('enderio:item_big_item_filter'))
crafting.addShaped(item('enderio:item_big_item_filter'), [[ore('plateAluminium'), ore('plateRedstone'), ore('plateAluminium')], [ore('plateRedstone'), item('enderio:item_basic_item_filter'), ore('plateRedstone')], [ore('plateAluminium'), ore('plateRedstone'), ore('plateAluminium')]])

MIXER.recipeBuilder()
        .inputs(ore('sand') * 4)
        .inputs(ore('gravel') * 4)
        .circuitMeta(3)
        .fluidInputs(fluid('water') * 1000)
        .outputs(ore('itemBinderComposite').getFirst() * 16)
        .EUt(500)
        .duration(80)
        .buildAndRegister()