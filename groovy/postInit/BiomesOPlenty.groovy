crafting.replaceShaped("biomesoplenty:mud_from_dirt", item('biomesoplenty:mud'),[[ore('dirt'), fluid('water') * 1000]]);
def UnwantedBOP = [
	item('biomesoplenty:biome_block'),
	item('biomesoplenty:biome_essence'),
	item('biomesoplenty:terrestrial_artifact'),
	item('biomesoplenty:biome_finder'),
	item('biomesoplenty:grass_path'),
	item('biomesoplenty:grass_path:1'),
	item('biomesoplenty:grass_path:2'),
	item('biomesoplenty:farmland_0'),
	item('biomesoplenty:farmland_0:1'),
	item('biomesoplenty:farmland_1'),
	item('biomesoplenty:double_plant:1'),
	item('biomesoplenty:green_dye')
]

for (item in UnwantedBOP) {
	mods.jei.ingredient.removeAndHide(item)
}

ore('plantCattail').remove(item('biomesoplenty:double_plant:1'))
ore('dyeGreen').remove(item('biomesoplenty:green_dye'))
ore('logWood').remove(item('biomesoplenty:log_4:4'))
ore('treeLeaves').remove(item('biomesoplenty:leaves_6:8'), item('biomesoplenty:leaves_6:9'))

///////////////	Harder Wood Recipes
def woodCompat(log, plank, stair, slab, fence, fenceGate, door, boat){
	crafting.removeByOutput(plank)
	crafting.addShapeless(plank * 2,[log])
	crafting.addShaped(plank * 4,[[ore('toolSaw')],[log]])
	mods.gregtech.cutter.recipeBuilder().inputs(log).fluidInputs(fluid('water') * 4).outputs(plank * 6, metaitem('dustWood') * 2).duration(400).EUt(7).buildAndRegister()
	mods.gregtech.cutter.recipeBuilder().inputs(log).fluidInputs(fluid('distilled_water') * 3).outputs(plank * 6, metaitem('dustWood') * 2).duration(300).EUt(7).buildAndRegister()
	mods.gregtech.cutter.recipeBuilder().inputs(log).fluidInputs(fluid('lubricant') * 1).outputs(plank * 6, metaitem('dustWood') * 2).duration(200).EUt(7).buildAndRegister()
	mods.gregtech.macerator.recipeBuilder().inputs(plank).outputs(metaitem('dustWood')).duration(98).EUt(2).buildAndRegister()
	mods.gregtech.assembler.recipeBuilder().inputs(plank * 6).outputs(stair * 4).circuitMeta(7).duration(100).EUt(1).buildAndRegister()
	mods.gregtech.macerator.recipeBuilder().inputs(stair).outputs(metaitem('dustSmallWood') * 6).duration(147).EUt(2).buildAndRegister()
	crafting.removeByOutput(slab)
	crafting.addShaped(slab * 2,[[ore('toolSaw'), plank]])
	mods.gregtech.cutter.recipeBuilder().inputs(plank).fluidInputs(fluid('water') * 4).outputs(slab * 2).duration(400).EUt(7).buildAndRegister()
	mods.gregtech.cutter.recipeBuilder().inputs(plank).fluidInputs(fluid('distilled_water') * 3).outputs(slab * 2).duration(300).EUt(7).buildAndRegister()
	mods.gregtech.cutter.recipeBuilder().inputs(plank).fluidInputs(fluid('lubricant') * 1).outputs(slab * 2).duration(200).EUt(7).buildAndRegister()
	mods.gregtech.macerator.recipeBuilder().inputs(slab).outputs(metaitem('dustSmallWood') * 2).duration(49).EUt(2).buildAndRegister()
	crafting.removeByOutput(fence)
	crafting.addShaped(fence,[[plank, ore('stickWood'), plank],[plank, ore('stickWood'), plank],[plank, ore('stickWood'), plank]])
	mods.gregtech.assembler.recipeBuilder().inputs(plank).outputs(fence).circuitMeta(1).duration(100).EUt(4).buildAndRegister()
	mods.gregtech.macerator.recipeBuilder().inputs(fence).outputs(metaitem('dustWood')).duration(98).EUt(2).buildAndRegister()
	crafting.removeByOutput(fenceGate)
	crafting.addShaped(fenceGate,[[ore('gemFlint'), null, ore('gemFlint')],[plank, ore('stickWood'), plank],[plank, ore('stickWood'), plank]])
	crafting.addShaped(fenceGate * 2,[[ore('screwIron'), ore('toolScrewdriver'), ore('screwIron')],[plank, ore('stickWood'), plank],[plank, ore('stickWood'), plank]])
	mods.gregtech.assembler.recipeBuilder().inputs(plank * 2, ore('stickWood') * 2).outputs(fenceGate).circuitMeta(2).duration(100).EUt(4).buildAndRegister()
	mods.gregtech.macerator.recipeBuilder().inputs(fenceGate).outputs(metaitem('dustWood') * 3).duration(294).EUt(2).buildAndRegister()
	crafting.removeByOutput(door)
	crafting.addShaped(door,[[plank, item('minecraft:trapdoor'), ore('toolScrewdriver')],[plank, ore('ringIron'), ore('screwIron')],[plank, plank, ore('toolSaw')]])
	mods.gregtech.assembler.recipeBuilder().inputs(item('minecraft:trapdoor'), plank * 4).fluidInputs(fluid('iron') * 16).outputs(door).duration(400).EUt(4).buildAndRegister()
	mods.gregtech.macerator.recipeBuilder().inputs(door).outputs(metaitem('dustWood') * 2, metaitem('dustTinyIron')).duration(202).EUt(2).buildAndRegister()
	mods.gregtech.arc_furnace.recipeBuilder().inputs(door).fluidInputs(fluid('oxygen') * 9).outputs(metaitem('nuggetWroughtIron'), metaitem('dustSmallAsh')).duration(9).EUt(30).buildAndRegister()
	crafting.removeByOutput(boat)
	crafting.addShaped(boat,[[plank, item('minecraft:wooden_shovel'), plank],[plank, ore('toolKnife'), plank],[slab, slab, slab]])
	mods.gregtech.assembler.recipeBuilder().inputs(plank * 5).outputs(boat).circuitMeta(15).duration(100).EUt(4).buildAndRegister()
	mods.gregtech.macerator.recipeBuilder().inputs(boat).outputs(metaitem('dustWood') * 5).duration(490).EUt(2).buildAndRegister()
	//furnace.removeByInput(log)
}

