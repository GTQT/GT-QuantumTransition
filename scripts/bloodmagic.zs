import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
// --- Vals ---

val pumpEv = <gregtech:meta_item_1:145>;
val pumpIv = <gregtech:meta_item_1:146>;
val pumpMv = <gregtech:meta_item_1:142>;
val conveyorMv = <gregtech:meta_item_1:158>;
val robotArmMv = <gregtech:meta_item_1:188>;
val pistonIv = <gregtech:meta_item_1:176>;
val motorIv = <gregtech:meta_item_1:131>;
val emitterHv = <gregtech:meta_item_1:219>;

// --- Removes ---
mods.jei.JEI.removeAndHide(<bloodmagic:blood_rune:2>);
mods.jei.JEI.removeAndHide(<bloodmagic:blood_rune:10>);
mods.jei.JEI.hide(<bloodmagic:ritual_stone:1>);
mods.jei.JEI.hide(<bloodmagic:ritual_stone:2>);
mods.jei.JEI.hide(<bloodmagic:ritual_stone:3>);
mods.jei.JEI.hide(<bloodmagic:ritual_stone:4>);
mods.jei.JEI.hide(<bloodmagic:ritual_stone:5>);
mods.jei.JEI.hide(<bloodmagic:ritual_stone:6>);

mods.jei.JEI.removeAndHide(<bloodmagic:blood_tank:*>);
mods.jei.JEI.removeAndHide(<bloodmagic:demon_extras:10>);
mods.jei.JEI.removeAndHide(<bloodmagic:demon_extras:11>);
mods.jei.JEI.removeAndHide(<bloodmagic:demon_extras:12>);
mods.jei.JEI.removeAndHide(<bloodmagic:demon_extras:13>);
mods.jei.JEI.removeAndHide(<bloodmagic:demon_extras:14>);
mods.jei.JEI.removeAndHide(<bloodmagic:inversion_pillar:*>);
mods.jei.JEI.removeAndHide(<bloodmagic:inversion_pillar_end:*>);

mods.jei.JEI.hideCategory("bloodmagic:binding");

// disable machines
//mods.jei.JEI.removeAndHide(<bloodmagic:soul_forge>);
//mods.jei.JEI.removeAndHide(<bloodmagic:alchemy_table>);
//mods.jei.JEI.removeAndHide(<bloodmagic:arcane_ashes>);
//mods.jei.JEI.hideCategory("bloodmagic:alchemyArray");
//mods.jei.JEI.hideCategory("bloodmagic:soulForge");
//mods.jei.JEI.hideCategory("bloodmagic:salchemyTable");

mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:30>, <bloodmagic:slate:2>);
mods.jei.JEI.removeAndHide(<bloodmagic:sigil_claw>);

mods.jei.JEI.removeAndHide(<bloodmagic:component:6>);
mods.jei.JEI.removeAndHide(<bloodmagic:component:14>);
mods.jei.JEI.removeAndHide(<bloodmagic:component:19>);
mods.jei.JEI.removeAndHide(<bloodmagic:component:20>);
mods.jei.JEI.removeAndHide(<bloodmagic:component:21>);
mods.jei.JEI.removeAndHide(<bloodmagic:component:22>);
mods.jei.JEI.removeAndHide(<bloodmagic:component:23>);
mods.jei.JEI.removeAndHide(<bloodmagic:component:24>);
mods.jei.JEI.removeAndHide(<bloodmagic:component:25>);
mods.jei.JEI.removeAndHide(<bloodmagic:component:26>);
mods.jei.JEI.removeAndHide(<bloodmagic:component:30>);
mods.jei.JEI.removeAndHide(<bloodmagic:experience_tome>);
mods.jei.JEI.removeAndHide(<bloodmagic:altar_maker>);

//mods.jei.JEI.removeAndHide(<bloodmagic:arcane_ashes>);
mods.jei.JEI.removeAndHide(<bloodmagic:soul_snare>);
mods.jei.JEI.removeAndHide(<bloodmagic:cutting_fluid:*>);
mods.jei.JEI.removeAndHide(<bloodmagic:alchemic_vial>);
mods.jei.JEI.removeAndHide(<bloodmagic:icarus_scroll>);


// --- Recipes ---

// Blood Altar
recipes.remove(<bloodmagic:altar>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("blood_altar", "", 100, 
	[<aspect:aqua> *20, <aspect:aer> *20, <aspect:ordo> *20, <aspect:perditio> *20, <aspect:ignis> *20, <aspect:terra> *20], 
	<bloodmagic:altar>, 
	[[<thaumcraft:stone_arcane_brick>, <twilightforest:maze_map_focus>, <thaumcraft:stone_arcane_brick>], 
	[<ore:compressed1xCobblestone>, <thaumcraft:crucible>, <ore:compressed1xCobblestone>], 
	[<ore:plateAluminium>, <thaumcraft:smelter_thaumium>, <ore:plateAluminium>]]);
	
	
	
// Blank Rune
recipes.remove(<bloodmagic:blood_rune>);
assembler.recipeBuilder()
	.inputs(<bloodmagic:slate> *4)
	.outputs(<bloodmagic:blood_rune>)
	.notConsumable(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}))
	.circuit(1)
	.fluidInputs([<liquid:concrete> *1152])
	.duration(200).EUt(64).buildAndRegister();
	

// Speed Rune
recipes.remove(<bloodmagic:blood_rune:1>);
mods.thaumcraft.Infusion.registerRecipe("speed_rune", "", <bloodmagic:blood_rune:1>, 2, 
	[<aspect:motus> *24, <aspect:volatus> *24, <aspect:potentia> *18, <aspect:aer> *12, <aspect:victus> *4], 
	<bloodmagic:blood_rune>, 
	[<bloodmagic:component:2>, <bloodmagic:slate:1>, <bloodmagic:slate:1>, <bloodmagic:component:2>, <bloodmagic:slate:1>, <bloodmagic:slate:1>]);
	
// Displacement Rune
recipes.remove(<bloodmagic:blood_rune:5>);
mods.thaumcraft.Infusion.registerRecipe("displacement_rune", "", <bloodmagic:blood_rune:5>, 6, 
	[<aspect:aqua> *32, <aspect:praecantatio> *24, <aspect:motus> *18, <aspect:potentia> *12, <aspect:terra> *8, <aspect:cognitio> *4], 
	<bloodmagic:blood_rune>, 
	[pumpEv, <ore:oreCrystalWater>, <bloodmagic:slate:2>, <ore:oreCrystalWater>, <bloodmagic:slate:2>, pumpEv, <ore:oreCrystalWater>, <bloodmagic:slate:2>, <ore:oreCrystalWater>, <bloodmagic:slate:2>]);
	
