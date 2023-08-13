import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val cutter = mods.gregtech.recipe.RecipeMap.getByName("cutter");
val laser_engraver = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
val fluid_solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
// --- Vals ---
val sensorLv = <gregtech:meta_item_1:232>;
val pistonLv = <gregtech:meta_item_1:172>;
val pistonMv = <gregtech:meta_item_1:173>;
val pumpMv = <gregtech:meta_item_1:143>;
val emitterHv = <gregtech:meta_item_1:219>;
val emitterIv = <gregtech:meta_item_1:221>;
val motorLv = <gregtech:meta_item_1:127>;
val motorMv = <gregtech:meta_item_1:128>;

// --- Removes ---
mods.jei.JEI.hide(<thaumcraft:condenser_lattice_dirty>);
mods.jei.JEI.removeAndHide(<thaumcraft:crimson_blade>);
mods.jei.JEI.removeAndHide(<thaumcraft:baubles:3>);
mods.jei.JEI.removeAndHide(<thaumcraft:amulet_vis>);


// --- Recipes ---

recipes.remove(<thaumcraft:nugget:*>);
recipes.remove(<thaumcraft:ingot:*>);

// Arcane Stone Bricks
recipes.remove(<thaumcraft:stone_arcane_brick>);
laser_engraver.recipeBuilder()
	.inputs([<thaumcraft:stone_arcane>])
	.outputs(<thaumcraft:stone_arcane_brick>)
	.notConsumable(<ore:lensRuby>)
	.duration(600).EUt(120).buildAndRegister();	
	
// Arcane Stone Slab
recipes.remove(<thaumcraft:slab_arcane_stone>);
cutter.recipeBuilder()
	.inputs([<thaumcraft:stone_arcane>])
	.outputs(<thaumcraft:slab_arcane_stone> *4)
	.duration(200).EUt(30).buildAndRegister();	

// Arcane Brick Slab
recipes.remove(<thaumcraft:slab_arcane_brick>);
cutter.recipeBuilder()
	.inputs([<thaumcraft:stone_arcane_brick>])
	.outputs(<thaumcraft:slab_arcane_brick> *4)
	.duration(200).EUt(30).buildAndRegister();	
	
// Ancient Stone Slab
recipes.remove(<thaumcraft:slab_arcane_brick>);
cutter.recipeBuilder()
	.inputs([<thaumcraft:stone_ancient>])
	.outputs(<thaumcraft:slab_ancient> *4)
	.duration(200).EUt(30).buildAndRegister();	

// Eldritch Stone Slab
recipes.remove(<thaumcraft:slab_eldritch>);
cutter.recipeBuilder()
	.inputs([<thaumcraft:stone_eldritch_tile>])
	.outputs(<thaumcraft:slab_ancient> *4)
	.duration(200).EUt(30).buildAndRegister();	
	
// Amber Block
recipes.remove(<thaumcraft:amber_block>);

// Wooden Table
recipes.remove(<thaumcraft:table_wood>);
recipes.addShaped(<thaumcraft:table_wood>, 
	[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[<ore:stickWood>, <ore:screwIron>, <ore:stickWood>],
	[<ore:slabWood>, <ore:gtceScrewdrivers>, <ore:slabWood>]]);
	
// Stone Table
recipes.remove(<thaumcraft:table_stone>);
recipes.addShaped(<thaumcraft:table_stone>, 
	[[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>],
	[<ore:stickWood>, <ore:screwIron>, <ore:stickWood>],
	[<minecraft:stone_slab>, <ore:gtceScrewdrivers>, <minecraft:stone_slab>]]);

// Metal Blocks
recipes.remove(<thaumcraft:metal_brass>);
recipes.remove(<thaumcraft:metal_thaumium>);
recipes.remove(<thaumcraft:metal_void>);
	
// Infusion Speed Stone
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:matrix_speed>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("matrix_speed", "INFUSIONBOOST", 200, 
	[<aspect:aqua> *32, <aspect:aer> *32, <aspect:ordo> *32, <aspect:perditio> *32, <aspect:ignis> *32, <aspect:terra> *32], 
	<thaumcraft:matrix_speed>, 
	[[<ore:plateThaumium>, <bloodmagic:component:29>, <ore:plateThaumium>], 
	[<bloodmagic:component:29>, <ore:frameGtStainlessSteel>, <bloodmagic:component:29>], 
	[<ore:plateThaumium>, <bloodmagic:component:29>, <ore:plateThaumium>]]);
	
// Infusion Speed Stone
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:matrix_cost>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("matrix_cost", "INFUSIONBOOST", 200, 
	[<aspect:aqua> *32, <aspect:aer> *32, <aspect:ordo> *32, <aspect:perditio> *32, <aspect:ignis> *32, <aspect:terra> *32], 
	<thaumcraft:matrix_cost>, 
	[[<ore:plateVoid>, <bloodmagic:component:28>, <ore:plateVoid>], 
	[<bloodmagic:component:28>, <ore:frameGtStainlessSteel>, <bloodmagic:component:28>], 
	[<ore:plateVoid>, <bloodmagic:component:28>, <ore:plateVoid>]]);
	
