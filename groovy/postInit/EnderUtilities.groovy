static gtqt(String name) {
	return 'gtqt:' + name
}

static gtqtId(String name) {
	return resource('gtqt', name)
}

// Hide items from JEI
mods.jei.ingredient.yeet(
        item('enderutilities:nullifier'),
        item('enderutilities:pickupmanager'),
        item('enderutilities:quickstacker'),
        item('enderutilities:portalscaler'),
        item('enderutilities:ruler'),
        item('enderutilities:syringe', 3),
        item('enderutilities:syringe', 2),
        item('enderutilities:syringe', 1),
        item('enderutilities:syringe'),
        item('enderutilities:void_pickaxe'),
        item('enderutilities:portal_panel'),
        item('enderutilities:frame'),
        item('enderutilities:sound_block'),
        item('enderutilities:machine_1'),
        item('enderutilities:machine_0'),
        item('enderutilities:machine_1', 1),
        item('enderutilities:machine_1', 2),
        item('enderutilities:molecular_exciter'),
        item('enderutilities:endertool', 1),
        item('enderutilities:endertool', 2),
        item('enderutilities:endertool', 3),
        item('enderutilities:icemelter'),
        item('enderutilities:icemelter', 1),
        item('enderutilities:enderpart', 40),
        item('enderutilities:enderpart', 30),
        item('enderutilities:enderpart', 45),
        item('enderutilities:enderpart', 50),
        item('enderutilities:msu'),
        item('enderutilities:msu', 1),
        item('enderutilities:energy_bridge', 2),
        item('enderutilities:energy_bridge'),
        item('enderutilities:nullifier'),
        item('enderutilities:endersword'),
        item('enderutilities:endertool'),
        item('enderutilities:enderporter', 1),
        item('enderutilities:energy_bridge', 1),
        item('enderutilities:mobharness'),
        item('enderutilities:builderswand'),
        item('enderutilities:dolly'),
        item('enderutilities:enderarrow'),
        item('enderutilities:enderbow'),
        item('enderutilities:endercapacitor', 3)
                .withNbt(['EnderChargeAmount': 1000000000]),
        item('enderutilities:endercapacitor', 3),
        item('enderutilities:endercapacitor', 2)
                .withNbt(['EnderChargeAmount': 500000]),
        item('enderutilities:endercapacitor', 2),
        item('enderutilities:endercapacitor', 1)
                .withNbt(['EnderChargeAmount': 100000]),
        item('enderutilities:endercapacitor', 1),
        item('enderutilities:endercapacitor')
                .withNbt(['EnderChargeAmount': 10000]),
        item('enderutilities:endercapacitor'),
        item('enderutilities:linkcrystal', 2),
        item('enderutilities:enderpearlreusable', 1),
        item('enderutilities:enderporter'),
        item('enderutilities:enderbag'),
        item('enderutilities:enderbucket'),
        item('enderutilities:chairwand'),
        item('enderutilities:linkcrystal'),
        item('enderutilities:linkcrystal', 1),
        item('enderutilities:livingmanipulator'),
        item('enderutilities:inventoryswapper'),
        item('enderutilities:draw_bridge', 1),
        item('enderutilities:draw_bridge'),
        item('enderutilities:inserter', 1),
        item('enderutilities:inserter'),
        item('enderutilities:machine_1', 3),
        item('enderutilities:enderpart', 81),
        item('enderutilities:enderlasso'),
        item('enderutilities:enderpart', 21),
        item('enderutilities:enderpart', 20),
        item('enderutilities:floor'),
        item('enderutilities:floor', 1),
        item('enderutilities:phasing'),
        item('enderutilities:phasing', 1),
        item('enderutilities:enderpart'),
        item('enderutilities:enderpart', 1),
        item('enderutilities:enderpart', 2),
        item('enderutilities:enderpart', 10),
        item('enderutilities:enderpart', 11),
        item('enderutilities:enderpart', 12),
        item('enderutilities:enderpart', 15),
        item('enderutilities:enderpart', 16),
        item('enderutilities:enderpart', 17),
        item('enderutilities:ender_elevator'),
        item('enderutilities:ender_elevator_slab'),
        item('enderutilities:ender_elevator_layer'),
        item('enderutilities:enderpart', 71)
)

// Recipe removals
[
        item('enderutilities:barrel'),
        item('enderutilities:asu'),
        item('enderutilities:handybag'),
        item('enderutilities:handybag', 1),
        item('enderutilities:pet_contract'),
        item('enderutilities:enderpart', 51),
        item('enderutilities:enderpart', 52),
        item('enderutilities:enderpart', 53),
        item('enderutilities:enderpart', 54),
        item('enderutilities:enderpart', 73),
        item('enderutilities:enderpart', 72),
        item('enderutilities:enderpart', 70),
        item('enderutilities:enderpart', 80),
        item('enderutilities:storage_0'),
        item('enderutilities:storage_0', 1),
        item('enderutilities:storage_0', 2),
        item('enderutilities:storage_0', 3),
        item('enderutilities:storage_0', 4),
        item('enderutilities:storage_0', 5),
        item('enderutilities:storage_0', 6)
].forEach {
    crafting.removeByOutput(it)
}

crafting.addShaped(item('enderutilities:pet_contract'), [
        [null, ore('dyeBlack'), ore('dyeBlack')],
        [ore('paper'), ore('paper'), ore('dyeBlack')],
        [ore('paper'), ore('paper'), null]
])