woodCompat(item('biomesoplenty:log_0:4'), item('biomesoplenty:planks_0'), item('biomesoplenty:sacred_oak_stairs'), item('biomesoplenty:wood_slab_0'), item('biomesoplenty:sacred_oak_fence'), item('biomesoplenty:sacred_oak_fence_gate'), item('biomesoplenty:sacred_oak_door'), item('biomesoplenty:boat_sacred_oak'))
woodCompat(item('biomesoplenty:log_0:5'), item('biomesoplenty:planks_0:1'), item('biomesoplenty:cherry_stairs'), item('biomesoplenty:wood_slab_0:1'), item('biomesoplenty:cherry_fence'), item('biomesoplenty:cherry_fence_gate'), item('biomesoplenty:cherry_door'), item('biomesoplenty:boat_cherry'))
woodCompat(item('biomesoplenty:log_0:6'), item('biomesoplenty:planks_0:2'), item('biomesoplenty:umbran_stairs'), item('biomesoplenty:wood_slab_0:2'), item('biomesoplenty:umbran_fence'), item('biomesoplenty:umbran_fence_gate'), item('biomesoplenty:umbran_door'), item('biomesoplenty:boat_umbran'))
woodCompat(item('biomesoplenty:log_0:7'), item('biomesoplenty:planks_0:3'), item('biomesoplenty:fir_stairs'), item('biomesoplenty:wood_slab_0:3'), item('biomesoplenty:fir_fence'), item('biomesoplenty:fir_fence_gate'), item('biomesoplenty:fir_door'), item('biomesoplenty:boat_fir'))
woodCompat(item('biomesoplenty:log_1:4'), item('biomesoplenty:planks_0:4'), item('biomesoplenty:ethereal_stairs'), item('biomesoplenty:wood_slab_0:4'), item('biomesoplenty:ethereal_fence'), item('biomesoplenty:ethereal_fence_gate'), item('biomesoplenty:ethereal_door'), item('biomesoplenty:boat_ethereal'))
woodCompat(item('biomesoplenty:log_1:5'), item('biomesoplenty:planks_0:5'), item('biomesoplenty:magic_stairs'), item('biomesoplenty:wood_slab_0:5'), item('biomesoplenty:magic_fence'), item('biomesoplenty:magic_fence_gate'), item('biomesoplenty:magic_door'), item('biomesoplenty:boat_magic'))
woodCompat(item('biomesoplenty:log_1:6'), item('biomesoplenty:planks_0:6'), item('biomesoplenty:mangrove_stairs'), item('biomesoplenty:wood_slab_0:6'), item('biomesoplenty:mangrove_fence'), item('biomesoplenty:mangrove_fence_gate'), item('biomesoplenty:mangrove_door'), item('biomesoplenty:boat_mangrove'))
woodCompat(item('biomesoplenty:log_1:7'), item('biomesoplenty:planks_0:7'), item('biomesoplenty:palm_stairs'), item('biomesoplenty:wood_slab_0:7'), item('biomesoplenty:palm_fence'), item('biomesoplenty:palm_fence_gate'), item('biomesoplenty:palm_door'), item('biomesoplenty:boat_palm'))
woodCompat(item('biomesoplenty:log_2:4'), item('biomesoplenty:planks_0:8'), item('biomesoplenty:redwood_stairs'), item('biomesoplenty:wood_slab_1'), item('biomesoplenty:redwood_fence'), item('biomesoplenty:redwood_fence_gate'), item('biomesoplenty:redwood_door'), item('biomesoplenty:boat_redwood'))
woodCompat(item('biomesoplenty:log_2:5'), item('biomesoplenty:planks_0:9'), item('biomesoplenty:willow_stairs'), item('biomesoplenty:wood_slab_1:1'), item('biomesoplenty:willow_fence'), item('biomesoplenty:willow_fence_gate'), item('biomesoplenty:willow_door'), item('biomesoplenty:boat_willow'))
woodCompat(item('biomesoplenty:log_2:6'), item('biomesoplenty:planks_0:10'), item('biomesoplenty:pine_stairs'), item('biomesoplenty:wood_slab_1:2'), item('biomesoplenty:pine_fence'), item('biomesoplenty:pine_fence_gate'), item('biomesoplenty:pine_door'), item('biomesoplenty:boat_pine'))
woodCompat(item('biomesoplenty:log_2:7'), item('biomesoplenty:planks_0:11'), item('biomesoplenty:hellbark_stairs'), item('biomesoplenty:wood_slab_1:3'), item('biomesoplenty:hellbark_fence'), item('biomesoplenty:hellbark_fence_gate'), item('biomesoplenty:hellbark_door'), item('biomesoplenty:boat_hellbark'))
woodCompat(item('biomesoplenty:log_3:4'), item('biomesoplenty:planks_0:12'), item('biomesoplenty:jacaranda_stairs'), item('biomesoplenty:wood_slab_1:4'), item('biomesoplenty:jacaranda_fence'), item('biomesoplenty:jacaranda_fence_gate'), item('biomesoplenty:jacaranda_door'), item('biomesoplenty:boat_jacaranda'))
woodCompat(item('biomesoplenty:log_3:5'), item('biomesoplenty:planks_0:13'), item('biomesoplenty:mahogany_stairs'), item('biomesoplenty:wood_slab_1:5'), item('biomesoplenty:mahogany_fence'), item('biomesoplenty:mahogany_fence_gate'), item('biomesoplenty:mahogany_door'), item('biomesoplenty:boat_mahogany'))
woodCompat(item('biomesoplenty:log_3:6'), item('biomesoplenty:planks_0:14'), item('biomesoplenty:ebony_stairs'), item('biomesoplenty:wood_slab_1:6'), item('biomesoplenty:ebony_fence'), item('biomesoplenty:ebony_fence_gate'), item('biomesoplenty:ebony_door'), item('biomesoplenty:boat_ebony'))
woodCompat(item('biomesoplenty:log_3:7'), item('biomesoplenty:planks_0:15'), item('biomesoplenty:eucalyptus_stairs'), item('biomesoplenty:wood_slab_1:7'), item('biomesoplenty:eucalyptus_fence'), item('biomesoplenty:eucalyptus_fence_gate'), item('biomesoplenty:eucalyptus_door'), item('biomesoplenty:boat_eucalyptus'))

