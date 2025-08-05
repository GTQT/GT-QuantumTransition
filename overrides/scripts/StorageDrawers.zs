import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.item.ITooltipFunction;
import crafttweaker.data.IData;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

print("ENDING StorageDrawers.zs");
mods.jei.JEI.removeAndHide(<storagedrawers:upgrade_conversion>);
// --- Recipes ---
// Compacting Drawer
recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped(<storagedrawers:compdrawers>, 
	[[<ore:plateStainlessSteel>, <ore:drawerBasic>, <ore:plateStainlessSteel>],
	[<ore:plateStainlessSteel>, <storagedrawers:controller>, <ore:plateStainlessSteel>],
	[<ore:plateVoid>, <ore:drawerBasic>, <ore:plateVoid>]]);

// Drawer Controller
recipes.remove(<storagedrawers:controller>);
recipes.addShaped(<storagedrawers:controller>, 
	[[<ore:plateStainlessSteel>,<ore:circuitLv>, <ore:plateStainlessSteel>],
	[<minecraft:repeater>, <ore:drawerBasic>, <minecraft:repeater>],
	[<ore:plateEnderEye>, <ore:plateDiamond>, <ore:plateEnderEye>]]);

// Controller Slave
recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped(<storagedrawers:controllerslave>, 
	[[<ore:plateStainlessSteel>, <ore:circuitGood>, <ore:plateStainlessSteel>],
	[<ore:plateRuby>, <ore:drawerBasic>, <ore:plateRuby>],
	[<ore:plateDiamond>, <ore:plateEnderEye>, <ore:plateDiamond>]]);
	
// Framing Table
recipes.remove(<storagedrawers:framingtable>);
recipes.addShaped(<storagedrawers:framingtable>,
	[[<ore:drawerBasic>, <ore:drawerBasic>, <ore:drawerBasic>],
	[<ore:fenceWood>, <ore:stickWood>, <ore:fenceWood>],
	[<ore:fenceWood>,  null, <ore:fenceWood>]]);
	
// Upgrade Template
recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped(<storagedrawers:upgrade_template>,
	[[<ore:screwSteel>, <ore:craftingPiston>, <ore:screwSteel>],
	[<ore:screwSteel>, <ore:drawerBasic>, <ore:screwSteel>],
	[null, null, null]]);
	
assembler.recipeBuilder()
	.inputs([<ore:drawerBasic>, <ore:craftingPiston>])
	.outputs(<storagedrawers:upgrade_template>)
	.duration(1200).EUt(16).buildAndRegister();
	
// Storage Upgrade I
recipes.remove(<storagedrawers:upgrade_storage>);
recipes.addShaped(<storagedrawers:upgrade_storage>, 
	[[<ore:plateWood>, <storagedrawers:upgrade_template>, <ore:plateWood>],
	[<storagedrawers:upgrade_template>, <ore:plateIron>, <storagedrawers:upgrade_template>],
	[<ore:plateWood>, <ore:stickWood>, <ore:plateWood>]]);
	
// Storage Upgrade II
recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped(<storagedrawers:upgrade_storage:1>, 
	[[<ore:plateIron>, <storagedrawers:upgrade_template>, <ore:plateIron>],
	[<storagedrawers:upgrade_template>, <ore:plateSteel>, <storagedrawers:upgrade_template>],
	[<ore:plateIron>, <ore:stickIron>, <ore:plateIron>]]);
	
// Storage Upgrade III
recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped(<storagedrawers:upgrade_storage:2>, 
	[[<ore:plateGold>, <storagedrawers:upgrade_template>, <ore:plateGold>],
	[<storagedrawers:upgrade_template>, <ore:plateAluminium>, <storagedrawers:upgrade_template>],
	[<ore:plateGold>, <ore:stickIron>, <ore:plateGold>]]);
	
// Storage Upgrade IV
recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped(<storagedrawers:upgrade_storage:3>, 
	[[<ore:plateDiamond>, <storagedrawers:upgrade_template>, <ore:plateDiamond>],
	[<storagedrawers:upgrade_template>, <ore:plateStainlessSteel>, <storagedrawers:upgrade_template>],
	[<ore:plateDiamond>, <ore:stickDiamond>, <ore:plateDiamond>]]);
	
// Storage Upgrade V
recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped(<storagedrawers:upgrade_storage:4>, 
	[[<ore:plateEmerald>, <storagedrawers:upgrade_template>, <ore:plateEmerald>],
	[<storagedrawers:upgrade_template>, <ore:plateTitanium>, <storagedrawers:upgrade_template>],
	[<ore:plateEmerald>, <ore:stickDiamond>, <ore:plateEmerald>]]);
	
// Void Upgrade
recipes.remove(<storagedrawers:upgrade_void>);
recipes.addShaped(<storagedrawers:upgrade_void>, 
	[[<ore:stickWood>, <ore:wireGtSingleRedAlloy>, <ore:stickWood>],
	[<ore:plateRubber>, <storagedrawers:upgrade_template>, <ore:plateRubber>],
	[<ore:stickWood>, <ore:wireGtSingleRedAlloy>, <ore:stickWood>]]);
	
// Redstone Upgrade
recipes.remove(<storagedrawers:upgrade_redstone>);
recipes.addShaped(<storagedrawers:upgrade_redstone>, 
	[[<ore:plateRedAlloy>, <ore:stickWood>, <ore:plateRedAlloy>],
	[<ore:stickWood>, <storagedrawers:upgrade_template>, <ore:stickWood>],
	[<ore:plateRedAlloy>, <ore:wireGtSingleRedAlloy>, <ore:plateRedAlloy>]]);
	