// Vis Battery
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_battery>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("vis_battery", "VISBATTERY", 150, 
	[<aspect:ordo> *32, <aspect:aer> *16, <aspect:terra> *16], 
	<thaumcraft:vis_battery>, 
	[[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>], 
	[<ore:circuitHv>, <gregtech:meta_item_1:741>, <ore:circuitHv>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
	
// Redstone Inlay
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:inlay>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("inlay", "INFUSIONSTABLE", 15, 
	[<aspect:ordo> *4], 
	<thaumcraft:inlay>, 
	[[<minecraft:light_weighted_pressure_plate>, <ore:plateRedAlloy>]]);
		
// Thaumic Dioptra
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:dioptra>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("dioptra", "DIOPTRA", 30, 
	[<aspect:ordo> *4], 
	<thaumcraft:dioptra>, 
	[[<thaumcraft:stone_arcane>, <thaumcraft:vis_resonator>, <thaumcraft:stone_arcane>], 
	[sensorLv, <thaumcraft:thaumometer>, sensorLv], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
	
// Arcane Ear
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_ear>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("dioptra", "ARCANEEAR", 10, 
	[<aspect:aer> *10, <aspect:terra> *10, <aspect:ordo> *10], 
	<thaumcraft:arcane_ear>, 
	[[<ore:plateThaumium>, sensorLv, <ore:plateThaumium>], 
	[<ore:plateGold>, <thaumcraft:brain>, <ore:plateGold>], 
	[<thaumcraft:plank_greatwood>, <ore:wireGtSingleRedAlloy>, <thaumcraft:plank_greatwood>]]);
	
// Arcane Ear (Toggle)
recipes.remove(<thaumcraft:arcane_ear_toggle>);
assembler.recipeBuilder()
	.inputs([<thaumcraft:arcane_ear>, <minecraft:lever>])
	.outputs(<thaumcraft:arcane_ear_toggle>)
	.duration(200).EUt(16).buildAndRegister();
	
// Arcane Lamp
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:lamp_arcane>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("lamp_arcane", "", 10, 
	[<aspect:aer> *1, <aspect:ignis> *1], 
	<thaumcraft:lamp_arcane>, 
	[[<ore:plateGlass>, <minecraft:daylight_detector>, <ore:plateGlass>], 
	[<ore:plateIron>, <ore:blockAmber>, <ore:plateIron>], 
	[<ore:plateGlass>, <ore:nitor>, <ore:plateGlass>]]);

// Arcane Levitator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:levitator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("levitator", "LEVITATOR",  10, 
	[<aspect:aer> *10, <aspect:terra> *5, <aspect:ordo> *1], 
	<thaumcraft:levitator>, 
	[[<thaumcraft:plank_greatwood>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thaumcraft:plank_greatwood>], 
	[<ore:nitor>, <ore:rotorSteel>, <thaumcraft:alumentum>], 
	[<thaumcraft:plank_greatwood>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <thaumcraft:plank_greatwood>]]);

// Essentia Centrifuge
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:centrifuge>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("centrifuge", "CENTRIFUGE",  50, 
	[<aspect:ordo> *32, <aspect:aqua> *16, <aspect:perditio> *16], 
	<thaumcraft:centrifuge>, 
	[[<ore:screwThaumium>, <thaumcraft:tube>, <ore:screwThaumium>], 
	[<thaumcraft:alembic>, <thaumcraft:metal_alchemical>, pistonMv], 
	[<ore:screwThaumium>, <thaumcraft:tube>, <ore:screwThaumium>]]);
		
// TODO - thaumcraft smeltery
// TODO - thaumcraft slurry

// Arcane Alembic
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:alembic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Alembic", "ESSENTIASMELTER@2", 100,
    [<aspect:aqua> * 2], <thaumcraft:alembic>, [
    [<ore:plateThaumium>, <ore:pipeNormalFluidSteel>, <ore:plateThaumium>],
    [<thaumcraft:filter>, <gregtech:machine:1610>, <thaumcraft:filter>],
    [<ore:plateThaumium>, <ore:pipeNormalFluidSteel>, <ore:plateThaumium>]
    ]);

//
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("EssentiaSmelter", "ESSENTIASMELTER@1", 100,
    [<aspect:ignis> * 4], <thaumcraft:smelter_basic>, [
    [<thaumcraft:stone_arcane_brick>, <gregtech:machine:1612>, <thaumcraft:stone_arcane_brick>],
    [<ore:plateBrass>, <gregtech:machine:50>, <ore:plateBrass>],
    [<thaumcraft:stone_arcane_brick>, <thaumcraft:crucible>, <thaumcraft:stone_arcane_brick>]
    ]);
	
// Recharge Pedestal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:recharge_pedestal>);
mods.thaumcraft.Infusion.registerRecipe("recharge_pedestal", "RECHARGEPEDESTAL", <thaumcraft:recharge_pedestal>, 2, 
	[<aspect:praecantatio> *20 , <aspect:permutatio> *15, <aspect:auram> *10, <aspect:ordo> *5], 
	<thaumcraft:pedestal_arcane>, 
		[<ore:plateGold>, <ore:gemFlawlessDiamond>, <thaumcraft:morphic_resonator>, <ore:gemFlawlessDiamond>]);
	
// Focal Manipulator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:wand_workbench>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("wand_workbench", "BASEAUROMANCY",  100, 
	[<aspect:aqua> *10, <aspect:aer> *5, <aspect:ignis> *5], 
	<thaumcraft:wand_workbench>, 
	[[<thaumcraft:salis_mundus>, <thaumcraft:slab_arcane_stone>, <thaumcraft:salis_mundus>], 
	[<thaumcraft:stone_arcane_brick>, <thaumcraft:pedestal_arcane>, <thaumcraft:stone_arcane_brick>], 
	[<ore:plateThaumium>, <thaumcraft:table_wood>, <ore:plateThaumium>]]);	
	
	
// Hungry Chest
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:hungry_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("hungry_chest", "HUNGRYCHEST",  100, 
	[<aspect:aer> *10, <aspect:terra> *10, <aspect:ordo> *5, <aspect:perditio> *5], 
	<thaumcraft:hungry_chest>, 
	[[<ore:screwSteel>, <ore:chest>, <ore:screwSteel>], 
	[<thaumcraft:brain>, <ore:chest>, <thaumcraft:brain>], 
	[<ore:screwSteel>, <ore:gtceScrewdrivers>, <ore:screwSteel>]]);	
	
// Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube", "TUBES",  10, 
	[<aspect:aqua> *8, <aspect:ordo> *8], 
	<thaumcraft:tube> *4, 
	[[<ore:screwSteel>, <ore:nuggetGold>, <ore:screwSteel>], 
	[<ore:nuggetQuicksilver>, <ore:pipeSmallFluidSteel>, <ore:nuggetQuicksilver>], 
	[<ore:screwSteel>, <ore:nuggetGold>, <ore:screwSteel>]]);	
	
// Essentia Valve
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_valve>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube_valve", "TUBES",  10, 
	[<aspect:aqua> *8, <aspect:ordo> *8], 
	<thaumcraft:tube_valve>, 
	[[<ore:screwSteel>, <minecraft:lever>, <ore:screwSteel>], 
	[<ore:plateRubber>, <thaumcraft:tube>, <ore:gearSmallSteel>], 
	]);	
	
// Restricted Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_restrict>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube_restrict", "TUBES",  10, 
	[<aspect:aqua> *16, <aspect:ordo> *16], 
	<thaumcraft:tube_restrict>, 
	[
	[<ore:ringRubber>, <thaumcraft:tube>, <ore:ringRubber>]
	]);	
	
// Restricted Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_oneway>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube_oneway", "TUBES",  10, 
	[<aspect:ordo> *16, <aspect:aqua> *8, <aspect:perditio> *8], 
	<thaumcraft:tube_oneway>, 
	[
	[<ore:dyeBlue>, <thaumcraft:tube>, <ore:screwSteel>]
	]);	
	
// Filtered Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube_filter", "TUBES",  10, 
	[<aspect:ordo> *16, <aspect:aqua> *16], 
	<thaumcraft:tube_filter>, 
	[[<ore:gtceScrewdrivers>, <thaumcraft:filter>, <ore:gtceFiles>], 
	[<ore:screwSteel>, <thaumcraft:tube>, <ore:screwSteel>], 
	[null, <thaumcraft:filter>, null]]);	
	
//  Essentia Buffer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_buffer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube_buffer", "TUBES",  10, 
	[<aspect:ordo> *20, <aspect:aqua> *20], 
	<thaumcraft:tube_buffer> *4, 
	[[<thaumcraft:phial>, <thaumcraft:tube_valve>, <thaumcraft:phial>], 
	[<thaumcraft:tube>, <ore:screwSteel>, <thaumcraft:tube>], 
	[<thaumcraft:phial>, <thaumcraft:tube>, <thaumcraft:phial>]]);	
	
// Warded Jar
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_normal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jar_normal", "WARDEDJARS",  10, 
	[<aspect:aqua> *2], 
	<thaumcraft:jar_normal>, 
	[[<ore:paneGlass>, <ore:plateRubber>, <ore:paneGlass>], 
	[<ore:paneGlass>, null, <ore:paneGlass>], 
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);	
	
// Void Jar
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_void>);
mods.thaumcraft.Infusion.registerRecipe("jar_void", "WARDEDJARS", <thaumcraft:jar_void>, 1, 
	[<aspect:vacuos> *7 , <aspect:praecantatio> *7, <aspect:perditio> *7, <aspect:aqua> *7], 
	<thaumcraft:jar_normal>, 
	[<ore:plateVoid>, <ore:dustBlaze>, <ore:plateEnderEye>, <ore:nuggetQuicksilver>]);
	
