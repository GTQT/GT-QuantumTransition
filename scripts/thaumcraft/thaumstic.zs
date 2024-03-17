<<<<<<< HEAD
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

// --- Recipes ---
// --- Fundamentals ---

// recipes.remove(<thaumcraft:nugget:*>);
recipes.remove(<thaumcraft:ingot:*>);

/* 重复配方

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

*/

// Mundanes凡人系列
recipes.remove(<thaumcraft:baubles>);
recipes.remove(<thaumcraft:baubles:1>);
recipes.remove(<thaumcraft:baubles:2>);
recipes.addShaped(<thaumcraft:baubles>,
    [[<ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, null, <ore:string>],
    [<ore:string>, <ore:ringGold>, <ore:string>]]);
recipes.addShaped(<thaumcraft:baubles:1>,
    [[<ore:foilGold>, <ore:foilGold>, <ore:foilGold>],
    [<ore:foilGold>, <ore:toolHammer>, <ore:foilGold>],
    [<ore:foilGold>, <ore:foilGold>, <ore:foilGold>]]);
recipes.addShaped(<thaumcraft:baubles:2>,
    [[<ore:leather>, <ore:leather>, <ore:leather>],
    [<ore:leather>, <ore:toolMallet>, <ore:leather>],
    [<ore:leather>, <ore:plateGold>, <ore:leather>]]);   

// wooden table木桌
recipes.remove(<thaumcraft:table_wood>);
recipes.addShaped(<thaumcraft:table_wood>, 
	[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[<ore:stickWood>, <ore:screwGold>, <ore:stickWood>],
	[<ore:slabWood>, <ore:toolScrewdriver>, <ore:slabWood>]]);
assembler.recipeBuilder()
    .inputs(<ore:slabWood> * 5)
    .inputs(<ore:stickWood> * 2)
    .inputs(<ore:screwGold>)
    .outputs(<thaumcraft:table_wood>)
    .duration(100)
    .circuit(10)
    .EUt(8)
    .buildAndRegister();

// thaumometer魔导透镜
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumometer", "FIRSTSTEPS@2", 50,
    [<aspect:aer>, <aspect:aqua>, <aspect:ordo>, <aspect:perditio>, <aspect:ignis>, <aspect:terra>], <thaumcraft:thaumometer>, [
    [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>],
    [<ore:plateGold>, <ore:lensDiamond>, <ore:plateGold>],
    [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>]]);

// Goggles of Revealing揭示之护目镜
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:goggles>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("goggles", "BASEARTIFICE",  50, 
	[<aspect:aer> * 10, <aspect:terra> * 10, <aspect:ignis> * 10, <aspect:aqua> * 10, <aspect:ordo> * 10, <aspect:perditio> * 10], <thaumcraft:goggles>, [
    [<thaumcraft:fabric>, <ore:stickBrass>, <thaumcraft:fabric>], 
	[<ore:screwBrass>, <ore:toolScrewdriver>, <ore:screwBrass>], 
	[<thaumcraft:thaumometer>, <ore:stickBrass>, <thaumcraft:thaumometer>]]);

// Enchanted fabric魔力布匹
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:fabric>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("fabric", "", 5,
    [], <thaumcraft:fabric>, [
    [null, <ore:string>, null],
    [<ore:string>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <ore:string>],
    [null, <ore:string>, null]]);

// Thaumaturge's Robe神秘使法袍
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumaturge_robe", "", 100,
    [], <thaumcraft:cloth_chest>, [
    [<thaumcraft:fabric>, <ore:toolMallet>, <thaumcraft:fabric>],
    [<ore:wireFineGold>, <thaumcraft:fabric>, <ore:wireFineGold>],
    [<thaumcraft:fabric>, <ore:wireFineGold>, <thaumcraft:fabric>]]);

// Thaumaturge's Leggings神秘使护腿
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_legs>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumaturge_leggings", "", 100,
    [], <thaumcraft:cloth_legs>, [
    [<thaumcraft:fabric>, <thaumcraft:fabric>, <thaumcraft:fabric>],
    [<thaumcraft:fabric>, <ore:wireFineGold>, <thaumcraft:fabric>],
    [<ore:wireFineGold>, <ore:toolMallet>, <ore:wireFineGold>]]);