crafting.addShaped(item('enderutilities:enderpart', 54), [
        [ore('ingotPulsatingIron'), ore('circuitZpm'), ore('ingotPulsatingIron')],
        [ore('ingotPulsatingIron'), metaitem('super_chest.mv'), ore('ingotPulsatingIron')]
])

crafting.addShaped(item('enderutilities:enderpart', 53), [
        [ore('ingotPulsatingIron'), ore('circuitIv'), ore('ingotPulsatingIron')],
        [ore('ingotPulsatingIron'), metaitem('crate.tungstensteel'), ore('ingotPulsatingIron')]
])

crafting.addShaped(item('enderutilities:enderpart', 52), [
        [ore('ingotPulsatingIron'), ore('circuitEv'), ore('ingotPulsatingIron')],
        [ore('ingotPulsatingIron'), metaitem('crate.titanium'), ore('ingotPulsatingIron')]
])

crafting.addShaped(item('enderutilities:enderpart', 51), [
        [ore('ingotPulsatingIron'), ore('circuitHv'), ore('ingotPulsatingIron')],
        [ore('ingotPulsatingIron'), metaitem('crate.stainless_steel'), ore('ingotPulsatingIron')] // TODO: integrate Ironchests?
])

crafting.addShaped(item('enderutilities:storage_0', 6), [
        [ore('circuitZpm')],
        [item('enderutilities:storage_0', 5)],
        [ore('circuitZpm')]
])

crafting.addShaped(item('enderutilities:storage_0', 5), [
        [ore('circuitIv')],
        [item('enderutilities:storage_0', 4)],
        [ore('circuitIv')]
])

crafting.addShaped(item('enderutilities:storage_0', 4), [
        [ore('circuitEv')],
        [item('enderutilities:storage_0', 3)],
        [ore('circuitEv')]
])

crafting.addShaped(item('enderutilities:storage_0', 3), [
        [ore('circuitHv')],
        [metaitem('crate.stainless_steel')],
        [ore('circuitHv')]
])

crafting.addShaped(item('enderutilities:storage_0', 2), [
        [ore('circuitIv')],
        [item('enderutilities:storage_0', 1)],
        [item('enderutilities:storage_0', 1)]
])

crafting.addShaped(item('enderutilities:storage_0', 1), [
        [ore('circuitEv')],
        [item('enderutilities:storage_0')]
])

crafting.addShaped(item('enderutilities:storage_0'), [
        [ore('circuitHv')],
        [metaitem('crate.stainless_steel')]
])

crafting.addShaped(item('enderutilities:handybag', 1), [
        [ore('ingotPulsatingIron'), item('enderutilities:handybag'), ore('ingotPulsatingIron')],
        [item('enderutilities:handybag'), ore('circuitEv'), item('enderutilities:handybag')],
        [ore('ingotPulsatingIron'), item('enderutilities:handybag'), ore('ingotPulsatingIron')]
])

crafting.shapedBuilder()
        .name(gtqt('handy_bag'))
        .row('IBI')
        .row('BCB')
        .row('IBI')
        .key('I', ore('ingotPulsatingIron'))
        .key('B', item('travelersbackpack:travelers_backpack'))
        .key('C', ore('circuitHv'))
        .output(item('enderutilities:handybag'))
        .register()

crafting.addShaped(item('enderutilities:barrel'), [
        [ore('ingotPulsatingIron'), item('minecraft:chest'), ore('ingotPulsatingIron')],
        [item('minecraft:chest'), ore('chest,chestWood'), item('minecraft:chest')],
        [ore('ingotPulsatingIron'), item('minecraft:chest'), ore('ingotPulsatingIron')]
])

crafting.addShaped(item('enderutilities:asu'), [
        [ore('ingotPulsatingIron'), item('minecraft:comparator'), ore('ingotPulsatingIron')],
        [ore('ingotPulsatingIron'), item('minecraft:chest'), ore('ingotPulsatingIron')],
        [ore('ingotPulsatingIron'), item('minecraft:comparator'), ore('ingotPulsatingIron')]
])

crafting.addShaped(item('enderutilities:enderpart', 80), [
        [ore('ingotPulsatingIron'), ore('ingotPulsatingIron')],
        [ore('ingotPulsatingIron'), ore('nuggetPulsatingIron')],
        [null, ore('nuggetPulsatingIron')]
])

crafting.addShaped(item('enderutilities:enderpart', 70), [
        [ore('stickWood'), ore('stickWood'), ore('stickWood')],
        [ore('stickWood'), ore('ingotPulsatingIron'), ore('stickWood')],
        [ore('stickWood'), ore('stickWood'), ore('stickWood')]
])

crafting.addShaped(item('enderutilities:enderpart', 72), [
        [ore('ingotPulsatingIron'), item('minecraft:chest'), ore('ingotPulsatingIron')],
        [item('minecraft:chest'), item('enderutilities:barrel'), item('minecraft:chest')],
        [ore('ingotPulsatingIron'), item('minecraft:chest'), ore('ingotPulsatingIron')]
])

crafting.addShaped(item('enderutilities:enderpart', 73) * 2, [
        [item('minecraft:obsidian'), item('minecraft:obsidian'), item('minecraft:obsidian')],
        [item('minecraft:obsidian'), item('storagedrawers:upgrade_void'), item('minecraft:obsidian')],
        [item('minecraft:obsidian'), item('minecraft:obsidian'), item('minecraft:obsidian')]
])