// Brain in a Jar
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:jar_brain>);
mods.thaumcraft.Infusion.registerRecipe("jar_brain", "JARBRAIN", <thaumcraft:jar_brain>, 6, 
	[<aspect:exanimis> *30 , <aspect:cognitio> *15, <aspect:sensus> *15, <aspect:alienis> *10], 
	<thaumcraft:jar_normal>, 
	[<thaumcraft:brain>, <minecraft:poisonous_potato>, <minecraft:spider_eye>, <minecraft:water_bucket>, 
	<minecraft:spider_eye>, <minecraft:poisonous_potato>]);
	
// Runic Matrix
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("infusion_matrix", "INFUSION",  100, 
	[<aspect:aer> *40, <aspect:terra> *40, <aspect:ignis> *40, <aspect:aqua> *40, <aspect:ordo> *40, <aspect:perditio> *40], 
	<thaumcraft:infusion_matrix>, 
	[[<thaumcraft:stone_arcane_brick>, <thaumcraft:salis_mundus>, <thaumcraft:stone_arcane_brick>], 
	[<thaumcraft:salis_mundus>, <minecraft:ender_eye>, <thaumcraft:salis_mundus>], 
	[<thaumcraft:stone_arcane_brick>, <thaumcraft:salis_mundus>, <thaumcraft:stone_arcane_brick>]]);	
	
	
// Everful Urn
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:everfull_urn>);
mods.thaumcraft.Infusion.registerRecipe("everfull_urn", "EVERFULLURN", <thaumcraft:everfull_urn>, 12, 
	[<aspect:aqua> *64, <aspect:praecantatio> *48, <aspect:vacuos> *32, <aspect:alienis> *32, <aspect:desiderium> *16], 
	<minecraft:flower_pot>, 
	[<minecraft:water_bucket>, <minecraft:netherbrick>, <minecraft:water_bucket>, <ore:plateTitanium>, 
	<minecraft:water_bucket>, <minecraft:netherbrick>, <minecraft:water_bucket>,
	<minecraft:brick>, <minecraft:water_bucket>, <ore:plateTitanium>, <minecraft:water_bucket>, <minecraft:brick>]);
	
// Mnemonic Matrix
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:brain_box>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("brain_box", "THAUMATORIUM",  100, 
	[<aspect:ignis> *10, <aspect:aqua> *10, <aspect:ordo> *10], 
	<thaumcraft:brain_box>, 
	[[<ore:plateTitanium>, <ore:gemAmber>, <ore:plateTitanium>], 
	[<ore:gemAmber>, <thaumcraft:brain>, <ore:gemAmber>], 
	[<ore:plateTitanium>, <ore:gemAmber>, <ore:plateTitanium>]]);	
	
// Arcane Spa
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:spa>);
mods.thaumcraft.Infusion.registerRecipe("spa", "ARCANESPA", <thaumcraft:spa>, 8, 
	[<aspect:aqua> *32, <aspect:ordo> *24, <aspect:praecantatio> *16, <aspect:alkimia> *16, <aspect:machina> *8], 
	<thaumcraft:jar_normal>, 
	[<ore:plateStainlessSteel>, <ore:blockNetherQuartz>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane_brick>, <thaumcraft:bath_salts>, 
	<thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane>, <ore:blockNetherQuartz>]);
	
// Magic Mirror
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mirror>);
mods.thaumcraft.Infusion.registerRecipe("mirror", "MIRROR", <thaumcraft:mirror>, 12, 
	[<aspect:motus> *32, <aspect:permutatio> *24, <aspect:tenebrae> *16, <aspect:alienis> *8], 
	<thaumcraft:mirrored_glass>, 
	[<ore:plateEnderEye>, <ore:screwThaumium>, <ore:plateGold>, <ore:screwThaumium>, <ore:plateEnderEye>, 
	<ore:screwThaumium>, <ore:plateGold>, <ore:screwThaumium>]);
	
// Essentia Mirror
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mirror_essentia>);
mods.thaumcraft.Infusion.registerRecipe("mirror_essentia", "MIRRORESSENTIA", <thaumcraft:mirror_essentia>, 8, 
	[<aspect:motus> *32, <aspect:aqua> *24, <aspect:permutatio> *16, <aspect:vitreus> *8], 
	<thaumcraft:mirrored_glass>, 
	[<ore:plateEnderEye>, <ore:screwThaumium>, <ore:plateSteel>, <ore:screwThaumium>, <ore:plateEnderEye>, 
	<ore:screwThaumium>, <ore:plateSteel>, <ore:screwThaumium>]);

// Filling Essentia Transfuser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_input>);
mods.thaumcraft.Infusion.registerRecipe("essentia_input", "ESSENTIATRANSPORT", <thaumcraft:essentia_input>, 12, 
	[<aspect:motus> *64, <aspect:machina> *64, <aspect:praecantatio> *32, <aspect:aqua> *16, <aspect:potentia> *8, <aspect:auram> *8], 
	<thaumcraft:metal_alchemical>, 
	[<gregtech:meta_item_1:234>, <ore:plateRoseGold>, <ore:ingotVoid>, <ore:ingotVoid>, <thaumcraft:salis_mundus>,
	<gregtech:meta_item_1:234>, <ore:plateRoseGold>, <ore:ingotVoid>, <ore:ingotVoid>, <thaumcraft:salis_mundus>]);
	
// Emptying Essentia Transfuser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_output>);
mods.thaumcraft.Infusion.registerRecipe("essentia_output", "ESSENTIATRANSPORT", <thaumcraft:essentia_output>, 12, 
	[<aspect:motus> *64, <aspect:machina> *64, <aspect:praecantatio> *32, <aspect:aqua> *16, <aspect:vacuos> *8, <aspect:auram> *8], 
	<thaumcraft:metal_alchemical>, 
	[<gregtech:meta_item_1:219>, <ore:plateRoseGold>, <ore:ingotVoid>, <ore:ingotVoid>, <thaumcraft:salis_mundus>,
	<gregtech:meta_item_1:219>, <ore:plateRoseGold>, <ore:ingotVoid>, <ore:ingotVoid>, <thaumcraft:salis_mundus>]);

// Potion Sprayer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:potion_sprayer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("potion_sprayer", "POTIONSPRAYER",  150, 
	[<aspect:aqua> *30, <aspect:aer> *10], 
	<thaumcraft:potion_sprayer>, 
	[[<ore:plateBrass>, <ore:gemAmber>, <ore:plateBrass>], 
	[<ore:plateSteel>, <minecraft:brewing_stand>, <ore:plateSteel>], 
	[<ore:plateSteel>, pumpMv, <ore:plateSteel>]]);	
	
// Stabilizer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:stabilizer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("stabilizer", "INFUSIONSTABLE",  200, 
	[<aspect:terra> *30, <aspect:aqua> *30, <aspect:perditio> *30], 
	<thaumcraft:stabilizer>, 
	[[<thaumcraft:slab_arcane_stone>, <ore:blockPlutonium>, <thaumcraft:slab_arcane_stone>], 
	[<thaumcraft:stone_arcane>, emitterIv, <thaumcraft:stone_arcane>], 
	[<thaumcraft:inlay>, <ore:circuitIv> , <thaumcraft:inlay>]]);	
	