//furnace.removeByInput(item('biomesoplenty:log_4:5'))

///////////////	Grass, Dirt & Coarse Dirt
crafting.removeByOutput(item('biomesoplenty:dirt:8'))
crafting.removeByOutput(item('biomesoplenty:dirt:9'))
crafting.removeByOutput(item('biomesoplenty:dirt:10'))

mods.gregtech.mixer.recipeBuilder().inputs(ore('gravel'), item('biomesoplenty:dirt')).outputs(item('biomesoplenty:dirt:8') * 2).duration(100).EUt(4).buildAndRegister()
mods.gregtech.mixer.recipeBuilder().inputs(ore('gravel'), item('biomesoplenty:dirt:1')).outputs(item('biomesoplenty:dirt:9') * 2).duration(100).EUt(4).buildAndRegister()
mods.gregtech.mixer.recipeBuilder().inputs(ore('gravel'), item('biomesoplenty:dirt:2')).outputs(item('biomesoplenty:dirt:10') * 2).duration(100).EUt(4).buildAndRegister()

/*mods.gregtech.centrifuge.recipeBuilder().inputs(item('biomesoplenty:dirt') | item('biomesoplenty:dirt:8')).chancedOutput(metaitem('plant_ball'), 3000, 1200).chancedOutput(item('minecraft:clay'), 500, 120).chancedOutput(metaitem('dustClay'), 450, 100).duration(250).EUt(30).buildAndRegister()
mods.gregtech.centrifuge.recipeBuilder().inputs(item('biomesoplenty:dirt:1') | item('biomesoplenty:dirt:9')).chancedOutput(metaitem('plant_ball'), 3000, 1200).chancedOutput(item('minecraft:sand'), 5000, 1200).chancedOutput(metaitem('dustClay'), 450, 100).duration(250).EUt(30).buildAndRegister()
mods.gregtech.centrifuge.recipeBuilder().inputs(item('biomesoplenty:dirt:2') | item('biomesoplenty:dirt:10')).chancedOutput(metaitem('plant_ball'), 3000, 1200).chancedOutput(item('minecraft:gravel'), 5000, 1200).chancedOutput(metaitem('dustClay'), 450, 100).duration(250).EUt(30).buildAndRegister()

mods.gregtech.centrifuge.recipeBuilder().inputs(item('biomesoplenty:grass:2')).chancedOutput(metaitem('plant_ball'), 3000, 1200).chancedOutput(item('minecraft:clay'), 500, 120).chancedOutput(metaitem('dustClay'), 450, 100).duration(250).EUt(30).buildAndRegister()
mods.gregtech.centrifuge.recipeBuilder().inputs(item('biomesoplenty:grass:3') | item('biomesoplenty:grass:5') | item('biomesoplenty:grass:7')).chancedOutput(metaitem('plant_ball'), 3000, 1200).chancedOutput(item('minecraft:sand'), 5000, 1200).chancedOutput(metaitem('dustClay'), 450, 100).duration(250).EUt(30).buildAndRegister()
mods.gregtech.centrifuge.recipeBuilder().inputs(item('biomesoplenty:grass:4')).chancedOutput(metaitem('plant_ball'), 3000, 1200).chancedOutput(item('minecraft:gravel'), 5000, 1200).chancedOutput(metaitem('dustClay'), 450, 100).duration(250).EUt(30).buildAndRegister()*/