// Rune of Capacity
recipes.remove(<bloodmagic:blood_rune:6>);
mods.thaumcraft.Infusion.registerRecipe("rune_of_capacity", "", <bloodmagic:blood_rune:6>, 2, 
	[<aspect:terra> *32, <aspect:praecantatio> *24, <aspect:motus> *18, <aspect:potentia> *12, <aspect:ordo> *8, <aspect:cognitio> *4], 
	<bloodmagic:blood_rune>, 
	[<thaumcraft:salis_mundus>, <bloodmagic:slate:2>, <thaumcraft:salis_mundus>, <bloodmagic:slate:2>, <thaumcraft:salis_mundus>, <bloodmagic:slate:2>, <thaumcraft:salis_mundus>, <bloodmagic:slate:2>]);
			
// Rune of Augmented Capacity
recipes.remove(<bloodmagic:blood_rune:7>);
mods.thaumcraft.Infusion.registerRecipe("rune_of_augmented_capacity", "", <bloodmagic:blood_rune:7>, 4, 
	[<aspect:aqua> *32, <aspect:desiderium> *24, <aspect:alkimia> *18, <aspect:praecantatio> *12, <aspect:terra> *8, <aspect:vacuos> *4], 
	<bloodmagic:blood_rune>, 
	[<gregtech:machine:1612>, <gregtech:meta_item_1:491>, <bloodmagic:slate:2>, 
	<gregtech:machine:1612>, <gregtech:meta_item_1:491>, <bloodmagic:slate:2>,
	<gregtech:machine:1612>, <gregtech:meta_item_1:491>, <bloodmagic:slate:2>]);
			

// Rune of the Orb
recipes.remove(<bloodmagic:blood_rune:8>);
mods.thaumcraft.Infusion.registerRecipe("rune_of_the_orb", "", <bloodmagic:blood_rune:8>, 8, 
	[<aspect:potentia> *32, <aspect:victus> *24, <aspect:motus> *16, <aspect:desiderium> *8, <aspect:praecantatio> *4], 
	<bloodmagic:blood_rune>, 
	[<bloodmagic:slate:3>, <bloodmagic:blood_rune>, <gregtech:meta_item_1:491>, <bloodmagic:slate:3>,
	<gregtech:meta_item_1:35>, <bloodmagic:slate:3>, <gregtech:meta_item_1:35>, <bloodmagic:slate:3>, <gregtech:meta_item_1:491>, <bloodmagic:blood_rune>]);
			
// Acceleration Rune
recipes.remove(<bloodmagic:blood_rune:9>);
mods.thaumcraft.Infusion.registerRecipe("acceleration_rune", "", <bloodmagic:blood_rune:9>, 14, 
	[<aspect:potentia> *64, <aspect:aqua> *48, <aspect:motus> *32, <aspect:cognitio> *24, <aspect:desiderium> *16, <aspect:praecantatio> *8, <aspect:terra> *4], 
	<bloodmagic:blood_rune>, 
	[<bloodmagic:blood_rune:5>, <bloodarsenal:blood_diamond:2>, <bloodmagic:slate:4>, <gregtech:meta_item_1:491>, <bloodmagic:blood_rune>, pumpIv, 
	<bloodmagic:blood_rune:1>, <bloodarsenal:blood_diamond:2>, <bloodmagic:slate:4>, <gregtech:meta_item_1:491>, <bloodmagic:blood_rune>, pumpIv]);
		
// Imperfect Ritual Stone
recipes.remove(<bloodmagic:ritual_controller:1>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("imperfect_ritual_stone", "", 50, 
	[<aspect:aqua> *15, <aspect:aer> *15, <aspect:ordo> *15, <aspect:perditio> *15, <aspect:ignis> *15, <aspect:terra> *15], 
	<bloodmagic:ritual_controller:1>, 
	[[<ore:blockObsidian>, <bloodmagic:slate>, <ore:blockObsidian>], 
	[<bloodmagic:slate>, <bloodmagic:blood_rune>, <bloodmagic:slate>], 
	[<ore:blockObsidian>, <bloodmagic:slate>, <ore:blockObsidian>]]);
		
// Hellfire Forge
recipes.remove(<bloodmagic:soul_forge>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("soul_forge", "", 100, 
	[<aspect:aqua> *32, <aspect:aer> *32, <aspect:ordo> *32, <aspect:perditio> *32, <aspect:ignis> *32, <aspect:terra> *32], 
	<bloodmagic:soul_forge>, 
	[[<ore:plateAluminium>, <thaumcraft:slab_arcane_stone>, <ore:plateAluminium>], 
	[<thaumcraft:stone_arcane>, <bloodmagic:slate:1>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane_brick>, <bloodmagic:slate:1>, <thaumcraft:stone_arcane_brick>]]);


// Incense Altar
recipes.remove(<bloodmagic:incense_altar>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("incense_altar", "", 100, 
	[<aspect:aqua> *32, <aspect:aer> *32, <aspect:ordo> *32, <aspect:perditio> *32, <aspect:ignis> *32, <aspect:terra> *32], 
	<bloodmagic:incense_altar>, 
	[[<thaumcraft:slab_arcane_stone>, <ore:blockRoseGold>, <thaumcraft:slab_arcane_stone>], 
	[<thaumcraft:stone_arcane>, <bloodmagic:slate:1>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane_brick>, <bloodmagic:slate:1>, <thaumcraft:stone_arcane_brick>]]);
	
// Demon Crucible
recipes.remove(<bloodmagic:demon_crucible>);
mods.thaumcraft.Infusion.registerRecipe("demon_crucible", "", <bloodmagic:demon_crucible>, 12, 
	[<aspect:perditio> *24, <aspect:ordo> *24, <aspect:tenebrae> *16, <aspect:praecantatio> *6, <aspect:aer> *3], 
	<ore:blockStainlessSteel>, 
	[<forestry:refractory_wax>, <bloodmagic:slate:2>, <ore:craftingFurnace>, 
	<forestry:refractory_wax>, <bloodmagic:slate:2>, <ore:craftingFurnace>, 
	<forestry:refractory_wax>, <bloodmagic:slate:2>, <ore:craftingFurnace>]);
	
// Demon Pylon
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:stone>,  <minecraft:dye:4>, <bloodmagic:item_demon_crystal>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:stone>,  <minecraft:dye:4>, <bloodmagic:item_demon_crystal:1>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:stone>,  <minecraft:dye:4>, <bloodmagic:item_demon_crystal:2>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:stone>,  <minecraft:dye:4>, <bloodmagic:item_demon_crystal:3>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:stone>,  <minecraft:dye:4>, <bloodmagic:item_demon_crystal:4>]);
mods.thaumcraft.Infusion.registerRecipe("demon_pylon", "", <bloodmagic:demon_pylon>, 12, 
	[<aspect:perditio> *64, <aspect:ordo> *32, <aspect:tenebrae> *24, <aspect:praecantatio> *16, <aspect:cognitio> *8], 
	<ore:blockTitanium>, 
	[<bloodmagic:item_demon_crystal>, <bloodmagic:slate:3>, <bloodmagic:item_demon_crystal:1>, <bloodmagic:slate:3>, <bloodmagic:item_demon_crystal:2>, 
	<bloodmagic:slate:3>, <bloodmagic:item_demon_crystal:3>, <bloodmagic:slate:3>, <bloodmagic:item_demon_crystal:4>, <bloodmagic:slate:3>]);
	
// Demon Crystallizer
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_forge>, <minecraft:stone>, <minecraft:dye:4>, <minecraft:glass>]);
mods.thaumcraft.Infusion.registerRecipe("demon_crystallizer", "", <bloodmagic:demon_crystallizer>, 8, 
	[<aspect:perditio> *16, <aspect:ordo> *16, <aspect:tenebrae> *16, <aspect:praecantatio> *12, <aspect:vacuos> *8], 
	<ore:blockThaumium>, 
	[<ore:plateStainlessSteel>, <bloodmagic:slate:2>, <ore:plateStainlessSteel>, <bloodmagic:slate:2>, <ore:plateStainlessSteel>, 
	<bloodmagic:slate:2>, <ore:plateStainlessSteel>, <bloodmagic:slate:2>, <ore:plateStainlessSteel>, <bloodmagic:slate:2>]);
	