// Vis Generator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_generator>);
mods.thaumcraft.Infusion.registerRecipe("vis_generator", "VISGENERATOR", <thaumcraft:vis_generator>, 8, 
	[<aspect:machina> *32, <aspect:potentia> *24, <aspect:praecantatio> *16], 
	motorMv, 
	[<gregtech:wire_coil>, <gregtech:meta_item_1:97>, <gregtech:meta_item_1:97>, <gregtech:wire_coil>, <gregtech:meta_item_1:97>, <gregtech:meta_item_1:97>]);
	
// Flux Condenser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:condenser>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("condenser", "FLUXCLEANUP",  500, 
	[<aspect:ordo> *32], 
	<thaumcraft:condenser>, 
	[[<ore:plateStainlessSteel>, <thaumcraft:morphic_resonator>, <ore:plateStainlessSteel>], 
	[emitterHv, <ore:circuitHv>, emitterHv], 
	[<ore:plateStainlessSteel>, <thaumcraft:tube>, <ore:plateStainlessSteel>]]);	
	
// Flux Condenser Lattice
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:condenser_lattice>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("condenser_lattice", "FLUXCLEANUP",  100, 
	[<aspect:terra> *10, <aspect:aer> *10], 
	<thaumcraft:condenser_lattice>, 
	[[<ore:gemNetherQuartz>, <thaumcraft:tube>, <ore:gemNetherQuartz>], 
	[<ore:plateStainlessSteel>, <thaumcraft:filter>, <ore:plateStainlessSteel>], 
	[<ore:gemNetherQuartz>, <thaumcraft:tube>, <ore:gemNetherQuartz>]]);
	
// Void Siphon
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_siphon>);
mods.thaumcraft.Infusion.registerRecipe("void_siphon", "VOIDSIPHON", <thaumcraft:void_siphon>, 16, 
	[<aspect:perditio> *128, <aspect:machina> *64, <aspect:praecantatio> *32, <aspect:auram> *16, <aspect:potentia> *8], 
	<ore:blockVoid>, 
	[<ore:circuitEv>, <minecraft:nether_star>, <ore:plateTitanium>, <ore:circuitEv>, <minecraft:nether_star>, <ore:plateTitanium>]);
	
// Vis Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("vis_resonator", "",  10, 
	[<aspect:aer> *10, <aspect:aqua> *10], 
	<thaumcraft:vis_resonator>, 
	[[<ore:plateSteel>, <ore:gemNetherQuartz>]
	]);
	
// Simple Arcane Mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_simple>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mechanism_simple", "BASEARTIFICE", 50,
    [<aspect:ignis> * 2, <aspect:aqua> * 2], <thaumcraft:mechanism_simple>, [
    [<ore:gtceHardHammers>, <ore:gearBrass>, <ore:screwSteel>],
    [<ore:screwSteel>,<ore:ringIron>, <ore:gtceWrenches>],[<ore:plateIron>, <ore:plateIron>, <ore:screwSteel>]
    ]);

// Complex Arcane Mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_complex>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mechanism_complex", "BASEARTIFICE", 100,
    [<aspect:ignis> * 2, <aspect:aqua> * 2], <thaumcraft:mechanism_complex>, [
    [<ore:gtceHardHammers>, <ore:screwThaumium>, <thaumcraft:mechanism_simple>],
    [<thaumcraft:mechanism_simple>, <ore:ringSteel>, <ore:craftingPiston>],[<ore:plateThaumium>, <ore:plateThaumium>, <ore:screwThaumium>]
    ]);
	
// Brass Plate
recipes.remove(<thaumcraft:plate>);

// Iron Plate
recipes.remove(<thaumcraft:plate:1>);

// TODO - register thaumium/void metal with gt for plates/screws
// Thaumium Plate

// Essentia Filter
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Filter", "BASEALCHEMY", 30,
    [<aspect:aqua> * 2], <thaumcraft:filter> * 2, [
    [<ore:springSmallGold>, <ore:foilSteel>, <ore:springSmallGold>],
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>],
    [<ore:springSmallGold>,<ore:foilSteel>,<ore:springSmallGold>]
    ]);
	
// Morphic Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:morphic_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("MorphicResonator", "BASEALCHEMY", 100,
    [<aspect:ignis> * 2, <aspect:aer> * 2], <thaumcraft:morphic_resonator>, [
    [<ore:screwThaumium>, <ore:paneGlass>, <ore:screwThaumium>],
    [<ore:plateBrass>, <thaumcraft:nugget:10>, <ore:plateBrass>],
    [<ore:screwThaumium>,<ore:paneGlass>,<ore:screwThaumium>]
    ]);
	
// Mirrored Glass
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mirrored_glass>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mirrored_glass", "MIRROR",  100, 
	[<aspect:aer> *30, <aspect:terra> *30, <aspect:ignis> *30], 
	<thaumcraft:mirrored_glass>, 
	[[<ore:plateEnderEye>, <ore:quicksilver>, <ore:plateEnderEye>], 
	[<ore:quicksilver>, <ore:paneGlass>, <ore:quicksilver>], 
	[<ore:plateEnderEye>, <ore:quicksilver>, <ore:plateEnderEye>]]);	
	
// Arcane Bore
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:turret:2>);
mods.thaumcraft.Infusion.registerRecipe("ArcaneBore", "ARCANEBORE", <thaumcraft:turret:2>, 10, 
	[<aspect:machina> *64, <aspect:perditio> *64, <aspect:motus> *32, <aspect:potentia> *32, <aspect:vacuos> *32], 
	pistonMv, 
	[<thaumcraft:plank_greatwood>, <ore:plateGold>, <ore:lensDiamond>, <ore:oreCrystalAir>, <ore:lensDiamond>, <thaumcraft:thaumium_shovel>, 
	<thaumcraft:plank_greatwood>, <ore:plateGold>, <ore:lensDiamond>, <ore:oreCrystalEarth>, <ore:lensDiamond>, <thaumcraft:thaumium_pick>]);
	

// Causality Collapser
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:causality_collapser>);
mods.thaumcraft.Infusion.registerRecipe("causalityCollapser", "RIFTCLOSER", <thaumcraft:causality_collapser>, 14, 
	[<aspect:alienis> *32, <aspect:permutatio> *32, <aspect:praecantatio> *16, <aspect:alkimia> *16], 
	<appliedenergistics2:tiny_tnt>, 
	[<ore:ingotAluminum>, <ore:gemExquisiteNetherQuartz>, <ore:lensDiamond>, <ore:gemExquisiteCertusQuartz>, <minecraft:ghast_tear>, <thaumcraft:salis_mundus>, 
	<minecraft:ghast_tear>, <ore:gemExquisiteCertusQuartz>, <ore:lensDiamond>, <ore:gemExquisiteNetherQuartz>]);

// Thaumometer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumometer", "FIRSTSTEPS@2", 200,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> *1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 2], <thaumcraft:thaumometer>, [
    [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>],
    [<ore:plateGold>, <ore:lensDiamond>, <ore:plateGold>],
    [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>]
    ]);

// Essentia Resonator
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("resonator", "TUBES",  30, 
	[<aspect:aer> *8, <aspect:aqua> *8], 
	<thaumcraft:resonator>, 
	[[<ore:gtceScrewdrivers>, <ore:stickThaumium>, null], 
	[<ore:stickThaumium>, <ore:nuggetQuicksilver>, <ore:stickThaumium>], 
	[<ore:stickWood>, <ore:screwThaumium>, <ore:gtceFiles>]]);	
	