///////////////	Remove All Gems
def removeGem(gem, gemOreDict, block, blockOreDict, ore, oreOreDict){
	mods.jei.ingredient.removeAndHide(gem)
	mods.jei.ingredient.removeAndHide(block)
	mods.jei.ingredient.removeAndHide(ore)
	gemOreDict.remove(gem)
	blockOreDict.remove(block)
	oreOreDict.remove(ore)
	furnace.removeByInput(ore)
}

removeGem(item('biomesoplenty:gem'), ore('gemAmethyst'), item('biomesoplenty:gem_block'), ore('blockAmethyst'), item('biomesoplenty:gem_ore'), ore('oreAmethyst'))
removeGem(item('biomesoplenty:gem:1'), ore('gemRuby'), item('biomesoplenty:gem_block:1'), ore('blockRuby'), item('biomesoplenty:gem_ore:1'), ore('oreRuby'))
removeGem(item('biomesoplenty:gem:2'), ore('gemPeridot'), item('biomesoplenty:gem_block:2'), ore('blockPeridot'), item('biomesoplenty:gem_ore:2'), ore('orePeridot'))
removeGem(item('biomesoplenty:gem:3'), ore('gemTopaz'), item('biomesoplenty:gem_block:3'), ore('blockTopaz'), item('biomesoplenty:gem_ore:3'), ore('oreTopaz'))
removeGem(item('biomesoplenty:gem:4'), ore('gemTanzanite'), item('biomesoplenty:gem_block:4'), ore('blockTanzanite'), item('biomesoplenty:gem_ore:4'), ore('oreTanzanite'))
removeGem(item('biomesoplenty:gem:5'), ore('gemMalachite'), item('biomesoplenty:gem_block:5'), ore('blockMalachite'), item('biomesoplenty:gem_ore:5'), ore('oreMalachite'))
removeGem(item('biomesoplenty:gem:6'), ore('gemSapphire'), item('biomesoplenty:gem_block:6'), ore('blockSapphire'), item('biomesoplenty:gem_ore:6'), ore('oreSapphire'))
removeGem(item('biomesoplenty:gem:7'), ore('gemAmber'), item('biomesoplenty:gem_block:7'), ore('blockAmber'), item('biomesoplenty:gem_ore:7'), ore('oreAmber'))

///////////////	Dyes
ore('dyeWhite').remove(item('minecraft:dye:15'))
crafting.addShapeless(item('biomesoplenty:white_dye'),[item('minecraft:dye:15')])
mods.gregtech.extractor.recipeBuilder().inputs(item('minecraft:dye:15')).outputs(item('biomesoplenty:white_dye') * 2).duration(400).EUt(2).buildAndRegister()

ore('dyeBlack').remove(item('minecraft:dye'))
crafting.addShapeless(item('biomesoplenty:black_dye'),[item('minecraft:dye')])
mods.gregtech.extractor.recipeBuilder().inputs(item('minecraft:dye')).outputs(item('biomesoplenty:black_dye') * 2).duration(400).EUt(2).buildAndRegister()

ore('dyeBrown').remove(item('minecraft:dye:3'))
crafting.addShaped(item('gregtech:meta_dust:1614'),[[item('minecraft:dye:3')],[ore('toolMortar')]])
crafting.addShapeless(item('biomesoplenty:brown_dye'),[ore('dustCocoa')])

ore('dyeBrown').remove(item('gregtech:meta_dust:376'))
crafting.addShapeless(item('biomesoplenty:brown_dye'),[ore('dustMetalMixture')])

ore('dyeBlue').remove(item('minecraft:dye:4'))
ore('dyeBlue').remove(item('gregtech:meta_dust:2007'))
crafting.addShaped(item('gregtech:meta_dust:2007'),[[ore('gemLapis')],[ore('toolMortar')]])
crafting.addShapeless(item('biomesoplenty:blue_dye'),[ore('dustLapis')])

ore('dyeBlue').remove(item('gregtech:meta_gem:316'))
ore('dyeBlue').remove(item('gregtech:meta_dust:316'))
crafting.addShaped(item('gregtech:meta_dust:316'),[[ore('gemSodalite')],[ore('toolMortar')]])
crafting.addShapeless(item('biomesoplenty:blue_dye'),[ore('dustSodalite')])