// Demon Will Cluster
recipes.remove(<bloodmagic:demon_crystal>);
compressor.recipeBuilder()
	.inputs([<bloodmagic:item_demon_crystal> *4])
	.outputs(<bloodmagic:demon_crystal>)
	.duration(2000).EUt(384).buildAndRegister();
	
// Corrosive Will Cluster
recipes.remove(<bloodmagic:demon_crystal:1>);
compressor.recipeBuilder()
	.inputs([<bloodmagic:item_demon_crystal:1> *4])
	.outputs(<bloodmagic:demon_crystal:1>)
	.duration(2000).EUt(384).buildAndRegister();
	
// Destructive Will Cluster
recipes.remove(<bloodmagic:demon_crystal:2>);
compressor.recipeBuilder()
	.inputs([<bloodmagic:item_demon_crystal:2> *4])
	.outputs(<bloodmagic:demon_crystal:2>)
	.duration(2000).EUt(384).buildAndRegister();
	
// Alchemy Table
recipes.remove(<bloodmagic:alchemy_table>);
mods.thaumcraft.Infusion.registerRecipe("alchemy_table", "", <bloodmagic:alchemy_table>, 6, 
	[<aspect:fabrico> *24, <aspect:instrumentum> *24, <aspect:praecantatio> *18, <aspect:victus> *12, <aspect:ignis> *12], 
	<minecraft:brewing_stand>, 
	[<forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <bloodmagic:slate>, <forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <bloodmagic:slate>, 
	<forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <bloodmagic:slate>, <forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <bloodmagic:slate>, 
	<forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <bloodmagic:slate>, <forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <bloodmagic:slate>]);

// Large Bloodstone Tile
recipes.remove(<bloodmagic:decorative_brick>);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:decorative_brick>, 
	[<bloodmagic:ritual_stone>, <bloodmagic:ritual_stone>, <bloodmagic:ritual_stone>, <bloodmagic:ritual_stone>, <bloodmagic:ritual_stone>, <bloodmagic:blood_shard>], 
	2500,200,0);

// Master Routing Node
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:diamond>, <bloodmagic:slate:2>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:master_routing_node>,
	[<ore:pipeNormalItemCobaltBrass>, robotArmMv, <bloodmagic:slate:2>], 
	400,200);
	
// Input Routing Node
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:gold_ingot>, <bloodmagic:item_routing_node>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:input_routing_node>,
	[<ore:pipeNormalRestrictiveBrass>, <bloodmagic:slate:2>], 
	400,25);

// Output Routing Node
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:iron_ingot>, <bloodmagic:item_routing_node>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:output_routing_node>,
	[<ore:pipeNormalItemCobaltBrass>, <bloodmagic:slate:2>], 
	400,25);

// Routing Node
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:glass>, <minecraft:stone>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:item_routing_node>,
	[conveyorMv, pumpMv, <bloodmagic:slate:2>], 
	400,5);

// Weak Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:diamond>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <gregtech:meta_block_compressed_0:2>, 0, 5000, 2,2);

// Apprentice Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:redstone_block>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <gregtech:meta_block_compressed_20:3>, 1, 10000, 2,2);

// Magician Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:gold_block>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <gregtech:meta_block_compressed_7:1>, 2, 30000, 2,2);

// Master Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:blood_shard>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}), <gregtech:meta_block_compressed_125:13>,3, 60000, 2,2);

// Archmage Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:nether_star>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <gregtech:meta_block_compressed_4:11>, 4, 120000, 2,2);

// Weak Activation Crystal
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:lava_crystal>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:activation_crystal>, <tconstruct:firewood:1>, 2, 20000, 2,2);

// Weak Activation Crystal
recipes.remove(<bloodmagic:activation_crystal:1>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:activation_crystal:1>, <gregtech:meta_item_1:282>, 2, 120000, 2,2);

// Blank Slate
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate>, <thaumcraft:stone_arcane>, 0, 2000, 20,20);

// Reinforced Slate
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:1>, <bloodmagic:slate>, 1, 4000, 20,20);

// Imbued Slate
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:1>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:2>, <bloodmagic:slate:1>, 2, 10000, 20,20);

// Demonic Slate
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:2>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:3>, <bloodmagic:slate:2>, 3, 20000, 20,20);

// Ethereal Slate
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:3>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:4>, <bloodmagic:slate:3>, 4, 50000, 20,20);

// Elemental Incription Tool - Water
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:lapis_block>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:1>, <ore:oreCrystalWater>.firstItem, 2, 5000, 20,20);

// Elemental Incription Tool - Fire
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:magma_cream>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:2>, <ore:oreCrystalFire>.firstItem, 2, 5000, 20,20);

// Elemental Incription Tool - Earth
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:obsidian>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:3>, <ore:oreCrystalEarth>.firstItem, 2, 5000, 20,20);

// Elemental Incription Tool - Air
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:ghast_tear>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:4>, <ore:oreCrystalAir>.firstItem, 2, 5000, 20,20);

// Elemental Incription Tool - Dusk
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:coal_block>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:5>, <ore:oreCrystalEntropy>.firstItem, 3, 100000, 20,20);

