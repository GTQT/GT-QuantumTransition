//凝胶
mods.gregtech.pr_mix.recipeBuilder()
    .inputs(item('thebetweenlands:sap_ball')*5,ore('dustSalt')*10)
	.fluidInputs(fluid('water') * 2000)
	.fluidOutputs(fluid('latex') * 1000)
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.pr_mix.recipeBuilder()
    .inputs(item('gregtech:rubber_log')*8,ore('dustSalt')*10)
	.fluidInputs(fluid('water') * 1600)
	.fluidOutputs(fluid('latex') * 800)
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.pr_mix.recipeBuilder()
    .inputs(item('gregtech:rubber_sapling')*8,ore('dustSalt')*10)
	.fluidInputs(fluid('water') * 800)
	.fluidOutputs(fluid('latex') * 400)
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.pr_mix.recipeBuilder()
    .inputs(item('thebetweenlands:sap_ball')*5,ore('dustRockSalt')*10)
	.fluidInputs(fluid('water') * 2000)
	.fluidOutputs(fluid('latex') * 1000)
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.pr_mix.recipeBuilder()
    .inputs(item('gregtech:rubber_log')*8,ore('dustRockSalt')*10)
	.fluidInputs(fluid('water') * 1600)
	.fluidOutputs(fluid('latex') * 800)
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.pr_mix.recipeBuilder()
    .inputs(item('gregtech:rubber_sapling')*8,ore('dustRockSalt')*10)
	.fluidInputs(fluid('water') * 800)
	.fluidOutputs(fluid('latex') * 400)
    .duration(600) 
    .buildAndRegister()
//仙人掌
mods.gregtech.coke_oven.recipeBuilder()
    .inputs(ore('blockCactus')*4)
    .outputs(item('gtqtcore:gtqt_meta_item_1', 21) * 1)
	.fluidOutputs(fluid('creosote') * 500)
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.coke_oven.recipeBuilder()
    .inputs(item('gtqtcore:gtqt_meta_item_1', 21) * 1)
    .outputs(item('gtqtcore:gtqt_meta_item_1', 20) * 1)
	.fluidOutputs(fluid('creosote') * 500)
    .duration(400) 
    .buildAndRegister()
//甘蔗
mods.gregtech.coke_oven.recipeBuilder()
    .inputs(item('minecraft:reeds')*4)
    .outputs(item('gtqtcore:gtqt_meta_item_1', 23) * 1)
		.fluidOutputs(fluid('creosote') * 50)
    .duration(600) 
	
mods.gregtech.coke_oven.recipeBuilder()
    .inputs(item('thebetweenlands:swamp_reed_item')*4)
    .outputs(item('gtqtcore:gtqt_meta_item_1', 23) * 1)
	.fluidOutputs(fluid('creosote') * 50)
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.coke_oven.recipeBuilder()
    .inputs(item('gtqtcore:gtqt_meta_item_1', 23) * 1)
    .outputs(item('gtqtcore:gtqt_meta_item_1', 22) * 1)
	.fluidOutputs(fluid('creosote') * 50)
    .duration(400) 
    .buildAndRegister()
//竹炭
mods.gregtech.coke_oven.recipeBuilder()
    .inputs(item('biomesoplenty:bamboo')*4)
    .outputs(item('gtqtcore:gtqt_meta_item_1', 24) * 1)
	.fluidOutputs(fluid('creosote') * 100)
    .duration(600) 
    .buildAndRegister()
	
	
//土高炉
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [item('minecraft:iron_ingot'), item('minecraft:coal') * 2], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [item('minecraft:iron_ingot'), metaitem('dustCoal') * 2], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [item('minecraft:iron_ingot'), item('minecraft:coal', 1) * 2], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [item('minecraft:iron_ingot'), metaitem('dustCharcoal') * 2], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [item('minecraft:iron_ingot'), metaitem('gemCoke')], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [item('minecraft:iron_ingot'), metaitem('dustCoke')], null)
// 钢块 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [item('minecraft:iron_block'), item('minecraft:coal_block') * 2], null)
// 钢块 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [item('minecraft:iron_block'), metaitem('blockCharcoal') * 2], null)
// 钢块 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [item('minecraft:iron_block'), metaitem('blockCoke')], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [metaitem('ingotWroughtIron'), item('minecraft:coal') * 2], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [metaitem('ingotWroughtIron'), metaitem('dustCoal') * 2], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [metaitem('ingotWroughtIron'), item('minecraft:coal', 1) * 2], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [metaitem('ingotWroughtIron'), metaitem('dustCharcoal') * 2], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [metaitem('ingotWroughtIron'), metaitem('gemCoke')], null)
// 钢锭 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [metaitem('ingotWroughtIron'), metaitem('dustCoke')], null)
// 钢块 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [metaitem('blockWroughtIron'), item('minecraft:coal_block') * 2], null)
// 钢块 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [metaitem('blockWroughtIron'), metaitem('blockCharcoal') * 2], null)
// 钢块 * 1
mods.gregtech.primitive_blast_furnace.removeByInput(1, [metaitem('blockWroughtIron'), metaitem('blockCoke')], null)


//炼钢（锻铁+2*焦煤=钢+2*灰烬 90秒）
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_ingot', 335),metaitem('gemCoke')*2)
    .outputs(item('gregtech:meta_ingot', 324),item('gregtech:meta_dust_tiny', 254)*2)
    .duration(1800) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_ingot', 335),metaitem('gemLignite')*2)
    .outputs(item('gregtech:meta_ingot', 324),item('gregtech:meta_dust_tiny', 254)*2)
    .duration(1800) 
    .buildAndRegister()

mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_ingot', 335),item('gtqtcore:gtqt_meta_item_1', 22)*2)
    .outputs(item('gregtech:meta_ingot', 324),item('gregtech:meta_dust_tiny', 254)*2)
    .duration(1800) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_ingot', 335),item('gtqtcore:gtqt_meta_item_1', 20)*2)
    .outputs(item('gregtech:meta_ingot', 324),item('gregtech:meta_dust_tiny', 254)*2)
    .duration(1800) 
    .buildAndRegister()
	
//炼钢（锻铁+2*木炭=钢+2*灰烬 120秒）
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_ingot', 335),item('minecraft:coal', 1)*2)
    .outputs(item('gregtech:meta_ingot', 324),item('gregtech:meta_dust_tiny', 254)*2)
    .duration(2400) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_ingot', 335),item('minecraft:coal')*2)
    .outputs(item('gregtech:meta_ingot', 324),item('gregtech:meta_dust_tiny', 254)*2)
    .duration(2400) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_ingot', 335),item('gtqtcore:gtqt_meta_item_1', 24)*2)
    .outputs(item('gregtech:meta_ingot', 324),item('gregtech:meta_dust_tiny', 254)*2)
    .duration(2400) 
    .buildAndRegister()
	
//炼钢（锻铁块+16*焦煤=钢块+16*灰烬 720秒）
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_block_compressed_20', 15),metaitem('gemCoke')*16)
    .outputs(item('gregtech:meta_block_compressed_20', 4),item('gregtech:meta_dust_tiny', 254)*16)
    .duration(14400) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_block_compressed_20', 15),metaitem('gemLignite')*16)
    .outputs(item('gregtech:meta_block_compressed_20', 4),item('gregtech:meta_dust_tiny', 254)*16)
    .duration(14400) 
    .buildAndRegister()

mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_block_compressed_20', 15),item('gtqtcore:gtqt_meta_item_1', 22)*16)
    .outputs(item('gregtech:meta_block_compressed_20', 4),item('gregtech:meta_dust_tiny', 254)*16)
    .duration(14400) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_block_compressed_20', 15),item('gtqtcore:gtqt_meta_item_1', 20)*16)
    .outputs(item('gregtech:meta_block_compressed_20', 4),item('gregtech:meta_dust_tiny', 254)*16)
    .duration(14400) 
    .buildAndRegister()
	
//炼钢（锻铁块+16*木炭=钢块+16*灰烬 960秒）
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_block_compressed_20', 15),item('minecraft:coal', 1)*16)
    .outputs(item('gregtech:meta_block_compressed_20', 4),item('gregtech:meta_dust_tiny', 254)*16)
    .duration(19200) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_block_compressed_20', 15),item('minecraft:coal')*16)
    .outputs(item('gregtech:meta_block_compressed_20', 4),item('gregtech:meta_dust_tiny', 254)*16)
    .duration(19200) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:meta_block_compressed_20', 15),item('gtqtcore:gtqt_meta_item_1', 24)*16)
    .outputs(item('gregtech:meta_block_compressed_20', 4),item('gregtech:meta_dust_tiny', 254)*16)
    .duration(19200) 
    .buildAndRegister()
	
//炼铁（矿+焦煤=锭+灰 60秒）
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_iron_0'),metaitem('gemCoke'))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_iron_0'),metaitem('gemLignite'))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()

mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_iron_0'),item('gtqtcore:gtqt_meta_item_1', 22))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_iron_0'),item('gtqtcore:gtqt_meta_item_1', 20))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_banded_iron_0'),metaitem('gemCoke'))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()

mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_banded_iron_0'),metaitem('gemLignite'))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_banded_iron_0'),item('gtqtcore:gtqt_meta_item_1', 22))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_banded_iron_0'),item('gtqtcore:gtqt_meta_item_1', 20))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_brown_limonite_0'),metaitem('gemCoke'))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_brown_limonite_0'),metaitem('gemLignite'))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()

mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_brown_limonite_0'),item('gtqtcore:gtqt_meta_item_1', 22))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_brown_limonite_0'),item('gtqtcore:gtqt_meta_item_1', 20))
    .outputs(item('minecraft:iron_ingot')*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
//炼铜（矿+焦煤=锭+灰 60秒）
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_copper_0'),metaitem('gemCoke'))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_copper_0'),metaitem('gemLignite'))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()

mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_copper_0'),item('gtqtcore:gtqt_meta_item_1', 22))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_copper_0'),item('gtqtcore:gtqt_meta_item_1', 20))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_chalcopyrite_0'),metaitem('gemCoke'))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_chalcopyrite_0'),metaitem('gemLignite'))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()

mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_chalcopyrite_0'),item('gtqtcore:gtqt_meta_item_1', 22))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_chalcopyrite_0'),item('gtqtcore:gtqt_meta_item_1', 20))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_tetrahedrite_0'),metaitem('gemCoke'))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()

mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_tetrahedrite_0'),metaitem('gemLignite'))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_tetrahedrite_0'),item('gtqtcore:gtqt_meta_item_1', 22))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.primitive_blast_furnace.recipeBuilder()
    .inputs(item('gregtech:ore_tetrahedrite_0'),item('gtqtcore:gtqt_meta_item_1', 20))
    .outputs(item('gregtech:meta_ingot', 25)*2,item('gregtech:meta_dust_tiny', 254))
    .duration(600) 
    .buildAndRegister()
	
mods.gregtech.forge_hammer.recipeBuilder()
    .inputs(metaitem('dustCoal')*2)
    .outputs(item('minecraft:coal'))
	.EUt(2)
    .duration(10) 
    .buildAndRegister()
	