ore('dyeBlue').remove(item('gregtech:meta_gem:289'))
ore('dyeBlue').remove(item('gregtech:meta_dust:289'))
crafting.addShaped(item('gregtech:meta_dust:289'),[[ore('gemLazurite')],[ore('toolMortar')]])
crafting.addShapeless(item('biomesoplenty:blue_dye'),[ore('dustLazurite')])

///////////////	Flowers to Dyes
def FlowersToDyes = [
    'plantRafflesia':			'minecraft:dye:1',
    'plantCattail':			'biomesoplenty:brown_dye',
    'flowerClover':			'minecraft:dye:7',
    'flowerSwampflower':		'minecraft:dye:6',
    'flowerDeathbloom':			'biomesoplenty:black_dye',
    'flowerGlowflower':			'minecraft:dye:6',
    'flowerBlueHydrangea':		'minecraft:dye:12',
    'flowerOrangeCosmos':		'minecraft:dye:14',
    'flowerPinkDaffodil':		'minecraft:dye:9',
    'flowerWildflower':			'minecraft:dye:13',
    'flowerViolet':			'minecraft:dye:5',
    'flowerWhiteAnemone':		'biomesoplenty:white_dye',
    'flowerEnderlotus':			'biomesoplenty:black_dye',
    'flowerBromeliad':			'minecraft:dye:1',
    'flowerWiltedLily':			'minecraft:dye:8',
    'flowerPinkHibiscus':		'minecraft:dye:9',
    'flowerLilyOfTheValley':		'biomesoplenty:white_dye',
    'flowerBurningBlossom':		'minecraft:dye:14',
    'flowerLavender':			'minecraft:dye:5',
    'flowerGoldenrod':			'minecraft:dye:11',
    'flowerBluebells':	 		'biomesoplenty:blue_dye',
    'flowerMinersDelight':		'minecraft:dye:9',
    'flowerIcyIris':			'minecraft:dye:12',
    'flowerRose':			'minecraft:dye:1'
]

for (entry in FlowersToDyes) {
	crafting.removeByInput(ore(entry.getKey()))
	crafting.addShapeless(item(entry.getValue()), [ore(entry.getKey())])
	mods.gregtech.extractor.recipeBuilder().inputs(ore(entry.getKey())).outputs(item(entry.getValue()) * 2).duration(400).EUt(2).buildAndRegister()
}

mods.gregtech.extractor.recipeBuilder().inputs(ore('plantFlax')).outputs(item('minecraft:dye:12') * 3).duration(400).EUt(2).buildAndRegister()

///////////////	Mushrooms
crafting.removeByInput(item('biomesoplenty:mushroom:2'))
crafting.removeByInput(item('biomesoplenty:mushroom:3'))
crafting.removeByInput(item('biomesoplenty:mushroom:4'))

crafting.replaceShapeless(item('minecraft:mushroom_stew'), [ore('foodMushroompowder'), ore('foodMushroompowder'), item('minecraft:bowl')])
crafting.replaceShaped(item('minecraft:rabbit_stew'), [[null, item('minecraft:cooked_rabbit'), null],[ore('cropCarrot'), item('minecraft:baked_potato'), ore('foodMushroompowder')],[null, item('minecraft:bowl'), null]])

crafting.removeByOutput(item('biomesoplenty:shroompowder:0'))

def mushroom = [
	item('biomesoplenty:mushroom'),
	item('biomesoplenty:mushroom:1'),
	item('biomesoplenty:mushroom:2'),
	item('biomesoplenty:mushroom:3'),
	item('biomesoplenty:mushroom:4'),
	item('biomesoplenty:mushroom:5')
]

for (constituent in mushroom) {
	mods.gregtech.mixer.recipeBuilder().inputs(item('minecraft:spider_eye'), constituent, ore('dustSugar')).outputs(item('minecraft:fermented_spider_eye')).duration(100).EUt(7).buildAndRegister()
	mods.gregtech.brewery.recipeBuilder().inputs(constituent).fluidInputs(fluid('water') * 20).fluidOutputs(fluid('biomass') * 20).duration(160).EUt(3).buildAndRegister()
	mods.gregtech.compressor.recipeBuilder().inputs(constituent * 8).outputs(metaitem('plant_ball')).duration(300).EUt(2).buildAndRegister()
	mods.gregtech.centrifuge.recipeBuilder().inputs(constituent).fluidOutputs(fluid('methane') * 18).duration(144).EUt(5).buildAndRegister()
	crafting.addShaped(item('biomesoplenty:shroompowder:0'), [[constituent],[ore('toolMortar')]])
	mods.gregtech.macerator.recipeBuilder().inputs(constituent).outputs(item('biomesoplenty:shroompowder:0')).duration(200).EUt(2).buildAndRegister()
}