// Sacrificial Dagger
recipes.remove(<bloodmagic:sacrificial_dagger>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("sacrificial_dagger", "", 100, 
	[<aspect:terra> *20, <aspect:perditio> *20, <aspect:aer> *10, <aspect:ordo> *10], 
	<bloodmagic:sacrificial_dagger>, 
	[[<ore:screwSteel>, <ore:slimeballBlood>, <ore:gtceScrewdrivers>], 
	[<ore:plateAluminium>, <minecraft:diamond_sword>, <ore:slimeballBlood>], 
	[<ore:stickSteel>, <ore:plateAluminium>, <ore:screwSteel>]]);
	
// Coat of Arms
recipes.remove(<bloodmagic:pack_sacrifice>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("pack_sacrifice", "", 100, 
	[<aspect:terra> *30, <aspect:ignis> *30, <aspect:ordo> *30, <aspect:perditio> *30, <aspect:aer> *15, <aspect:aqua> *15], 
	<bloodmagic:pack_sacrifice>, 
	[[<bloodmagic:slate:1>, <bloodmagic:dagger_of_sacrifice>, <bloodmagic:slate:1>], 
	[<bloodmagic:slate:1>, <thaumcraft:void_chest>, <bloodmagic:slate:1>], 
	[<bloodmagic:slate:1>, <ore:plateAluminium>, <bloodmagic:slate:1>]]);
	

// Blood Letters Pack
recipes.remove(<bloodmagic:pack_self_sacrifice>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("pack_self_sacrifice", "", 100, 
	[<aspect:terra> *30, <aspect:aqua> *30, <aspect:ordo> *30, <aspect:perditio> *30, <aspect:aer> *15, <aspect:ignis> *15], 
	<bloodmagic:pack_self_sacrifice>, 
	[[<bloodmagic:slate:1>, <bloodmagic:sacrificial_dagger>, <bloodmagic:slate:1>], 
	[<bloodmagic:slate:1>, <thaumcraft:thaumium_chest>, <bloodmagic:slate:1>], 
	[<bloodmagic:slate:1>, <ore:plateAluminium>, <bloodmagic:slate:1>]]);
	
// Dagger of Sacrifice
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:iron_sword>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:dagger_of_sacrifice>, <bloodmagic:sacrificial_dagger>, 1, 10000, 20,20);

// Ritual Diviner
recipes.remove(<bloodmagic:ritual_diviner>);
mods.thaumcraft.Infusion.registerRecipe("ritual_diviner", "", <bloodmagic:ritual_diviner>, 4, 
	[<aspect:aer> *32, <aspect:ignis> *32, <aspect:terra> *32, <aspect:aqua> *32, <aspect:perditio> *16, <aspect:ordo> *16], 
	<bloodmagic:sigil_seer>, 
	[<bloodmagic:inscription_tool:1>, <ore:gemFlawlessDiamond>, <bloodmagic:inscription_tool:2>, <ore:gemFlawlessEmerald>, 
	<bloodmagic:inscription_tool:3>, <ore:gemFlawlessDiamond>, <bloodmagic:inscription_tool:4>, <ore:gemFlawlessEmerald>]);
	
// Ritual Diviner - Dusk
recipes.remove(<bloodmagic:ritual_diviner:1>);
mods.thaumcraft.Infusion.registerRecipe("ritual_diviner_dusk", "", <bloodmagic:ritual_diviner:1>, 8, 
	[<aspect:aer> *48, <aspect:ignis> *48, <aspect:terra> *48, <aspect:aqua> *48, <aspect:perditio> *24, <aspect:ordo> *24], 
	<bloodmagic:ritual_diviner>, 
	[<bloodmagic:inscription_tool:5>, <bloodmagic:slate:3>, <bloodmagic:inscription_tool:5>, <bloodmagic:slate:3>, 
	<bloodmagic:inscription_tool:5>, <bloodmagic:slate:3>, <bloodmagic:inscription_tool:5>, <bloodmagic:slate:3>]);
	
// Ritual Diviner - Dawn
recipes.remove(<bloodmagic:ritual_diviner:2>);
mods.thaumcraft.Infusion.registerRecipe("ritual_diviner_dawn", "", <bloodmagic:ritual_diviner:2>, 12, 
	[<aspect:aer> *64, <aspect:ignis> *64, <aspect:terra> *64, <aspect:aqua> *64, <aspect:perditio> *32, <aspect:ordo> *32], 
	<bloodmagic:ritual_diviner:1>, 
	[<extrautils2:suncrystal>, <bloodmagic:slate:4>, <extrautils2:suncrystal>, <bloodmagic:slate:4>, 
	<extrautils2:suncrystal>, <bloodmagic:slate:4>, <extrautils2:suncrystal>, <bloodmagic:slate:4>]);

// Ritual Tinkerer
//recipes.remove(<bloodmagic:ritual_reader>);
	
// Bound Blade
mods.bloodmagic.AlchemyArray.removeRecipe(<minecraft:diamond_sword>, <bloodmagic:component:8>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_sword>, <bloodmagic:component:8>, <thaumcraft:elemental_sword>);

// Bound Pickaxe
mods.bloodmagic.AlchemyArray.removeRecipe(<minecraft:diamond_pickaxe>, <bloodmagic:component:8>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_pickaxe>, <bloodmagic:component:8>, <thaumcraft:elemental_pick>);

// Bound Axe
mods.bloodmagic.AlchemyArray.removeRecipe(<minecraft:diamond_axe>, <bloodmagic:component:8>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_axe>, <bloodmagic:component:8>, <thaumcraft:elemental_axe>);

// Bound Shovel
mods.bloodmagic.AlchemyArray.removeRecipe(<minecraft:diamond_shovel>, <bloodmagic:component:8>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_shovel>, <bloodmagic:component:8>, <thaumcraft:elemental_shovel>);

// Divination Sigil
mods.bloodmagic.AlchemyArray.removeRecipe(<minecraft:redstone>, <bloodmagic:slate>);
mods.thaumcraft.Infusion.registerRecipe("sigil_divination", "", <bloodmagic:sigil_divination>, 2, 
	[<aspect:vitreus> *24, <aspect:terra> *18, <aspect:praecantatio> *12, <aspect:instrumentum> *6, <aspect:metallum> *4], 
	<bloodmagic:slate>, 
	[<ore:nitor>, <ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>, <ore:nitor>, <ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]);
	
// Air Sigil
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:2>, <bloodmagic:slate:1>);
mods.thaumcraft.Infusion.registerRecipe("sigil_air", "", <bloodmagic:sigil_air>, 2, 
	[<aspect:volatus> *64, <aspect:aer> *48, <aspect:motus> *32, <aspect:praecantatio> *24, <aspect:potentia> *12, <aspect:cognitio> *6], 
	<bloodmagic:slate:3>, 
	[<minecraft:ghast_tear>, <bloodmagic:component:2>, <forge:bucketfilled>.withTag({FluidName: "helium", Amount: 1000}), 
	<bloodmagic:component:2>, <forge:bucketfilled>.withTag({FluidName: "helium", Amount: 1000}), 
	<minecraft:ghast_tear>, <bloodmagic:component:2>, <forge:bucketfilled>.withTag({FluidName: "helium", Amount: 1000}), 
	<bloodmagic:component:2>, <forge:bucketfilled>.withTag({FluidName: "helium", Amount: 1000})]);
	
// Water Sigil
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component>, <bloodmagic:slate>);
mods.thaumcraft.Infusion.registerRecipe("sigil_water", "", <bloodmagic:sigil_water>, 4, 
	[<aspect:aqua> *40, <aspect:terra> *32, <aspect:praecantatio> *24, <aspect:instrumentum> *16, <aspect:metallum> *8], 
	<bloodmagic:slate:1>, 
	[<thaumcraft:crystal_aqua>, <minecraft:water_bucket>, <bloodmagic:component>, <bloodmagic:component>, <minecraft:water_bucket>, 
	<minecraft:water_bucket>, <bloodmagic:component>, <bloodmagic:component>, <minecraft:water_bucket>]);