// Thaumaturge's Boots神秘使之靴
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_boots>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumaturge_boots", "", 100,
    [], <thaumcraft:cloth_boots>, [
    [<thaumcraft:fabric>, <ore:toolMallet>, <thaumcraft:fabric>],
    [<thaumcraft:fabric>, null, <thaumcraft:fabric>],
    [null, null, null]]);

// Vis Resonator魔力谐振器
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("vis_resonator", "", 50,
    [<aspect:aer>, <aspect:aqua>], <thaumcraft:vis_resonator>, [
    [null, <ore:plateSteel>, null],
    [<ore:plateSteel>, <ore:gemQuartzite>, <ore:plateSteel>],
    [null, <ore:plateSteel>, null]]);

// Caster's Gauntlet法师护手
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("caster_basic", "", 100,
    [<aspect:aer>, <aspect:terra>, <aspect:ignis>, <aspect:aqua>, <aspect:ordo>, <aspect:perditio>], <thaumcraft:caster_basic>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<thaumcraft:fabric>, <thaumcraft:vis_resonator>, <thaumcraft:fabric>],
    [<thaumcraft:fabric>, <thaumcraft:thaumometer>, <thaumcraft:fabric>]]);

// --- Auromancy ---
// Stone Table石桌
recipes.remove(<thaumcraft:table_stone>);
recipes.addShaped(<thaumcraft:table_stone>, 
	[[<thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>],
	[<ore:stone>, <ore:toolHammer>, <ore:stone>],
	[<ore:stone>, null, <ore:stone>]]);
assembler.recipeBuilder()
    .inputs(<thaumcraft:slab_arcane_stone> * 3)
    .inputs(<ore:stone> * 4)
    .outputs(<thaumcraft:table_stone>)
    .duration(100)
    .circuit(10)
    .EUt(8)
    .buildAndRegister();

// Focal Manipulator核心镶饰台
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:wand_workbench>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("wand_workbench", "", 100,
    [<aspect:terra>, <aspect:aqua>], <thaumcraft:wand_workbench>, [
    [<ore:plateSteel>, <thaumcraft:slab_arcane_stone>, <ore:plateSteel>],
    [<thaumcraft:stone_arcane>, <thaumcraft:vis_resonator>, <thaumcraft:stone_arcane>],
    [<ore:blockGold>, <thaumcraft:table_stone>, <ore:blockGold>]]);

// Focus Pouch施术核心手袋
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:focus_pouch>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("focus_pouch", "", 50,
    [], <thaumcraft:focus_pouch>, [
    [<ore:leather>, <ore:ringGold>, <ore:leather>],
    [<ore:leather>, <thaumcraft:baubles:2>, <ore:leather>],
    [<ore:leather>, <ore:leather>, <ore:leather>]]);