// Sanity Checker
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:sanity_checker>);
mods.thaumcraft.Infusion.registerRecipe("sanity_checker", "", <thaumcraft:sanity_checker>, 14, 
	[<aspect:cognitio> *32, <aspect:sensus> *24, <aspect:alienis> *16, <aspect:alkimia> *16], 
	<thaumcraft:thaumometer>, 
	[<thaumcraft:mirror>, <ore:screwThaumium>, <thaumcraft:brain>, <ore:screwThaumium>, <ore:gemFlawlessDiamond>, 
	<ore:screwThaumium>, <thaumcraft:brain>, <ore:screwThaumium>]);
	
// Magic Hand Mirror
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:hand_mirror>);
mods.thaumcraft.Infusion.registerRecipe("hand_mirror", "", <thaumcraft:hand_mirror>, 12, 
	[<aspect:instrumentum> *64, <aspect:motus> *32, <aspect:alienis> *16, <aspect:potentia> *8], 
	<thaumcraft:mirror>, 
	[<minecraft:compass>, <ore:screwAluminium>, <ore:plateThaumium>, <ore:screwAluminium>, 
	<minecraft:map>, <ore:screwAluminium>, <betterbuilderswands:wanddiamond>, <ore:screwAluminium>]);
	
// Thaumium Axe
recipes.remove(<thaumcraft:thaumium_axe>);
recipes.addShaped(<thaumcraft:thaumium_axe>, 
	[[<ore:plateThaumium>, <ore:ingotThaumium>, <ore:gtceHardHammers>],
	[<ore:plateThaumium>, <ore:stickWood>],
	[<ore:gtceFiles>, <ore:stickWood>]]);
	
// Thaumium Sword
recipes.remove(<thaumcraft:thaumium_sword>);
recipes.addShaped(<thaumcraft:thaumium_sword>, 
	[[null, <ore:plateThaumium>, null],
	[<ore:gtceFiles>, <ore:plateThaumium>, <ore:gtceHardHammers>],
	[null, <ore:stickWood>, null]]);
	
// Thaumium Shovel
recipes.remove(<thaumcraft:thaumium_shovel>);
recipes.addShaped(<thaumcraft:thaumium_shovel>, 
	[[<ore:gtceFiles>, <ore:plateThaumium>, <ore:gtceHardHammers>],
	[null, <ore:stickWood>, null],
	[null, <ore:stickWood>, null]]);
	
// Thaumium Pickaxe
recipes.remove(<thaumcraft:thaumium_pick>);
recipes.addShaped(<thaumcraft:thaumium_pick>, 
	[[<ore:plateThaumium>, <ore:ingotThaumium>, <ore:ingotThaumium>],
	[<ore:gtceFiles>, <ore:stickWood>, <ore:gtceHardHammers>],
	[null, <ore:stickWood>, null]]);
	
// Thaumium Shovel
recipes.remove(<thaumcraft:thaumium_hoe>);
recipes.addShaped(<thaumcraft:thaumium_hoe>, 
	[[<ore:plateThaumium>, <ore:ingotThaumium>, <ore:gtceHardHammers>],
	[<ore:gtceFiles>, <ore:stickWood>, null],
	[null, <ore:stickWood>, null]]);
	
// Void Axe
recipes.remove(<thaumcraft:void_axe>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_axe", "",  50, 
	[<aspect:perditio> *30, <aspect:terra> *15], 
	<thaumcraft:void_axe>, 
	[[<ore:plateVoid>, <ore:ingotVoid>, <ore:gtceHardHammers>], 
	[<ore:plateVoid>, <ore:stickWood>, null], 
	[<ore:gtceFiles>, <ore:stickWood>, null]]);	
	
// Void Sword
recipes.remove(<thaumcraft:void_sword>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_sword", "",  50, 
	[<aspect:perditio> *30, <aspect:terra> *15], 
	<thaumcraft:void_sword>, 
	[[null, <ore:plateVoid>, null], 
	[<ore:gtceFiles>, <ore:plateVoid>, <ore:gtceHardHammers>], 
	[null, <ore:stickWood>, null]]);

// Void Shovel
recipes.remove(<thaumcraft:void_shovel>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_shovel", "",  50, 
	[<aspect:perditio> *30, <aspect:terra> *15], 
	<thaumcraft:void_shovel>, 
	[[<ore:gtceFiles>, <ore:ingotVoid>, <ore:gtceHardHammers>], 
	[null, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]]);
	
// Void Pickaxe
recipes.remove(<thaumcraft:void_pick>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_pick", "",  50, 
	[<aspect:perditio> *30, <aspect:terra> *15], 
	<thaumcraft:void_pick>, 
	[[<ore:plateVoid>, <ore:ingotVoid>, <ore:ingotVoid>], 
	[<ore:gtceFiles>, <ore:stickWood>, <ore:gtceHardHammers>], 
	[null, <ore:stickWood>, null]]);
	
// Void Hoe
recipes.remove(<thaumcraft:void_hoe>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_hoe", "",  50, 
	[<aspect:perditio> *30, <aspect:terra> *15], 
	<thaumcraft:void_hoe>, 
	[[<ore:plateVoid>, <ore:ingotVoid>, <ore:gtceHardHammers>], 
	[<ore:gtceFiles>, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]]);
	
// Axe of the Stream
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_axe>);
mods.thaumcraft.Infusion.registerRecipe("elemental_axe", "ELEMENTALTOOLS", <thaumcraft:elemental_axe>.withTag({infench: [{lvl: 1 as short, id: 2 as short}, {lvl: 1 as short, id: 0 as short}]}), 4, 
	[<aspect:herba> *20, <aspect:instrumentum> *20, <aspect:motus> *20, <aspect:aqua> *10], 
	<thaumcraft:thaumium_axe>, 
	[<ore:gemFlawlessSapphire>, <thaumcraft:log_silverwood>, <ore:oreCrystalWater>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalWater>]);

// Sword of the Zephyr
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_sword>);
mods.thaumcraft.Infusion.registerRecipe("elemental_sword", "ELEMENTALTOOLS", <thaumcraft:elemental_sword>.withTag({infench: [{lvl: 2 as short, id: 5 as short}]}), 4, 
	[<aspect:aer> *20, <aspect:motus> *20, <aspect:potentia> *20, <aspect:aversio> *20], 
	<thaumcraft:thaumium_sword>, 
	[<ore:gemFlawlessGarnetYellow>, <thaumcraft:log_silverwood>, <ore:oreCrystalAir>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalAir>]);
	
// Shovel of the Earthmover
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_shovel>);
mods.thaumcraft.Infusion.registerRecipe("elemental_shovel", "ELEMENTALTOOLS", <thaumcraft:elemental_shovel>.withTag({infench: [{lvl: 1 as short, id: 1 as short}]}), 4, 
	[<aspect:instrumentum> *20, <aspect:terra> *20, <aspect:praecantatio> *20, <aspect:motus> *10], 
	<thaumcraft:thaumium_shovel>, 
	[<ore:gemFlawlessEmerald>, <thaumcraft:log_silverwood>, <ore:oreCrystalEarth>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalEarth>]);

// Pickaxe of the Core
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_pick>);
mods.thaumcraft.Infusion.registerRecipe("elemental_pick", "ELEMENTALTOOLS", <thaumcraft:elemental_pick>.withTag({infench: [{lvl: 1 as short, id: 4 as short}, {lvl: 2 as short, id: 3 as short}]}), 4, 
	[<aspect:ignis> *20, <aspect:ordo> *20, <aspect:sensus> *20, <aspect:desiderium> *20], 
	<thaumcraft:thaumium_pick>, 
	[<ore:gemFlawlessRuby>, <thaumcraft:log_silverwood>, <ore:oreCrystalFire>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalFire>]);