// Drawer Key
recipes.remove(<storagedrawers:drawer_key>);
recipes.addShaped(<storagedrawers:drawer_key>,
	[[null, <ore:boltGold>, <ore:plateSteel>],
	[<storagedrawers:upgrade_template>, <ore:plateSteel>, <ore:stickGold>],
	[<ore:plateGold>,null, null]]);
	
// Concealment Key
recipes.remove(<storagedrawers:shroud_key>);
assembler.recipeBuilder()
	.inputs([<storagedrawers:drawer_key>, <ore:gemEnderEye>])
	.outputs(<storagedrawers:shroud_key>)
	.duration(200).EUt(30).buildAndRegister();
	
// Personal Key
recipes.remove(<storagedrawers:personal_key>);
assembler.recipeBuilder()
	.inputs([<storagedrawers:drawer_key>, <minecraft:name_tag>])
	.outputs(<storagedrawers:personal_key>)
	.duration(200).EUt(30).buildAndRegister();
	
// Quantify Key
recipes.remove(<storagedrawers:quantify_key>);
assembler.recipeBuilder()
	.inputs([<storagedrawers:drawer_key>, <minecraft:writable_book>])
	.outputs(<storagedrawers:quantify_key>)
	.duration(200).EUt(30).buildAndRegister();
	
recipes.addShaped(<storagedrawers:produce_stone:5>, [[<gregtech:meta_plate:2013>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2013>],[<storagedrawers:upgrade_template>, <minecraft:cobblestone>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:2013>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2013>]]);
recipes.addShaped(<storagedrawers:ender_linker:5>, [[<gregtech:meta_plate:2013>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2013>],[<storagedrawers:upgrade_template>, <minecraft:ender_pearl>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:2013>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2013>]]);
recipes.addShaped(<storagedrawers:produce_water:5>, [[<gregtech:meta_plate:2013>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2013>],[<storagedrawers:upgrade_template>, <minecraft:water_bucket>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:2013>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2013>]]);
recipes.addShaped(<storagedrawers:produce_water:4>, [[<gregtech:meta_plate:113>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:113>],[<storagedrawers:upgrade_template>, <minecraft:water_bucket>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:113>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:113>]]);
recipes.addShaped(<storagedrawers:ender_linker:4>, [[<gregtech:meta_plate:113>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:113>],[<storagedrawers:upgrade_template>, <minecraft:ender_pearl>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:113>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:113>]]);
recipes.addShaped(<storagedrawers:produce_stone:4>, [[<gregtech:meta_plate:113>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:113>],[<storagedrawers:upgrade_template>, <minecraft:cobblestone>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:113>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:113>]]);
recipes.addShaped(<storagedrawers:produce_stone:3>, [[<gregtech:meta_plate:323>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:323>],[<storagedrawers:upgrade_template>, <minecraft:cobblestone>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:323>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:323>]]);
recipes.addShaped(<storagedrawers:ender_linker:3>, [[<gregtech:meta_plate:323>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:323>],[<storagedrawers:upgrade_template>, <minecraft:ender_pearl>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:323>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:323>]]);
recipes.addShaped(<storagedrawers:produce_water:3>, [[<gregtech:meta_plate:323>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:323>],[<storagedrawers:upgrade_template>, <minecraft:water_bucket>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:323>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:323>]]);
recipes.addShaped(<storagedrawers:produce_water:2>, [[<gregtech:meta_plate:2>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2>],[<storagedrawers:upgrade_template>, <minecraft:water_bucket>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:2>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2>]]);
recipes.addShaped(<storagedrawers:ender_linker:2>, [[<gregtech:meta_plate:2>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2>],[<storagedrawers:upgrade_template>, <minecraft:ender_pearl>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:2>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2>]]);
recipes.addShaped(<storagedrawers:produce_stone:2>, [[<gregtech:meta_plate:2>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2>],[<storagedrawers:upgrade_template>, <minecraft:cobblestone>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:2>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:2>]]);
recipes.addShaped(<storagedrawers:produce_stone:1>, [[<gregtech:meta_plate:324>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:324>],[<storagedrawers:upgrade_template>, <minecraft:cobblestone>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:324>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:324>]]);
recipes.addShaped(<storagedrawers:ender_linker:1>, [[<gregtech:meta_plate:324>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:324>],[<storagedrawers:upgrade_template>, <minecraft:ender_pearl>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:324>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:324>]]);
recipes.addShaped(<storagedrawers:produce_water:1>, [[<gregtech:meta_plate:324>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:324>],[<storagedrawers:upgrade_template>, <minecraft:water_bucket>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:324>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:324>]]);
recipes.addShaped(<storagedrawers:produce_water>, [[<gregtech:meta_plate:51>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:51>],[<storagedrawers:upgrade_template>, <minecraft:water_bucket>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:51>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:51>]]);
recipes.addShaped(<storagedrawers:ender_linker>, [[<gregtech:meta_plate:51>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:51>],[<storagedrawers:upgrade_template>, <minecraft:ender_pearl>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:51>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:51>]]);
recipes.addShaped(<storagedrawers:produce_stone>, [[<gregtech:meta_plate:51>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:51>],[<storagedrawers:upgrade_template>, <minecraft:cobblestone>, <storagedrawers:upgrade_template>], [<gregtech:meta_plate:51>, <storagedrawers:upgrade_template>, <gregtech:meta_plate:51>]]);