// Lava Sigil
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:1>, <bloodmagic:slate>);
mods.thaumcraft.Infusion.registerRecipe("sigil_lava", "", <bloodmagic:sigil_lava>, 6, 
	[<aspect:ignis> *64, <aspect:terra> *32, <aspect:praecantatio> *32, <aspect:instrumentum> *24, <aspect:metallum> *16], 
	<bloodmagic:slate:2>, 
	[<thaumcraft:crystal_ignis>, <minecraft:lava_bucket>, <bloodmagic:component:1>, <bloodmagic:component:1>, <minecraft:lava_bucket>, 
	<bloodmagic:lava_crystal>, <minecraft:lava_bucket>, <bloodmagic:component:1>, <bloodmagic:component:1>, <minecraft:lava_bucket>]);
		
// Void Sigil
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:4>, <bloodmagic:slate:1>);
mods.thaumcraft.Infusion.registerRecipe("sigil_void", "", <bloodmagic:sigil_void>, 8, 
	[<aspect:vacuos> *64, <aspect:terra> *40, <aspect:praecantatio> *32, <aspect:auram> *24, <aspect:metallum> *16], 
	<bloodmagic:slate:2>, 
	[<bloodarsenal:blood_burned_string>, <ore:plateVoid>, <minecraft:bucket>, <bloodmagic:component:4>, <minecraft:bucket>, <bloodmagic:component:4>, 
	<bloodarsenal:blood_burned_string>, <bloodmagic:component:4>, <minecraft:bucket>, <bloodmagic:component:4>, <ore:plateVoid>]);
	
// Sigil of the Green Grove
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:5>, <bloodmagic:slate:1>);
mods.thaumcraft.Infusion.registerRecipe("sigil_green_grove", "", <bloodmagic:sigil_green_grove>, 8, 
	[<aspect:instrumentum> *36, <aspect:terra> *24, <aspect:herba> *18, <aspect:ordo> *12, <aspect:victus> *8], 
	<bloodmagic:slate:1>, 
	[<twilightforest:twilight_sapling:7>, <bloodmagic:component:5>, <twilightforest:twilight_sapling:6>, <bloodmagic:component:5>, <twilightforest:twilight_sapling:5>, 
	<bloodmagic:component:5>, <thaumcraft:sapling_silverwood>, <bloodmagic:component:5>, <thaumcraft:sapling_greatwood>, <bloodmagic:component:5>, <tconstruct:slime_sapling>]);
	
// Sigil of the Blood Lamp
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:11>, <bloodmagic:slate:2>);
mods.thaumcraft.Infusion.registerRecipe("sigil_blood_light", "", <bloodmagic:sigil_blood_light>, 6, 
	[<aspect:lux> *48, <aspect:ignis> *32, <aspect:aer> *32, <aspect:potentia> *24, <aspect:sensus> *16, <aspect:praecantatio> *8], 
	<bloodmagic:slate:2>, 
	[<ore:nitor>, <bloodmagic:component:11>, <bloodmagic:blood_rune>, <bloodmagic:component:11>, <ore:nitor>, 
	<bloodmagic:component:11>, <bloodmagic:blood_rune>, <bloodmagic:component:11>]);

// Sigil of Elemental Affinity
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:6>, <bloodmagic:slate:2>);
mods.thaumcraft.Infusion.registerRecipe("sigil_elemental_affinity", "", <bloodmagic:sigil_elemental_affinity>, 12, 
	[<aspect:volatus> *64, <aspect:aer> *48, <aspect:aqua> *48, <aspect:ignis> *48, <aspect:motus> *32, <aspect:praecantatio> *24, <aspect:potentia> *12, <aspect:cognitio> *6], 
	<bloodmagic:slate:3>, 
	[<bloodmagic:inscription_tool:3>, <bloodmagic:blood_shard>, <bloodmagic:sigil_lava>, <bloodmagic:inscription_tool:2>, <bloodmagic:blood_shard>, <bloodmagic:sigil_water>, 
	<bloodmagic:inscription_tool:1>, <bloodmagic:blood_shard>, <bloodmagic:sigil_air>, <bloodmagic:inscription_tool:4>, <bloodmagic:blood_shard>, <bloodmagic:slate:2>]);
	
// Sigil of Magnetism
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:12>, <bloodmagic:slate:2>);
mods.thaumcraft.Infusion.registerRecipe("sigil_magnetism", "", <bloodmagic:sigil_magnetism>, 10, 
	[<aspect:potentia> *32, <aspect:metallum> *24, <aspect:aer> *24, <aspect:auram> *16, <aspect:cognitio> *12, <aspect:praecantatio> *6], 
	<bloodmagic:slate:2>, 
	[<ore:blockNeodymiumMagnetic>, <bloodmagic:component:12>, <bloodmagic:slate:1>, <ore:blockNeodymiumMagnetic>, <bloodmagic:component:12>, <bloodmagic:slate:1>, 
	<ore:blockNeodymiumMagnetic>, <bloodmagic:component:12>, <bloodmagic:slate:1>, <ore:blockNeodymiumMagnetic>, <bloodmagic:component:12>, <bloodmagic:slate:1>]);

// Sigil of Suppression
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:9>, <bloodmagic:slate:3>);
mods.thaumcraft.Infusion.registerRecipe("sigil_suppression", "", <bloodmagic:sigil_suppression>, 14, 
	[<aspect:vacuos> *72, <aspect:aqua> *64, <aspect:praecantatio> *32, <aspect:terra> *32, <aspect:auram> *16, <aspect:motus> *16, <aspect:metallum> *8], 
	<bloodmagic:sigil_void>, 
	[<bloodmagic:teleposer>, <minecraft:bucket>, <bloodmagic:component:9>, <bloodmagic:slate:3>, <minecraft:bucket>, <bloodmagic:component:9>,
	<minecraft:bucket>, <bloodmagic:component:9>, <minecraft:bucket>, <bloodmagic:slate:3>, <bloodmagic:component:9>, <minecraft:bucket>]);		
	
// Sigil of Haste
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:13>, <bloodmagic:slate:3>);
mods.thaumcraft.Infusion.registerRecipe("sigil_haste", "", <bloodmagic:sigil_haste>, 10, 
	[<aspect:ordo> *64, <aspect:motus> *32, <aspect:aer> *24, <aspect:potentia> *24, <aspect:praecantatio> *16, <aspect:alienis> *16, <aspect:cognitio> *8], 
	<bloodmagic:slate:3>, 
	[<bloodmagic:component:13>, <minecraft:cookie>, <bloodmagic:component:2>, <bloodmagic:component:2>, <minecraft:sugar>, <bloodmagic:component:13>, 
	<minecraft:sugar>, <bloodmagic:component:2>, <bloodmagic:component:2>, <minecraft:cookie>]);		