// Recharge Pedestal充能基座
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:recharge_pedestal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("recharge_pedestal", "", 100,
    [<aspect:aer>, <aspect:ordo>], <thaumcraft:recharge_pedestal>, [
    [<ore:toolFile>, <thaumcraft:vis_resonator>, <ore:toolHammer>],
    [<ore:plateDiamond>, <ore:blockGold>, <ore:plateDiamond>],
    [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);

// Workbench Charger奥术工作台充能器
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_workbench_charger>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("workbench_charger", "", 50,
    [<aspect:aer> * 2, <aspect:ordo> * 2], <thaumcraft:arcane_workbench_charger>, [
    [<ore:screwBrass>, <thaumcraft:vis_resonator>, <ore:screwBrass>],
    [<thaumcraft:log_silverwood>, <ore:toolScrewdriver>, <thaumcraft:log_silverwood>],
    [<ore:ingotThaumium>, null, <ore:ingotThaumium>]]);

// Amulet of Vis魔力护身符
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:amulet_vis:1>);
mods.thaumcraft.Infusion.registerRecipe("amulet_vis", "",
    <thaumcraft:amulet_vis:1>, 5,
    [<aspect:potentia> * 100, <aspect:auram> * 50, <aspect:vacuos> * 50],
    <thaumcraft:baubles>, 
    [<thaumcraft:vis_resonator>, 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), 
=======
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

// --- Recipes ---
// --- Fundamentals ---

// recipes.remove(<thaumcraft:nugget:*>);
recipes.remove(<thaumcraft:ingot:*>);

/* 重复配方

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

*/

// Mundanes凡人系列
recipes.remove(<thaumcraft:baubles>);
recipes.remove(<thaumcraft:baubles:1>);
recipes.remove(<thaumcraft:baubles:2>);
recipes.addShaped(<thaumcraft:baubles>,
    [[<ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, null, <ore:string>],
    [<ore:string>, <ore:ringGold>, <ore:string>]]);
recipes.addShaped(<thaumcraft:baubles:1>,
    [[<ore:foilGold>, <ore:foilGold>, <ore:foilGold>],
    [<ore:foilGold>, <ore:toolHammer>, <ore:foilGold>],
    [<ore:foilGold>, <ore:foilGold>, <ore:foilGold>]]);
recipes.addShaped(<thaumcraft:baubles:2>,
    [[<ore:leather>, <ore:leather>, <ore:leather>],
    [<ore:leather>, <ore:toolMallet>, <ore:leather>],
    [<ore:leather>, <ore:plateGold>, <ore:leather>]]);   

// wooden table木桌
recipes.remove(<thaumcraft:table_wood>);
recipes.addShaped(<thaumcraft:table_wood>, 
	[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[<ore:stickWood>, <ore:screwGold>, <ore:stickWood>],
	[<ore:slabWood>, <ore:toolScrewdriver>, <ore:slabWood>]]);
assembler.recipeBuilder()
    .inputs(<ore:slabWood> * 5)
    .inputs(<ore:stickWood> * 2)
    .inputs(<ore:screwGold>)
    .outputs(<thaumcraft:table_wood>)
    .duration(100)
    .circuit(10)
    .EUt(8)
    .buildAndRegister();

// thaumometer魔导透镜
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumometer", "FIRSTSTEPS@2", 50,
    [<aspect:aer>, <aspect:aqua>, <aspect:ordo>, <aspect:perditio>, <aspect:ignis>, <aspect:terra>], <thaumcraft:thaumometer>, [
    [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>],
    [<ore:plateGold>, <ore:lensDiamond>, <ore:plateGold>],
    [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>]]);

// Goggles of Revealing揭示之护目镜
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:goggles>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("goggles", "BASEARTIFICE",  50, 
	[<aspect:aer> * 10, <aspect:terra> * 10, <aspect:ignis> * 10, <aspect:aqua> * 10, <aspect:ordo> * 10, <aspect:perditio> * 10], <thaumcraft:goggles>, [
    [<thaumcraft:fabric>, <ore:stickBrass>, <thaumcraft:fabric>], 
	[<ore:screwBrass>, <ore:toolScrewdriver>, <ore:screwBrass>], 
	[<thaumcraft:thaumometer>, <ore:stickBrass>, <thaumcraft:thaumometer>]]);

// Enchanted fabric魔力布匹
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:fabric>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("fabric", "", 5,
    [], <thaumcraft:fabric>, [
    [null, <ore:string>, null],
    [<ore:string>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <ore:string>],
    [null, <ore:string>, null]]);

// Thaumaturge's Robe神秘使法袍
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumaturge_robe", "", 100,
    [], <thaumcraft:cloth_chest>, [
    [<thaumcraft:fabric>, <ore:toolMallet>, <thaumcraft:fabric>],
    [<ore:wireFineGold>, <thaumcraft:fabric>, <ore:wireFineGold>],
    [<thaumcraft:fabric>, <ore:wireFineGold>, <thaumcraft:fabric>]]);

// Thaumaturge's Leggings神秘使护腿
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_legs>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumaturge_leggings", "", 100,
    [], <thaumcraft:cloth_legs>, [
    [<thaumcraft:fabric>, <thaumcraft:fabric>, <thaumcraft:fabric>],
    [<thaumcraft:fabric>, <ore:wireFineGold>, <thaumcraft:fabric>],
    [<ore:wireFineGold>, <ore:toolMallet>, <ore:wireFineGold>]]);