crafting.addShaped(item('biomesoplenty:shroompowder:0'), [[item('minecraft:red_mushroom')],[ore('toolMortar')]])
crafting.addShaped(item('biomesoplenty:shroompowder:0'), [[item('minecraft:brown_mushroom')],[ore('toolMortar')]])
mods.gregtech.macerator.recipeBuilder().inputs(item('minecraft:red_mushroom')).outputs(item('biomesoplenty:shroompowder:0')).duration(200).EUt(2).buildAndRegister()
mods.gregtech.macerator.recipeBuilder().inputs(item('minecraft:brown_mushroom')).outputs(item('biomesoplenty:shroompowder:0')).duration(200).EUt(2).buildAndRegister()

///////////////	White Sand & Sandstone
mods.gregtech.mixer.recipeBuilder().inputs(item('minecraft:sand'), metaitem('dustDiorite')).fluidInputs(fluid('dye_white') * 144).outputs(item('biomesoplenty:white_sand')).duration(240).EUt(30).buildAndRegister()
mods.gregtech.forge_hammer.recipeBuilder().inputs(item('biomesoplenty:white_sandstone')).outputs(item('biomesoplenty:white_sand')).duration(400).EUt(2).buildAndRegister()

crafting.removeByOutput(item('biomesoplenty:white_sandstone'))
mods.gregtech.compressor.recipeBuilder().inputs(item('biomesoplenty:white_sand') * 4).outputs(item('biomesoplenty:white_sandstone')).duration(300).EUt(2).buildAndRegister()
mods.gregtech.assembler.recipeBuilder().inputs(item('biomesoplenty:white_sandstone:2')).outputs(item('biomesoplenty:white_sandstone')).circuitMeta(1).duration(50).EUt(4).buildAndRegister()

crafting.removeByOutput(item('biomesoplenty:white_sandstone:1'))
mods.gregtech.laser_engraver.recipeBuilder().inputs(item('biomesoplenty:white_sandstone')).notConsumable(ore('craftingLensWhite')).outputs(item('biomesoplenty:white_sandstone:1')).duration(50).EUt(16).buildAndRegister()

crafting.removeByOutput(item('biomesoplenty:white_sandstone:2'))
mods.gregtech.assembler.recipeBuilder().inputs(item('biomesoplenty:white_sandstone')).outputs(item('biomesoplenty:white_sandstone:2')).circuitMeta(1).duration(50).EUt(4).buildAndRegister()

crafting.removeByOutput(item('biomesoplenty:white_sandstone_stairs'))
crafting.addShaped(item('biomesoplenty:white_sandstone_stairs') * 4,[[item('biomesoplenty:white_sandstone'), null, null],[item('biomesoplenty:white_sandstone'), item('biomesoplenty:white_sandstone'), null],[item('biomesoplenty:white_sandstone'), item('biomesoplenty:white_sandstone'), item('biomesoplenty:white_sandstone')]])
mods.gregtech.assembler.recipeBuilder().inputs(item('biomesoplenty:white_sandstone') * 6).outputs(item('biomesoplenty:white_sandstone_stairs') * 4).circuitMeta(7).duration(100).EUt(1).buildAndRegister()

crafting.removeByOutput(item('biomesoplenty:other_slab:1'))
crafting.addShaped(item('biomesoplenty:other_slab:1'),[[ore('toolSaw'), item('biomesoplenty:white_sandstone')]])
mods.gregtech.cutter.recipeBuilder().inputs(item('biomesoplenty:white_sandstone')).fluidInputs(fluid('water') * 4).outputs(item('biomesoplenty:other_slab:1') * 2).duration(50).EUt(7).buildAndRegister()
mods.gregtech.cutter.recipeBuilder().inputs(item('biomesoplenty:white_sandstone')).fluidInputs(fluid('distilled_water') * 3).outputs(item('biomesoplenty:other_slab:1') * 2).duration(37).EUt(7).buildAndRegister()
mods.gregtech.cutter.recipeBuilder().inputs(item('biomesoplenty:white_sandstone')).fluidInputs(fluid('lubricant') * 1).outputs(item('biomesoplenty:other_slab:1') * 2).duration(25).EUt(7).buildAndRegister()

//furnace.removeByInput(item('biomesoplenty:white_sand'))

///////////////	Mud & Mud Bricks
crafting.removeByOutput(item('biomesoplenty:mud'))
mods.gregtech.compressor.recipeBuilder().inputs(ore('ballMud') * 4).outputs(item('biomesoplenty:mud')).duration(300).EUt(2).buildAndRegister()
mods.gregtech.chemical_bath.recipeBuilder().inputs(ore('dirt')).fluidInputs(fluid('water') * 1000).outputs(item('biomesoplenty:mud')).duration(300).EUt(2).buildAndRegister()
mods.gregtech.extractor.recipeBuilder().inputs(item('biomesoplenty:mud')).outputs(item('biomesoplenty:mudball') * 4).duration(300).EUt(2).buildAndRegister()