// Sigil of the Fast Miner
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:3>, <bloodmagic:slate:1>);
mods.thaumcraft.Infusion.registerRecipe("sigil_fast_miner", "", <bloodmagic:sigil_fast_miner>, 6, 
	[<aspect:instrumentum> *36, <aspect:praecantatio> *24, <aspect:metallum> *18, <aspect:potentia> *12, <aspect:motus> *8], 
	<bloodmagic:slate:1>, 
	[<thaumcraft:stone_arcane_brick>, <thaumcraft:thaumium_pick>, <bloodmagic:component:3>, <thaumcraft:stone_arcane_brick>, <thaumcraft:thaumium_shovel>, 
	<bloodmagic:component:3>, <thaumcraft:stone_arcane_brick>, <thaumcraft:thaumium_axe>, <bloodmagic:component:3>]);		
	
// Seers Sigil
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:7>, <bloodmagic:slate:1>);
mods.thaumcraft.Infusion.registerRecipe("sigil_seer", "", <bloodmagic:sigil_seer>, 2, 
	[<aspect:ordo> *24, <aspect:sensus> *18, <aspect:cognitio> *12, <aspect:vitreus> *6, <aspect:praecantatio> *6], 
	<bloodmagic:sigil_divination>, 
	[<thaumcraft:brain>, <ore:paneGlass>, <bloodmagic:component:7>, <ore:paneGlass>, <thaumcraft:brain>, <ore:paneGlass>, <bloodmagic:component:7>, <ore:paneGlass>]);
	
// Sigil of the Phantom Bridge
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:15>, <bloodmagic:slate:3>);
mods.thaumcraft.Infusion.registerRecipe("sigil_phantom_bridge", "", <bloodmagic:sigil_phantom_bridge>, 12, 
	[<aspect:terra> *48, <aspect:alienis> *32, <aspect:motus> *24, <aspect:vitreus> *16, <aspect:potentia> *8, <aspect:praecantatio> *8], 
	<bloodmagic:slate:2>, 
	[<bloodmagic:slate:2>, <bloodmagic:component:15>, <ore:blockTitanium>, 
	<bloodmagic:slate:2>, <bloodmagic:component:15>, <ore:blockTitanium>, 
	<bloodmagic:slate:2>, <bloodmagic:component:15>, <ore:blockTitanium>]);
	
// Sigil of Whirlwind
mods.thaumcraft.Infusion.registerRecipe("sigil_whirlwind", "", <bloodmagic:sigil_whirlwind>, 14, 
	[<aspect:aer> *72, <aspect:praemunio> *48, <aspect:potentia> *32, <aspect:victus> *32, <aspect:alkimia> *16, <aspect:cognitio> *16, <aspect:volatus> *8, <aspect:desiderium> *8], 
	<bloodmagic:sigil_air>, 
	[<gregtech:meta_item_1:776>, <bloodmagic:component:2>, <minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}), <bloodmagic:slate:3>, 
	<minecraft:ghast_tear>, <bloodmagic:component:2>, <gregtech:meta_item_1:776>, <bloodmagic:component:2>, <minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}), 
	<bloodmagic:slate:3>, <minecraft:ghast_tear>, <bloodmagic:component:2>]);
	
// Sigil of Compression
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:14>, <bloodmagic:slate:3>);
mods.thaumcraft.Infusion.registerRecipe("sigil_compression", "", <bloodmagic:sigil_compression>, 14, 
	[<aspect:metallum> *32, <aspect:potentia> *24, <aspect:machina> *16, <aspect:desiderium> *16, <aspect:auram> *8], 
	<bloodmagic:slate:3>, 
	[<bloodmagic:slate:3>, pistonIv, <gregtech:machine:1647>, motorIv, <bloodmagic:slate:3>, motorIv, <gregtech:machine:1647>, pistonIv]);
	
// Sigil of Ender Severance
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:16>, <bloodmagic:slate:3>);
mods.thaumcraft.Infusion.registerRecipe("sigil_ender_severance", "", <bloodmagic:sigil_ender_severance>, 14, 
	[<aspect:cognitio> *72, <aspect:potentia> *64, <aspect:vinculum> *48, <aspect:alkimia> *32, <aspect:alienis> *16, <aspect:humanus> *16, <aspect:instrumentum> *8], 
	<bloodmagic:slate:4>, 
	[<thaumcraft:causality_collapser>, <bloodmagic:slate:3>, <gregtech:meta_item_1:281>, <tconstruct:slime_congealed:2>, <bloodmagic:component:16>, 
	<gregtech:meta_item_1:281>, <bloodmagic:component:16>, <tconstruct:slime_congealed:2>, <gregtech:meta_item_1:281>, <bloodmagic:slate:3>]);
			
// Transposition Sigil
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:18>, <bloodmagic:slate:3>);
mods.thaumcraft.Infusion.registerRecipe("sigil_transposition", "", <bloodmagic:sigil_transposition>, 12, 
	[<aspect:alienis> *64, <aspect:praecantatio> *32, <aspect:tenebrae> *32, <aspect:vacuos> *32, <aspect:vitium> *16, <aspect:permutatio> *16], 
	<bloodmagic:slate:3>, 
	[<ore:gemFlawlessDiamond>, <ore:plateNetherQuartz>, <bloodmagic:component:18>, <ore:plateNetherQuartz>, <ore:gemFlawlessDiamond>, 
	<ore:plateNetherQuartz>, <bloodmagic:component:18>, <ore:plateNetherQuartz>]);	
	
// Sigil of Elasticity
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:31>, <bloodmagic:slate:1>);
mods.thaumcraft.Infusion.registerRecipe("sigil_bounce", "", <bloodmagic:sigil_bounce>, 4, 
	[<aspect:alienis> *32, <aspect:praecantatio> *24, <aspect:volatus> *16, <aspect:vacuos> *16], 
	<bloodmagic:slate:1>, 
	[<minecraft:feather>, <bloodmagic:component:31>, <minecraft:feather>, 
	<bloodmagic:component:31>, <minecraft:feather>, <bloodmagic:component:31>, <minecraft:feather>]);		
	
// Sigil of Winters Breath
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:32>, <bloodmagic:slate:1>);
mods.thaumcraft.Infusion.registerRecipe("sigil_frost", "", <bloodmagic:sigil_frost>, 4, 
	[<aspect:gelum> *32, <aspect:praecantatio> *24, <aspect:ordo> *16, <aspect:aer> *16], 
	<bloodmagic:slate:1>, 
	[<minecraft:packed_ice>, <bloodmagic:component:32>, <minecraft:packed_ice>, 
	<bloodmagic:component:32>, <minecraft:packed_ice>, <bloodmagic:component:32>, <minecraft:packed_ice>]);		
	
// Water Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:sugar>, <minecraft:water_bucket>, <minecraft:water_bucket>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component>, 
	[<minecraft:water_bucket>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), <bloodmagic:component:29>, 
	<minecraft:dye>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]})],
	2000,200,2);

// Lava Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:lava_bucket>, <minecraft:redstone>, <minecraft:cobblestone>, <minecraft:coal_block>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:1>, 
	[<minecraft:blaze_powder>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <bloodmagic:component:29>, 
	<minecraft:dye>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]})],
	1000,200,2);
	