// Hoe of Growth
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_hoe>);
mods.thaumcraft.Infusion.registerRecipe("elemental_hoe", "ELEMENTALTOOLS", <thaumcraft:elemental_hoe>, 4, 
	[<aspect:herba> *20, <aspect:terra> *20, <aspect:victus> *20, <aspect:vitreus> *10], 
	<thaumcraft:thaumium_hoe>, 
	[<ore:gemFlawlessTopaz>, <thaumcraft:log_silverwood>, <ore:oreCrystalEarth>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalEarth>]);
	
// Arcane Grappler
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("GrappleGun", "GRAPPLEGUN",  150, 
	[<aspect:aer> *10, <aspect:ignis> *10], 
	<thaumcraft:grapple_gun>, 
	[[<ore:gtceScrewdrivers>, <ore:screwIron>, <thaumcraft:grapple_gun_spool>], 
	[<thaumcraft:grapple_gun_tip>, motorLv, <ore:plateIron>], 
	[null, <ore:plateBrass>, <ore:plankWood>]]);
	
// Grapple Gun Tip
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun_tip>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("GrappleGunTip", "GRAPPLEGUN",  50, 
	[<aspect:aer> *7, <aspect:ignis> *5], 
	<thaumcraft:grapple_gun_tip>, 
	[[<ore:plateBrass>, <thaumcraft:nugget:10>, <ore:plateBrass>], 
	[<ore:gtceHardHammers>, <tconstruct:arrow_head>.withTag({Material: "steel"}), <ore:gtceFiles>], 
	[<ore:plateBrass>, <thaumcraft:nugget:10>, <ore:plateBrass>]]);

// Grapple Gun Spool
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun_spool>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("GrappleGunSpool", "GRAPPLEGUN",  25, 
	[<aspect:aer> *5, <aspect:ignis> *5], 
	<thaumcraft:grapple_gun_spool>, 
	[[<tconstruct:bow_string>.withTag({Material: "slimevine_blue"}), <minecraft:tripwire_hook>, <tconstruct:bow_string>.withTag({Material: "slimevine_blue"})], 
	[<minecraft:string>, <thaumcraft:mechanism_simple>, <minecraft:string>], 
    [<bloodarsenal:blood_burned_string>, <bloodarsenal:blood_burned_string>, <bloodarsenal:blood_burned_string>]]);

// Goggles of Revealing
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:goggles>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("goggles", "BASEARTIFICE",  50, 
	[<aspect:aer> *10, <aspect:terra> *10, <aspect:ignis> *10, <aspect:aqua> *10, <aspect:ordo> *10, <aspect:perditio> *10], 
	<thaumcraft:goggles>, 
	[[<thaumcraft:fabric>, <ore:screwGold>, <thaumcraft:fabric>], 
	[<ore:ringGold>, <ore:gtceScrewdrivers>, <ore:ringGold>], 
	[<thaumcraft:thaumometer>, <ore:stickGold>, <thaumcraft:thaumometer>]]);
		
// Metal Alchemical
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AlchemicalConstruct", "TUBES", 125,
    [<aspect:ignis> * 3, <aspect:ordo> * 3], <thaumcraft:metal_alchemical>, [
    [<thaumcraft:tube>, <thaumcraft:filter>, <thaumcraft:tube>],
    [<thaumcraft:tube_valve>, <ore:blockThaumium>, <thaumcraft:tube_valve>],[<thaumcraft:tube>, <thaumcraft:filter>, <thaumcraft:tube>]
    ]);

// Thaumium Helm
recipes.remove(<thaumcraft:thaumium_helm>);
recipes.addShaped(<thaumcraft:thaumium_helm>, 
	[[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>],
	[<ore:plateThaumium>, <ore:gtceHardHammers>, <ore:plateThaumium>],
	]);
	
// Thaumium Chest
recipes.remove(<thaumcraft:thaumium_chest>);
recipes.addShaped(<thaumcraft:thaumium_chest>, 
	[[<ore:plateThaumium>, <ore:gtceHardHammers>, <ore:plateThaumium>],
	[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>],
	[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]]);
	
// Thaumium Legs
recipes.remove(<thaumcraft:thaumium_legs>);
recipes.addShaped(<thaumcraft:thaumium_legs>, 
	[[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>],
	[<ore:plateThaumium>, <ore:gtceHardHammers>, <ore:plateThaumium>],
	[<ore:plateThaumium>, null, <ore:plateThaumium>]]);
	
// Thaumium Boots
recipes.remove(<thaumcraft:thaumium_boots>);
recipes.addShaped(<thaumcraft:thaumium_boots>, 
	[[<ore:plateThaumium>, null, <ore:plateThaumium>],
	[<ore:plateThaumium>, <ore:gtceHardHammers>, <ore:plateThaumium>],
	]);
	
// Thaumaturges Robe
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("cloth_chest", "BASEINFUSION",  100, 
	[], 
	<thaumcraft:cloth_chest>, 
	[[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>], 
	[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>], 
	[<thaumcraft:fabric>, <thaumcraft:fabric>, <thaumcraft:fabric>]]);

// Thaumaturges Legs
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_legs>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("cloth_legs", "BASEINFUSION",  75, 
	[], 
	<thaumcraft:cloth_legs>, 
	[[<thaumcraft:fabric>, <thaumcraft:fabric>, <thaumcraft:fabric>], 
	[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>], 
	[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>]]);
	
// Thaumaturges Boots
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_boots>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("cloth_boots", "BASEINFUSION",  50, 
	[], 
	<thaumcraft:cloth_boots>, 
	[
	[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>], 
	[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>]]);

// Boots of the Traveller
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:traveller_boots>);
mods.thaumcraft.Infusion.registerRecipe("traveller_boots", "BOOTSTRAVELLER", <thaumcraft:traveller_boots>, 4, 
	[<aspect:volatus> *25, <aspect:aer> *25, <aspect:motus> *25, <aspect:aqua> *5], 
	<minecraft:leather_boots>, 
	[<ore:oreCrystalAir>, <thaumcraft:fabric>, <minecraft:feather>, <thaumcraft:fabric>, <ore:oreCrystalAir>, <thaumcraft:fabric>, <ore:fish>, <thaumcraft:fabric>]);	
	
// Thaumium Fortress Helm
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:fortress_helm>);
mods.thaumcraft.Infusion.registerRecipe("fortress_helm", "ARMORFORTRESS", <thaumcraft:fortress_helm>, 8, 
	[<aspect:metallum> *32, <aspect:praecantatio> *32, <aspect:praemunio> *32, <aspect:victus> *16], 
	<thaumcraft:thaumium_helm>, 
	[<ore:gemFlawlessEmerald>, <ore:plateGold>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:gemFlawlessEmerald>, 
	 <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateGold>]);

// Thaumium Fortress Cuirass
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:fortress_chest>);
mods.thaumcraft.Infusion.registerRecipe("fortress_chest", "ARMORFORTRESS", <thaumcraft:fortress_chest>, 8, 
	[<aspect:praemunio> *40, <aspect:metallum> *32, <aspect:praecantatio> *32, <aspect:cognitio> *16], 
	<thaumcraft:thaumium_chest>, 
	[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:gemFlawlessEmerald>, 
	 <ore:plateGold>, <ore:gemFlawlessEmerald>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]);	