//mods.gregtech.mixer.removeByInput(30, [item('minecraft:dirt:0'), metaitem('dustWood') * 2, item('minecraft:sand:0') * 4], [fluid('water') * 1000])
mods.gregtech.mixer.recipeBuilder().inputs(ore('dirt'), metaitem('dustWood') * 2, ore('sand') * 4).fluidInputs(fluid('water') * 1000).outputs(metaitem('fertilizer')).duration(100).EUt(30).buildAndRegister()
mods.gregtech.mixer.recipeBuilder().inputs(ore('ballMud') * 4, metaitem('dustWood') * 2, ore('sand') * 4).outputs(metaitem('fertilizer')).duration(100).EUt(30).buildAndRegister()
mods.gregtech.mixer.recipeBuilder().inputs(ore('blockMud'), metaitem('dustWood') * 2, ore('sand') * 4).outputs(metaitem('fertilizer')).duration(100).EUt(30).buildAndRegister()

mods.gregtech.alloy_smelter.recipeBuilder().inputs(ore('ballMud')).notConsumable(metaitem('shape.mold.ingot')).outputs(item('biomesoplenty:mud_brick')).duration(200).EUt(2).buildAndRegister()

crafting.removeByOutput(item('biomesoplenty:mud_brick_block'))
crafting.addShaped(item('biomesoplenty:mud_brick_block') * 2,[[item('biomesoplenty:mud_brick'), item('biomesoplenty:mud_brick'), item('biomesoplenty:mud_brick')],[item('biomesoplenty:mud_brick'), item('minecraft:water_bucket'), item('biomesoplenty:mud_brick')],[item('biomesoplenty:mud_brick'), item('biomesoplenty:mud_brick'), item('biomesoplenty:mud_brick')]])
mods.gregtech.compressor.recipeBuilder().inputs(item('biomesoplenty:mud_brick') * 4).outputs(item('biomesoplenty:mud_brick_block')).duration(300).EUt(2).buildAndRegister()

crafting.removeByOutput(item('biomesoplenty:mud_brick_stairs'))
crafting.addShaped(item('biomesoplenty:mud_brick_stairs') * 4,[[item('biomesoplenty:mud_brick_block'), null, null],[item('biomesoplenty:mud_brick_block'), item('biomesoplenty:mud_brick_block'), null],[item('biomesoplenty:mud_brick_block'), item('biomesoplenty:mud_brick_block'), item('biomesoplenty:mud_brick_block')]])
mods.gregtech.assembler.recipeBuilder().inputs(item('biomesoplenty:mud_brick_block') * 6).outputs(item('biomesoplenty:mud_brick_stairs') * 4).circuitMeta(7).duration(100).EUt(1).buildAndRegister()

crafting.removeByOutput(item('biomesoplenty:other_slab'))
crafting.addShaped(item('biomesoplenty:other_slab'),[[ore('toolSaw'), item('biomesoplenty:mud_brick_block')]])
mods.gregtech.cutter.recipeBuilder().inputs(item('biomesoplenty:mud_brick_block')).fluidInputs(fluid('water') * 4).outputs(item('biomesoplenty:other_slab') * 2).duration(100).EUt(7).buildAndRegister()
mods.gregtech.cutter.recipeBuilder().inputs(item('biomesoplenty:mud_brick_block')).fluidInputs(fluid('distilled_water') * 3).outputs(item('biomesoplenty:other_slab') * 2).duration(75).EUt(7).buildAndRegister()
mods.gregtech.cutter.recipeBuilder().inputs(item('biomesoplenty:mud_brick_block')).fluidInputs(fluid('lubricant') * 1).outputs(item('biomesoplenty:other_slab') * 2).duration(50).EUt(7).buildAndRegister()

///////////////	Jar
crafting.removeByOutput(item('biomesoplenty:jar_empty'))
crafting.addShapeless(item('biomesoplenty:jar_empty'), [item('minecraft:glass_bottle')])
crafting.addShapeless(item('minecraft:glass_bottle'), [item('biomesoplenty:jar_empty')])

///////////////	Honey & Honeycomb
mods.gregtech.extractor.recipeBuilder().inputs(item('biomesoplenty:honey_block')).fluidOutputs(fluid('honey') * 1000).duration(1200).EUt(40).buildAndRegister()
mods.gregtech.fluid_solidifier.recipeBuilder().fluidInputs(fluid('honey') * 1000).notConsumable(metaitem('shape.mold.block')).outputs(item('biomesoplenty:honey_block')).duration(400).EUt(40).buildAndRegister()
mods.gregtech.canner.recipeBuilder().inputs(item('biomesoplenty:jar_empty')).fluidInputs(fluid('honey') * 250).outputs(item('biomesoplenty:jar_filled')).duration(200).EUt(7).buildAndRegister()

crafting.removeByOutput(item('biomesoplenty:hive:1'))
crafting.removeByOutput(item('biomesoplenty:hive:3'))
mods.gregtech.compressor.recipeBuilder().inputs(item('biomesoplenty:honeycomb')).outputs(item('biomesoplenty:hive:1')).duration(300).EUt(2).buildAndRegister()
mods.gregtech.compressor.recipeBuilder().inputs(item('biomesoplenty:filled_honeycomb')).outputs(item('biomesoplenty:hive:3')).duration(300).EUt(2).buildAndRegister()
mods.gregtech.extractor.recipeBuilder().inputs(item('biomesoplenty:hive:1')).outputs(item('biomesoplenty:honeycomb')).duration(100).EUt(2).buildAndRegister()
mods.gregtech.extractor.recipeBuilder().inputs(item('biomesoplenty:hive:3')).outputs(item('biomesoplenty:filled_honeycomb')).duration(100).EUt(2).buildAndRegister()