// Lava Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ghast_tear>, <minecraft:feather>, <minecraft:feather>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:2>, 
	[<forge:bucketfilled>.withTag({FluidName: "glue", Amount: 1000}), <minecraft:feather>, <bloodmagic:component:29>, 
	<minecraft:ghast_tear>, <minecraft:feather>],
	1000,200,2);

// Mining Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_pickaxe>, <minecraft:iron_axe>, <minecraft:iron_shovel>, <minecraft:gunpowder>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:3>, 
	[<minecraft:obsidian>, <minecraft:sugar>, <bloodmagic:component:29>, 
	<minecraft:ghast_tear>, <minecraft:sugar>],
	1000,200,2);

// Void Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:bucket>, <minecraft:string>, <minecraft:gunpowder>, <minecraft:string>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:4>, 
	[<ore:dustObsidian>, <ore:dustCharcoal>, <bloodmagic:component:29>, 
	<ore:dustVoid>, <ore:dustCoal>],
	1000,200,2);

// Growth Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:sapling>, <minecraft:sapling>, <minecraft:sugar>, <minecraft:reeds>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:5>, 
	[<ore:dustObsidian>, <ore:dustCharcoal>, <bloodmagic:component:29>, 
	<gregtech:meta_item_1:1001>, <ore:dustCoal>],
	1000,200,2);

// Elemental Affinity Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:sigil_air>, <bloodmagic:sigil_water>, <bloodmagic:sigil_lava>, <minecraft:obsidian>]);

// Binding Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:gunpowder>, <minecraft:gold_nugget>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:8>,
	[<bloodmagic:ritual_controller>, <ore:dropHoney>, <gregtech:meta_item_1:219>, <ore:dustThaumium>], 
	1000,200,2);
	
// Suppression Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:teleposer>, <minecraft:water_bucket>, <minecraft:blaze_rod>, <minecraft:lava_bucket>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:9>,
	[<ore:dustVoid>, <ore:itemPulsatingPowder>, <bloodmagic:component:29>,
	<ore:dustObsidian>, <ore:dustCarbon>], 
	1000,200,2);

// Blood Lamp Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone>, <minecraft:torch>, <minecraft:redstone>, <minecraft:redstone>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:11>,
	[<bloodmagic:component:28>, <ore:dustPlutonium239>, <ore:dustCertusQuartz>, 
	<ore:dustCertusQuartz>, <ore:dustPlutonium239>], 
	4000,200,3);

//  Magnetism Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:string>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:iron_block>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:12>,
	[<bloodmagic:component:28>, <gregtech:meta_item_1:491>, <ore:dustUltimet>, <ore:dustUltimet>, <gregtech:meta_item_1:491>], 
	2000,200,2);

//  Haste Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:cookie>, <minecraft:sugar>, <minecraft:stone>, <minecraft:cookie>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:13>, 
	[<minecraft:cookie>, <minecraft:sugar>, <bloodmagic:component:29>, 
	<minecraft:ghast_tear>, <minecraft:sugar>],
	1000,200,2);

//  Compresssion Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:gold_block>, <minecraft:cobblestone>, <minecraft:obsidian>]);

//  Phantom Bridge Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:obsidian>, <minecraft:stone>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:15>, 
	[<bloodmagic:component:28>, <bloodmagic:component:4>, <minecraft:web>, <minecraft:web>, <bloodmagic:component:4>],
	2000,200,2);

//  Severance Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ender_eye>, <minecraft:ender_pearl>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:16>, 
	[<bloodmagic:component:28>, <ore:dustIce>, <ore:dustCarbon>, <ore:dustCarbon>, <ore:dustIce>],
	4000,200,2);

//  Teleposition Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:teleposer>, <minecraft:glowstone>, <minecraft:gold_ingot>, <minecraft:redstone_block>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:17>, 
	[<bloodmagic:component:28>, <ore:plateTitanium>, <ore:plateTungsten>, <ore:plateTungstenSteel>, <ore:plateTungstenCarbide>],
	10000,200,3);

//  Transposition Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:teleposer>, <minecraft:diamond>, <minecraft:obsidian>, <minecraft:ender_pearl>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:18>, 
	[<bloodmagic:component:28>, <ore:plateOsmium>, <ore:plateOsmium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>],
	100000,200,4);
	
// Holding Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:chest>, <minecraft:leather>, <minecraft:string>, <minecraft:string>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:27>,
	[<ore:nitor>, <ore:ingotThaumium>, <bloodmagic:component:29>,
	<minecraft:gunpowder>, <thaumcraft:salis_mundus>], 
	1000,200,1);
	
// Simple Lengthening Catalyst
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:gunpowder>, <minecraft:nether_wart>, <minecraft:dye:4>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:28>,
	[<bloodmagic:component:29>, <bloodmagic:component:5>, <minecraft:nether_wart>, <ore:dustBone>, <minecraft:dye:15>], 
	1500,200,2);
	
// Elasticity Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:slime>, <minecraft:slime>, <minecraft:string>, <minecraft:leather>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:31>,
	[<ore:blockSlime>, <ore:blockSlime>, <ore:blockSlime>, <ore:blockSlime>, <ore:blockSlime>], 
	500,200,1);

// Frost Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ice>, <minecraft:snowball>, <minecraft:redstone>, <minecraft:snowball>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:31>,
	[<minecraft:packed_ice>, <ore:blockIce>, <minecraft:packed_ice>, <ore:blockIce>, <minecraft:packed_ice>], 
	500,200,1);

// Teleposition Focus
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:ender_pearl>);
mods.thaumcraft.Infusion.registerRecipe("teleposition_focus", "", <bloodmagic:teleposition_focus>, 12, 
	[<aspect:ordo> *64, <aspect:perditio> *64, <aspect:praecantatio> *64], 
	<minecraft:ender_pearl>, 
	[<bloodmagic:blood_shard>, <ore:plateStainlessSteel>, <bloodmagic:blood_shard>, <ore:plateStainlessSteel>, 
	<bloodmagic:blood_shard>, <ore:plateStainlessSteel>, <bloodmagic:blood_shard>]);		

// Enhanced Teleposition Focus
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:teleposition_focus>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:teleposition_focus:1>, <bloodmagic:teleposition_focus>, 3, 20000, 20, 20);

// Living Helmet
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:iron_helmet>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:living_armour_helmet>, <bloodmagic:component:8>, <thaumcraft:void_robe_helm>);

// Living Chest
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:iron_chestplate>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:living_armour_chest>, <bloodmagic:component:8>, <thaumcraft:void_robe_chest>);

// Living Chest
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:iron_leggings>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:living_armour_leggings>, <bloodmagic:component:8>, <thaumcraft:void_robe_legs>);

// Living Boots
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:iron_boots>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:living_armour_boots>, <bloodmagic:component:8>, <thaumcraft:void_boots>);

// Training Bracelet
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:upgrade_trainer>, <thaumcraft:baubles:2>, 3, 50000, 20, 20);