// Thaumium Fortress Thigh Guards
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:fortress_legs>);
mods.thaumcraft.Infusion.registerRecipe("fortress_legs", "ARMORFORTRESS", <thaumcraft:fortress_legs>, 8, 
	[<aspect:metallum> *32, <aspect:praecantatio> *32, <aspect:praemunio> *24, <aspect:terra> *16], 
	<thaumcraft:thaumium_legs>, 
	[<thaumcraft:baubles:2>, <ore:plateGold>, <ore:plateThaumium>, <ore:plateThaumium>,  
	 <ore:gemFlawlessEmerald>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateGold>]);	

// Void Helm
recipes.remove(<thaumcraft:void_helm>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_helm", "BASEELDRITCH",  50, 
	[<aspect:perditio> *40, <aspect:terra> *20], 
	<thaumcraft:void_helm>, 
	[[<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>], 
	[<ore:plateVoid>, <ore:gtceHardHammers>, <ore:plateVoid>], 
	]);	 

// Void Chest
recipes.remove(<thaumcraft:void_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_chest", "BASEELDRITCH",  150, 
	[<aspect:perditio> *40, <aspect:terra> *20], 
	<thaumcraft:void_chest>, 
	[[<ore:plateVoid>, <ore:gtceHardHammers>, <ore:plateVoid>], 
	[<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>], 
	[<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>]]);	 
	
// Void Legs
recipes.remove(<thaumcraft:void_legs>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_legs", "BASEELDRITCH",  75, 
	[<aspect:perditio> *40, <aspect:terra> *20], 
	<thaumcraft:void_legs>, 
	[[<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>], 
	[<ore:plateVoid>, <ore:gtceHardHammers>, <ore:plateVoid>], 
	[<ore:plateVoid>, null, <ore:plateVoid>]]);	
	
// Void Boots
recipes.remove(<thaumcraft:void_boots>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_boots", "BASEELDRITCH",  50, 
	[<aspect:perditio> *40, <aspect:terra> *20], 
	<thaumcraft:void_boots>, 
	[[<ore:plateVoid>, null, <ore:plateVoid>], 
	[<ore:plateVoid>, <ore:gtceHardHammers>, <ore:plateVoid>]]);	

// Void Thaumaturges Helm
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_robe_helm>);
mods.thaumcraft.Infusion.registerRecipe("void_robe_helm", "VOIDROBEARMOR", <thaumcraft:void_robe_helm>, 14, 
	[<aspect:alienis> *24, <aspect:metallum> *24, <aspect:bestia> *24, <aspect:sensus> *24, <aspect:praemunio> *24, <aspect:vacuos> *24, <aspect:praecantatio> *24], 
	<thaumcraft:void_helm>, 
	[<thaumcraft:goggles>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>, <harvestcraft:hardenedleatheritem>, <ore:plateThaumium>, 
	<harvestcraft:hardenedleatheritem>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>]);
	
// Void Thaumaturges Helm
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_robe_chest>);
mods.thaumcraft.Infusion.registerRecipe("void_robe_chest", "VOIDROBEARMOR", <thaumcraft:void_robe_chest>, 14, 
	[<aspect:alienis> *32, <aspect:metallum> *32, <aspect:bestia> *32, <aspect:sensus> *32, <aspect:praemunio> *32, <aspect:vacuos> *32, <aspect:praecantatio> *32], 
	<thaumcraft:void_chest>, 
	[<thaumcraft:cloth_chest>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>,<harvestcraft:hardenedleatheritem>, <ore:plateThaumium>, 
	<harvestcraft:hardenedleatheritem>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>]);
	
// Void Thaumaturges Leggings
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_robe_legs>);
mods.thaumcraft.Infusion.registerRecipe("void_robe_legs", "VOIDROBEARMOR", <thaumcraft:void_robe_legs>, 14, 
	[<aspect:alienis> *28, <aspect:metallum> *28, <aspect:bestia> *28, <aspect:sensus> *28, <aspect:praemunio> *28, <aspect:vacuos> *28, <aspect:praecantatio> *28], 
	<thaumcraft:void_legs>, 
	[<thaumcraft:cloth_legs>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>, <harvestcraft:hardenedleatheritem>, <ore:plateThaumium>, 
	<harvestcraft:hardenedleatheritem>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>]);
	
// Mundane Amulet
recipes.remove(<thaumcraft:baubles>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mundane_amulet", "BASEARTIFICE",  20, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles>, 
	[[<ore:wireFineGold>, <ore:wireFineGold>, <ore:wireFineGold>], 
	[<ore:wireFineGold>, <ore:gtceScrewdrivers>, <ore:wireFineGold>], 
	[<ore:screwGold>, <ore:oreCrystalEarth>, <ore:screwGold>]]);	
	
// Mundane Ring
recipes.remove(<thaumcraft:baubles:1>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mundane_ring", "BASEARTIFICE",  10, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles:1>, 
	[[<ore:screwGold>, <ore:stickGold>, <ore:screwGold>], 
	[<ore:stickGold>, <ore:gtceScrewdrivers>, <ore:stickGold>], 
	[<ore:screwGold>, <ore:stickGold>, <ore:screwGold>]]);	
	
// Mundane Belt
recipes.remove(<thaumcraft:baubles:2>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mundane_belt", "BASEARTIFICE",  30, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles:2>, 
	[[<ore:screwGold>, <harvestcraft:hardenedleatheritem>, <ore:screwGold>], 
	[<harvestcraft:hardenedleatheritem>, <ore:gtceScrewdrivers>, <harvestcraft:hardenedleatheritem>], 
	[<ore:screwGold>, <ore:ringBrass>, <ore:screwGold>]]);	

// Fancy Amulet
recipes.remove(<thaumcraft:baubles:4>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("fancy_amulet", "BASEARTIFICE",  20, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles:4>, 
	[[<ore:wireFineRoseGold>, <ore:wireFineRoseGold>, <ore:wireFineRoseGold>], 
	[<ore:wireFineRoseGold>, <ore:gtceScrewdrivers>, <ore:wireFineRoseGold>], 
	[<ore:screwRoseGold>, <ore:oreCrystalAir>, <ore:screwRoseGold>]]);
	
// Fancy Ring
recipes.remove(<thaumcraft:baubles:5>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("fancy_ring", "BASEARTIFICE",  10, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles:5>, 
	[[<ore:screwRoseGold>, <ore:stickRoseGold>, <ore:screwRoseGold>], 
	[<ore:stickRoseGold>, <ore:gtceScrewdrivers>, <ore:stickRoseGold>], 
	[<ore:screwRoseGold>, <ore:stickRoseGold>, <ore:screwRoseGold>]]);	
	
// Amulet of Vis
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:amulet_vis:1>);
mods.thaumcraft.Infusion.registerRecipe("amulet_of_vis", "VISAMULET", <thaumcraft:amulet_vis:1>, 10, 
	[<aspect:potentia> *88, <aspect:praecantatio> *88, <aspect:vacuos> *48, <aspect:auram> *48, <aspect:vitreus> *24], 
	<thaumcraft:baubles>, 
	[<ore:gemExquisiteDiamond>, <ore:oreCrystalAir>, <ore:gemExquisiteDiamond>, <ore:oreCrystalEarth>, <ore:gemExquisiteDiamond>, 
	<ore:oreCrystalFire>, <ore:gemExquisiteDiamond>, <ore:oreCrystalWater>]);
	
// Cloudstepper Ring
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:cloud_ring>);
mods.thaumcraft.Infusion.registerRecipe("cloud_ring", "VISAMULET", <thaumcraft:cloud_ring>, 4, 
	[<aspect:potentia> *32, <aspect:praecantatio> *16, <aspect:volatus> *16], 
	<thaumcraft:baubles:1>, 
	[<minecraft:feather>, <ore:plateAluminium>, <minecraft:feather>, <ore:plateAluminium>, <minecraft:feather>, <ore:plateAluminium>]);
	