mods.gregtech.canner.recipeBuilder().inputs(item('biomesoplenty:honeycomb')).fluidInputs(fluid('honey') * 100).outputs(item('biomesoplenty:filled_honeycomb')).duration(300).EUt(7).buildAndRegister()
mods.gregtech.extractor.recipeBuilder().inputs(item('biomesoplenty:filled_honeycomb')).outputs(item('biomesoplenty:honeycomb')).fluidOutputs(fluid('honey') * 100).duration(1200).EUt(40).buildAndRegister()

mods.gregtech.centrifuge.recipeBuilder().fluidInputs(fluid('honey') * 1000).outputs(item('minecraft:sugar')).chancedOutput(item('minecraft:sugar'), 5000, 2400).fluidOutputs(fluid('water') * 200).duration(240).EUt(30).buildAndRegister()

///////////////	Dried Sand
crafting.removeByOutput(item('minecraft:sand'))
mods.gregtech.mixer.recipeBuilder().inputs(item('biomesoplenty:dried_sand')).fluidInputs(fluid('water') * 1000).outputs(item('minecraft:sand')).duration(300).EUt(2).buildAndRegister()

///////////////	Hardened Ice
mods.gregtech.compressor.recipeBuilder().inputs(item('minecraft:packed_ice') * 16).outputs(item('biomesoplenty:hard_ice')).duration(300).EUt(2).buildAndRegister()
mods.gregtech.macerator.recipeBuilder().inputs(item('biomesoplenty:hard_ice')).outputs(metaitem('dustIce') * 32).duration(192).EUt(2).buildAndRegister()

///////////////	Flesh
crafting.removeByOutput(item('biomesoplenty:flesh'))
mods.gregtech.compressor.recipeBuilder().inputs(item('biomesoplenty:fleshchunk') * 4).outputs(item('biomesoplenty:flesh')).duration(300).EUt(2).buildAndRegister()
mods.gregtech.forge_hammer.recipeBuilder().inputs(item('biomesoplenty:flesh')).outputs(item('biomesoplenty:fleshchunk') * 4).duration(300).EUt(2).buildAndRegister()
mods.gregtech.centrifuge.recipeBuilder().inputs(item('biomesoplenty:fleshchunk')).outputs(metaitem('dustMeat')).fluidOutputs(fluid('blood') * 10).duration(180).EUt(7).buildAndRegister()

///////////////	Blood
mods.gregtech.centrifuge.recipeBuilder().fluidInputs(fluid('blood') * 100).fluidOutputs(fluid('water') * 50).chancedOutput(metaitem('dustIron'), 500, 120).duration(240).EUt(30).buildAndRegister()

///////////////	Pile of Ashes
crafting.remove('biomesoplenty:coal_from_ash')
crafting.remove('biomesoplenty:gray_dye_from_ash')
mods.gregtech.centrifuge.recipeBuilder().inputs(item('biomesoplenty:ash')).outputs(metaitem('dustAsh')).duration(250).EUt(6).buildAndRegister()

///////////////	Celestial Crystal
crafting.removeByOutput(item('biomesoplenty:crystal'))
mods.gregtech.compressor.recipeBuilder().inputs(item('biomesoplenty:crystal_shard') * 4).outputs(item('biomesoplenty:crystal')).duration(300).EUt(2).buildAndRegister()

///////////////	Cattails
crafting.remove('biomesoplenty:white_wool_from_cattails')
mods.gregtech.compressor.recipeBuilder().inputs(ore('plantCattail') * 9).outputs(item('minecraft:wool')).duration(80).EUt(30).buildAndRegister()

///////////////	Lilypads
mods.gregtech.packer.recipeBuilder().inputs(item('minecraft:waterlily'), item('minecraft:red_flower:8')).outputs(item('biomesoplenty:waterlily:3')).duration(100).EUt(7).buildAndRegister()
crafting.addShapeless(item('minecraft:waterlily'), [item('biomesoplenty:waterlily:3'), item('minecraft:shears').transformDamage()])

def lilypad(item, product){
	mods.gregtech.cutter.recipeBuilder().inputs(item).fluidInputs(fluid('water') * 6).outputs(product).duration(144).EUt(30).buildAndRegister()
	mods.gregtech.cutter.recipeBuilder().inputs(item).fluidInputs(fluid('distilled_water') * 5).outputs(product).duration(108).EUt(30).buildAndRegister()
	mods.gregtech.cutter.recipeBuilder().inputs(item).fluidInputs(fluid('lubricant') * 1).outputs(product).duration(72).EUt(30).buildAndRegister()
}
lilypad(item('minecraft:waterlily'), item('biomesoplenty:waterlily') * 2)
lilypad(item('biomesoplenty:waterlily'), item('biomesoplenty:waterlily:1') * 2)
lilypad(item('biomesoplenty:waterlily:1'), item('biomesoplenty:waterlily:2') * 2)