// Petty Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:dye:4>, <minecraft:glass>]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("petty_tartaric_gem", "", 100, 
	[<aspect:terra> *30, <aspect:aqua> *30, <aspect:ordo> *30, <aspect:perditio> *30, <aspect:aer> *30, <aspect:ignis> *30], 
	<bloodmagic:soul_gem>, 
	[[<ore:screwAluminium>, <bloodmagic:slate>, <ore:screwAluminium>], 
	[<bloodmagic:slate>, <gregtech:meta_item_1:736>, <bloodmagic:slate>], 
	[<ore:screwAluminium>, <bloodmagic:slate>, <ore:screwAluminium>]]);

// Lesser Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:diamond>, <minecraft:lapis_block>, <minecraft:redstone_block>]);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:soul_gem:1>, <bloodmagic:soul_gem>, 0, 10000, 20, 20);

// Common Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem:1>, <minecraft:diamond>, <bloodmagic:slate:2>, <minecraft:gold_block>]);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:soul_gem:2>, <bloodmagic:soul_gem:1>, 1, 20000, 20, 20);

// Greater Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem:2>, <bloodmagic:slate:3>, <bloodmagic:item_demon_crystal>, <bloodmagic:blood_shard>]);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:soul_gem:3>, <bloodmagic:soul_gem:2>, 2, 100000, 20, 20);

// Grand Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem:3>, <minecraft:nether_star>]);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:soul_gem:4>, <bloodmagic:soul_gem:3>, 3, 250000, 20, 20);

// Sentient Sword
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_sword>]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("sentient_sword", "", 150, 
	[<aspect:terra> *32, <aspect:perditio> *32, <aspect:ordo> *32], 
	<bloodmagic:sentient_sword>, 
	[[<ore:screwAluminium>, <bloodmagic:slate>, <ore:screwAluminium>], 
	[<ore:plateAluminium>, <thaumcraft:elemental_sword>, <ore:plateAluminium>], 
	[<ore:gtceHardHammers>, <bloodmagic:slate>, <ore:gtceScrewdrivers>]]);	
	
// Sentient Bow
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:bow>, <bloodmagic:soul_gem:1>, <minecraft:string>, <minecraft:string>]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("sentient_bow", "", 150, 
	[<aspect:aer> *32, <aspect:perditio> *32, <aspect:ordo> *32], 
	<bloodmagic:sentient_bow>, 
	[[<ore:screwAluminium>, <bloodmagic:slate>, <ore:screwAluminium>], 
	[<ore:plateAluminium>, <thaumcraft:turret>, <ore:plateAluminium>], 
	[<ore:gtceHardHammers>, <bloodmagic:slate>, <ore:gtceScrewdrivers>]]);

// Sentient Axe
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_axe>]);
mods.thaumcraft.Infusion.registerRecipe("sentient_axe", "", <bloodmagic:sentient_axe>, 6, 
	[<aspect:instrumentum> *64, <aspect:vitreus> *64, <aspect:aversio> *64, <aspect:volatus> *32, <aspect:cognitio> *24, <aspect:perditio> *16, <aspect:desiderium> *8], 
	<thaumcraft:thaumium_axe>, 
	[<avaritia:resource>, <ore:plateStainlessSteel>, <avaritia:resource>, <ore:plateStainlessSteel>, <avaritia:resource>, <ore:plateStainlessSteel>]);	

// Sentient Pickaxe
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_pickaxe>]);
mods.thaumcraft.Infusion.registerRecipe("sentient_pickaxe", "", <bloodmagic:sentient_pickaxe>, 6, 
	[<aspect:instrumentum> *64, <aspect:vitreus> *64, <aspect:terra> *64, <aspect:aer> *32, <aspect:cognitio> *24, <aspect:perditio> *16, <aspect:desiderium> *8], 
	<thaumcraft:thaumium_pick>, 
	[<avaritia:resource>, <ore:plateStainlessSteel>, <avaritia:resource>, <ore:plateStainlessSteel>, <avaritia:resource>, <ore:plateStainlessSteel>]);	
	
	
// Sentient Shovel
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_shovel>]);
mods.thaumcraft.Infusion.registerRecipe("sentient_shovel", "", <bloodmagic:sentient_shovel>, 6, 
	[<aspect:instrumentum> *64, <aspect:vitreus> *64, <aspect:terra> *64, <aspect:aer> *32, <aspect:cognitio> *24, <aspect:perditio> *16, <aspect:desiderium> *8], 
	<thaumcraft:thaumium_shovel>, 
	[<avaritia:resource>, <ore:plateStainlessSteel>, <avaritia:resource>, <ore:plateStainlessSteel>, <avaritia:resource>, <ore:plateStainlessSteel>]);	

// Node Router
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:reeds>, <bloodmagic:slate:1>, <minecraft:dye:4>, <minecraft:dye:4>]);
// Precise Item Filter
recipes.remove(<bloodmagic:base_item_filter>);
assembler.recipeBuilder()
	.inputs([<bloodmagic:component:10>, <gregtech:meta_item_1:291>])
	.outputs(<bloodmagic:base_item_filter>)
	.duration(2000).EUt(30).buildAndRegister();

// NBT Item Filter
recipes.remove(<bloodmagic:base_item_filter:1>);
assembler.recipeBuilder()
	.inputs([<bloodmagic:component:10>, <gregtech:meta_item_1:292>])
	.outputs(<bloodmagic:base_item_filter:1>)
	.duration(2000).EUt(30).buildAndRegister();

// Mod Item Filter
recipes.remove(<bloodmagic:base_item_filter:1>);
assembler.recipeBuilder()
	.inputs([<bloodmagic:component:10>, <ore:circuitMv>])
	.outputs(<bloodmagic:base_item_filter:1>)
	.duration(2000).EUt(30).buildAndRegister();

// Ore Dictionary Item Filter
recipes.remove(<bloodmagic:base_item_filter:2>);
assembler.recipeBuilder()
	.inputs([<bloodmagic:component:10>, <gregtech:meta_item_1:293>])
	.outputs(<bloodmagic:base_item_filter:2>)
	.duration(2000).EUt(30).buildAndRegister();

// Ore Dictionary Item Filter
recipes.remove(<bloodmagic:base_fluid_filter>);
assembler.recipeBuilder()
	.inputs([<bloodmagic:base_item_filter>, <ore:plateLapis> *3])
	.outputs(<bloodmagic:base_fluid_filter>)
	.duration(2000).EUt(30).buildAndRegister();

// Draft of Angelus
mods.bloodmagic.AlchemyTable.removeRecipe([<bloodmagic:component:25>, <bloodmagic:component:26>, <gregtech:meta_item_1:2026>, 
	<minecraft:ghast_tear>, <bloodmagic:blood_shard>, <minecraft:fermented_spider_eye>]);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:points_upgrade>, <forge:bucketfilled>.withTag({FluidName: "fuel", Amount: 1000}), 1, 10000, 1000, 1000);

// Demon Will Aura Gauge
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:gold_ingot>, <minecraft:redstone>, <bloodmagic:item_demon_crystal>, <minecraft:glass>]);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:demon_will_gauge>, <thaumcraft:thaumometer>, 0, 1000, 100, 100);