// Blank Lesser Focus
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:focus_1>);
mods.thaumcraft.Crucible.registerRecipe("blank_lesser_focus", "UNLOCKAUROMANCY", <thaumcraft:focus_1>, <gregtech:meta_lens:2000>, 
	[<aspect:potentia> *32, <aspect:praecantatio> *32, <aspect:auram> *16]);
	
// Blank Advanced Focus
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:focus_2>);
mods.thaumcraft.Infusion.registerRecipe("blank_advanced_focus", "FOCUSADVANCED", <thaumcraft:focus_2>, 14, 
	[<aspect:potentia> *64, <aspect:praecantatio> *64, <aspect:auram> *32], 
	<minecraft:nether_star>, 
	[<ore:quicksilver>, <ore:plateVoid>, <ore:gemExquisiteDiamond>, <ore:plateVoid>, <ore:quicksilver>, <ore:plateVoid>, <ore:enderpearl>, <ore:plateVoid>]);
	
// Blank Greater Focus
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:focus_3>);
mods.thaumcraft.Infusion.registerRecipe("blank_greater_focus", "FOCUSGREATER", <thaumcraft:focus_3>, 18, 
	[<aspect:potentia> *128, <aspect:praecantatio> *128, <aspect:auram> *64], 
	<gregtech:meta_item_1:282>, 
	[<thaumcraft:primordial_pearl:*>, <ore:plateVoid>, <ore:lensNetherStar>, <ore:plateVoid>, <ore:quicksilver>, <ore:plateVoid>, <ore:quicksilver>, <ore:plateVoid>]);
	
// Golemancers Ball
recipes.remove(<thaumcraft:golem_bell>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("golemancers_ball", "BASEGOLEMANCY",  10, 
	[<aspect:terra> *20, <aspect:ordo> *20, <aspect:perditio> *20], 
	<thaumcraft:golem_bell>, 
	[[<ore:gtceScrewdrivers>, <ore:plateNetherQuartz>, <ore:boltNetherQuartz>], 
	[<ore:screwIron>, <ore:plateNetherQuartz>, <ore:plateNetherQuartz>], 
	[<ore:stickWood>,<ore:screwIron>, <ore:gtceFiles>]]);
	
// Blank Seal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:seal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("blank_seal", "BASEGOLEMANCY",  10, 
	[<aspect:terra> *5, <aspect:ignis> *5, <aspect:ordo> *5], 
	<thaumcraft:seal>, 
	[[<ore:plateThaumium>, <minecraft:netherbrick>, <ore:plateThaumium>], 
	[<minecraft:brick>, <ore:nitor>, <minecraft:brick>], 
	[<ore:plateNetherQuartz>, <minecraft:netherbrick>, <ore:plateNetherQuartz>]]);
	
// Control Seal - Harvest
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:7>);
mods.thaumcraft.Infusion.registerRecipe("seal_harvest", "SEALHARVEST", <thaumcraft:seal:7>, 8, 
	[<aspect:herba> *20, <aspect:victus> *10, <aspect:terra> *10], 
	<thaumcraft:seal>, 
	[<minecraft:nether_star>, <minecraft:wheat_seeds>, <thaumcraft:thaumium_hoe>, <ore:plateGold>]);
	
// Control Seal - Butcher
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:8>);
mods.thaumcraft.Infusion.registerRecipe("seal_butcher", "SEALBUTCHER", <thaumcraft:seal:8>, 12, 
	[<aspect:bestia> *32, <aspect:mortuus> *32, <aspect:victus> *32, <aspect:aversio> *32], 
	<thaumcraft:seal:7>, 
	[<minecraft:nether_star>, <ore:toolKnife>, <minecraft:iron_sword>, <thaumcraft:brain>, <minecraft:bow>, <minecraft:arrow>]);
	
// Control Seal - Guard
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:seal:9>);
mods.thaumcraft.Infusion.registerRecipe("seal_guard", "SEALGUARD", <thaumcraft:seal:9>, 8, 
	[<aspect:bestia> *32, <aspect:mortuus> *32, <aspect:victus> *32, <aspect:aversio> *32], 
	<thaumcraft:seal>, 
	[<minecraft:nether_star>, <ore:plateThaumium>, <thaumcraft:thaumium_sword>, <ore:plateGold>]);
	
// Control Seal - Guard
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:seal:10>);
mods.thaumcraft.Infusion.registerRecipe("seal_guard_advanced", "SEALGUARD", <thaumcraft:seal:10>, 12, 
	[<aspect:instrumentum> *32, <aspect:machina> *24, <aspect:praemunio> *24, <aspect:aversio> *16, <aspect:auram> *8, <aspect:ordo> *8], 
	<thaumcraft:seal:9>, 
	[<thaumcraft:elemental_sword>, <thaumcraft:thaumium_helm>, <gregtech:meta_item_1:281>, <thaumcraft:thaumium_chest>, 
	<thaumcraft:traveller_boots>, <thaumcraft:thaumium_legs>, <gregtech:meta_item_1:281>, <thaumcraft:brain>]);
	
// Control Seal - Lumberjack
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:seal:11>);
mods.thaumcraft.Infusion.registerRecipe("seal_lumberjack", "SEALLUMBER", <thaumcraft:seal:11>, 12, 
	[<aspect:herba> *32, <aspect:instrumentum> *32, <aspect:potentia> *32, <aspect:terra> *20], 
	<thaumcraft:seal:7>, 
	[<minecraft:nether_star>, <thaumcraft:thaumium_axe>, <thaumcraft:elemental_axe>, <thaumcraft:brain>, <thaumcraft:thaumium_axe>]);
	
// Control Seal - Breaker
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:12>);
mods.thaumcraft.Infusion.registerRecipe("seal_breaker", "SEALBREAK", <thaumcraft:seal:12>, 12, 
	[<aspect:instrumentum> *32, <aspect:machina> *24, <aspect:perditio> *16, <aspect:praecantatio> *8], 
	<thaumcraft:seal:7>, 
	[<thaumcraft:elemental_pick>, <ore:oreCrystalAir>, <thaumcraft:elemental_axe>, <ore:oreCrystalEarth>, <thaumcraft:elemental_shovel>, <ore:oreCrystalFire>]);
	
// Control Seal - Use
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:seal:13>);
mods.thaumcraft.Infusion.registerRecipe("seal_use", "SEALUSE", <thaumcraft:seal:13>, 12, 
	[<aspect:humanus> *20, <aspect:instrumentum> *20, <aspect:machina> *20, <aspect:desiderium> *20], 
	<thaumcraft:seal:5>, 
	[<minecraft:nether_star>, <minecraft:comparator>, <minecraft:lever>, <minecraft:flint_and_steel>, <minecraft:stone_pressure_plate>, <minecraft:shears>]);

mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:pedestal_arcane>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("ArcanePedestal", "INFUSION@1", 50,
    [], <thaumcraft:pedestal_arcane>, [
    [<thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>],
    [<thaumcraft:salis_mundus>, <thaumcraft:stone_arcane>, <thaumcraft:salis_mundus>],
    [<thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>]
    ]);
	