// Thaumaturge's Boots神秘使之靴
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_boots>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumaturge_boots", "", 100,
    [], <thaumcraft:cloth_boots>, [
    [<thaumcraft:fabric>, <ore:toolMallet>, <thaumcraft:fabric>],
    [<thaumcraft:fabric>, null, <thaumcraft:fabric>],
    [null, null, null]]);

// Vis Resonator魔力谐振器
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("vis_resonator", "", 50,
    [<aspect:aer>, <aspect:aqua>], <thaumcraft:vis_resonator>, [
    [null, <ore:plateSteel>, null],
    [<ore:plateSteel>, <ore:gemQuartzite>, <ore:plateSteel>],
    [null, <ore:plateSteel>, null]]);

// Caster's Gauntlet法师护手
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("caster_basic", "", 100,
    [<aspect:aer>, <aspect:terra>, <aspect:ignis>, <aspect:aqua>, <aspect:ordo>, <aspect:perditio>], <thaumcraft:caster_basic>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<thaumcraft:fabric>, <thaumcraft:vis_resonator>, <thaumcraft:fabric>],
    [<thaumcraft:fabric>, <thaumcraft:thaumometer>, <thaumcraft:fabric>]]);

// --- Auromancy ---
// Stone Table石桌
recipes.remove(<thaumcraft:table_stone>);
recipes.addShaped(<thaumcraft:table_stone>, 
	[[<thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>],
	[<ore:stone>, <ore:toolHammer>, <ore:stone>],
	[<ore:stone>, null, <ore:stone>]]);
assembler.recipeBuilder()
    .inputs(<thaumcraft:slab_arcane_stone> * 3)
    .inputs(<ore:stone> * 4)
    .outputs(<thaumcraft:table_stone>)
    .duration(100)
    .circuit(10)
    .EUt(8)
    .buildAndRegister();

// Focal Manipulator核心镶饰台
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:wand_workbench>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("wand_workbench", "", 100,
    [<aspect:terra>, <aspect:aqua>], <thaumcraft:wand_workbench>, [
    [<ore:plateSteel>, <thaumcraft:slab_arcane_stone>, <ore:plateSteel>],
    [<thaumcraft:stone_arcane>, <thaumcraft:vis_resonator>, <thaumcraft:stone_arcane>],
    [<ore:blockGold>, <thaumcraft:table_stone>, <ore:blockGold>]]);

// Focus Pouch施术核心手袋
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:focus_pouch>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("focus_pouch", "", 50,
    [], <thaumcraft:focus_pouch>, [
    [<ore:leather>, <ore:ringGold>, <ore:leather>],
    [<ore:leather>, <thaumcraft:baubles:2>, <ore:leather>],
    [<ore:leather>, <ore:leather>, <ore:leather>]]);

// Recharge Pedestal充能基座
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:recharge_pedestal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("recharge_pedestal", "", 100,
    [<aspect:aer>, <aspect:ordo>], <thaumcraft:recharge_pedestal>, [
    [<ore:toolFile>, <thaumcraft:vis_resonator>, <ore:toolHammer>],
    [<ore:plateDiamond>, <ore:blockGold>, <ore:plateDiamond>],
    [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);

// Workbench Charger奥术工作台充能器
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_workbench_charger>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("workbench_charger", "", 50,
    [<aspect:aer> * 2, <aspect:ordo> * 2], <thaumcraft:arcane_workbench_charger>, [
    [<ore:screwBrass>, <thaumcraft:vis_resonator>, <ore:screwBrass>],
    [<thaumcraft:log_silverwood>, <ore:toolScrewdriver>, <thaumcraft:log_silverwood>],
    [<ore:ingotThaumium>, null, <ore:ingotThaumium>]]);

// Amulet of Vis魔力护身符
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:amulet_vis:1>);
mods.thaumcraft.Infusion.registerRecipe("amulet_vis", "",
    <thaumcraft:amulet_vis:1>, 5,
    [<aspect:potentia> * 100, <aspect:auram> * 50, <aspect:vacuos> * 50],
    <thaumcraft:baubles>, 
    [<thaumcraft:vis_resonator>, 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), 
>>>>>>> 923b88b71e491ac0ec28d43cc8359cea0cb8c778
    <ore:gemExquisiteAmethyst>]);