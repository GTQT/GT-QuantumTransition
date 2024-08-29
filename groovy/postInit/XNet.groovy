def name_removals = [
        "xnet:netcable_0",
        "xnet:netcable_routing",
        "xnet:connector_0",
        "xnet:advanced_connector_0",
        "xnet:controller_rftools",
        "xnet:router_rftools",
        "xnet:wireless_router_rftools",
        "xnet:redstone_proxy_rftools",
        "xnet:redstone_proxy_upd",
        "xnet:connector_routing",
        "xnet:connector_upgrade",
        "xnet:xnet_manual",
        "xnet:netcable_1",
        "xnet:netcable_2",
        "xnet:netcable_3",
        "xnet:netcable_4",
        "xnet:antenna",
        "xnet:antenna_base",
        "xnet:antenna_dish"
]

for (item in name_removals) {
    crafting.remove(item);
}

crafting.addShapeless("xnet_redstone_proxy_1", item('xnet:redstone_proxy'), [item('xnet:redstone_proxy_upd')]);
crafting.addShapeless("xnet_redstone_proxy_2", item('xnet:redstone_proxy_upd'), [item('xnet:redstone_proxy')]);

crafting.addShaped("xnet_cable", item('xnet:netcable:0') * 24, [
        [ore('cableGtSingleTin'), ore('cableGtSingleTin'), ore('cableGtSingleTin')],
        [ore('pipeTinyFluidAluminium'), ore('pipeTinyFluidAluminium'), ore('pipeTinyFluidAluminium')],
        [metaitem('pipeTinyFluidSteel'), metaitem('pipeTinyFluidSteel'), metaitem('pipeTinyFluidSteel')]
]);

crafting.addShaped("xnet_cable_routing", item('xnet:netcable:4') * 48, [
        [ore('cableGtQuadrupleTin'), ore('cableGtQuadrupleTin'), ore('cableGtQuadrupleTin')],
        [ore('pipeTinyFluidAluminium'), ore('pipeTinyFluidAluminium'), ore('pipeTinyFluidAluminium')],
        [metaitem('pipeNormalFluidSteel'), metaitem('pipeNormalFluidSteel'), metaitem('pipeNormalFluidSteel')]
]);

crafting.addShaped("xnet_connector", item('xnet:connector:0') * 4, [
        [null, ore('circuitHv'), null],
        [metaitem('robot.arm.hv'), metaitem('hull.hv'), metaitem('electric.pump.hv')],
        [null, ore('wireGtSingleTin'), null]
]);

crafting.addShaped("xnet_connector_advanced", item('xnet:advanced_connector:0') * 4, [
        [null, ore('circuitEv'), null],
        [metaitem('robot.arm.ev'), metaitem('hull.ev'), metaitem('electric.pump.ev')],
        [null, ore('wireGtSingleAnnealedCopper'), null]
]);

crafting.addShaped("xnet_controller", item('xnet:controller'), [
        [item('xnet:netcable:0'), item('xnet:netcable:0'), item('xnet:netcable:0')],
        [ore('cableGtSingleCopper'), metaitem('hull.hv'), ore('cableGtSingleCopper')],
        [ore('pipeTinyFluidAluminium'), ore('circuitHv'), ore('pipeTinyFluidAluminium')]
]);

crafting.addShaped("xnet_router", item('xnet:router'), [
        [item('xnet:netcable:0'), item('xnet:connector:0'), item('xnet:netcable:0')],
        [ore('cableGtSingleCopper'), metaitem('hull.hv'), ore('cableGtSingleCopper')],
        [ore('pipeTinyFluidAluminium'), ore('circuitHv'), ore('pipeTinyFluidAluminium')]
]);

crafting.addShaped("xnet_redstone_proxy", item('xnet:redstone_proxy'), [
        [ore('cableGtSingleCopper'), ore('blockRedstone'), ore('cableGtSingleCopper')],
        [ore('cableGtSingleCopper'), metaitem('hull.hv'), ore('cableGtSingleCopper')],
        [ore('cableGtSingleCopper'), ore('cableGtSingleCopper'), ore('cableGtSingleCopper')]
]);

crafting.addShaped("xnet_routing_connector", item('xnet:connector:4'), [
        [ore('cableGtSingleCopper'), ore('cableGtSingleCopper'), ore('cableGtSingleCopper')],
        [ore('plateGold'), item('xnet:connector:0'), ore('plateGold')],
        [ore('cableGtSingleCopper'), ore('cableGtSingleCopper'), ore('cableGtSingleCopper')]
]);

crafting.addShaped("xnet_connector_upgrade", item('xnet:connector_upgrade'), [
        [ore('plateAluminium'), ore('plateAluminium'), ore('plateAluminium')],
        [metaitem('robot.arm.ev'), ore('circuitEv'), metaitem('electric.pump.ev')],
        [ore('plateAluminium'), ore('plateAluminium'), ore('plateAluminium')]
]);

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_yellow') * 18)
        .inputs(item('xnet:netcable'))
        .outputs(item('xnet:netcable', 2).withNbt(["display": ["LocName": "tile.xnet.netcable_yellow.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_yellow') * 18)
        .inputs(item('xnet:netcable', 1))
        .outputs(item('xnet:netcable', 2).withNbt(["display": ["LocName": "tile.xnet.netcable_yellow.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_yellow') * 18)
        .inputs(item('xnet:netcable', 3))
        .outputs(item('xnet:netcable', 2).withNbt(["display": ["LocName": "tile.xnet.netcable_yellow.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_blue') * 18)
        .inputs(item('xnet:netcable', 2))
        .outputs(item('xnet:netcable').withNbt(["display": ["LocName": "tile.xnet.netcable_blue.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_blue') * 18)
        .inputs(item('xnet:netcable', 1))
        .outputs(item('xnet:netcable').withNbt(["display": ["LocName": "tile.xnet.netcable_blue.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_blue') * 18)
        .inputs(item('xnet:netcable', 3))
        .outputs(item('xnet:netcable').withNbt(["display": ["LocName": "tile.xnet.netcable_blue.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_red') * 18)
        .inputs(item('xnet:netcable', 2))
        .outputs(item('xnet:netcable', 1).withNbt(["display": ["LocName": "tile.xnet.netcable_red.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_red') * 18)
        .inputs(item('xnet:netcable'))
        .outputs(item('xnet:netcable', 1).withNbt(["display": ["LocName": "tile.xnet.netcable_red.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_red') * 18)
        .inputs(item('xnet:netcable', 3))
        .outputs(item('xnet:netcable', 1).withNbt(["display": ["LocName": "tile.xnet.netcable_red.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_green') * 18)
        .inputs(item('xnet:netcable', 2))
        .outputs(item('xnet:netcable', 3).withNbt(["display": ["LocName": "tile.xnet.netcable_green.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_green') * 18)
        .inputs(item('xnet:netcable'))
        .outputs(item('xnet:netcable', 3).withNbt(["display": ["LocName": "tile.xnet.netcable_green.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();

mods.gregtech.chemical_bath.recipeBuilder()
        .fluidInputs(fluid('dye_green') * 18)
        .inputs(item('xnet:netcable', 1))
        .outputs(item('xnet:netcable', 3).withNbt(["display": ["LocName": "tile.xnet.netcable_green.name"]]))
        .duration(20)
        .EUt(7)
        .buildAndRegister();