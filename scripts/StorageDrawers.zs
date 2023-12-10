import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.item.ITooltipFunction;
import crafttweaker.data.IData;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
# Drawer Tooltips
function getNested(inTag as IData, keys as string[], alt as IData) as IData {
    var tag = inTag;
    for key in keys {
        if (isNull(tag)) return alt;
        tag = tag.memberGet(key);
    }
    return isNull(tag) ? alt : tag;
}

# Indicate materials framing Framed Drawers
function makeTagFunc(name as string) as ITooltipFunction {
    val matTag = "Mat" + name[0];
    return function(stack as IItemStack) as string {
        if (isNull(stack) || isNull(stack.tag) || isNull(stack.tag.memberGet(matTag))) return "§e" + name + ": §r§c-§r";
        val data as IData = stack.tag.memberGet(matTag);
        val item as IItemStack = itemUtils.getItem(data.id, data.Damage);
        return "§e" + name + ": §r" + (isNull(item) ? "§c-§r" : item.displayName);
    } as ITooltipFunction;
}

# Format item & amount
function contents(name as string, count as int) as string {
    return "§c" + count + "§r §6" + name + "§r";
}

# Convert an array of strings into a comma separated string, with a custom joiner if >2 entries. Uses an Oxford Comma
function arrayToList(list as string[], joiner as string) as string {
    var output as string = "";
    for index, entry in list {
        output += entry;
        if (index == list.length - 1) output += ".";
        else if (index == list.length - 2 && list.length > 2) output += ", §b" + joiner + "§r ";
        else if (index == list.length - 2) output += " §b" + joiner + "§r ";
        else output += ", ";
    }
    return output;
}

# Metadata to Multiplier for Drawer Upgrades
static upgradeMultiplier as int[int] = {
    0:  2,
    1:  4,
    2:  8,
    3: 16,
    4: 32,
} as int[int];

# Determine the current capacity of a drawer using its current upgrades based on an input base.
function capacity(passBase as int) as ITooltipFunction {
    return function(drawer as IItemStack) as string {
        val g as IData = getNested(drawer.tag, ["tile", "Upgrades"], []);

        var base = passBase;
        var total = 0;
        for x in g.asList() {
            if (isNull(x)) continue;
            if (x.id == "storagedrawers:upgrade_storage") total += upgradeMultiplier[x.Damage];
            else if (x.id == "storagedrawers:upgrade_one_stack") base = 1;
            else if (x.id == "storagedrawers:upgrade_creative" && x.Damage == 0) return "Infinite Storage";
            else if (x.id == "storagedrawers:upgrade_creative" && x.Damage == 1) return "Vending";
        }
        val capacity = (base * (total > 0 ? total : 1));
        return "Capacity: §c" + capacity + "§r stack" + (capacity == 1 ? "" : "s");
    } as ITooltipFunction;
}

# Convert a non-compacting drawer into a comma separated list containing all its items.
# Note that multiple of the same type of item are *not* combined.
function normalDrawer() as ITooltipFunction {
    return function(drawer as IItemStack) as string {
        val items as IData = getNested(drawer.tag, ["tile", "Drawers"], []);
        if (isNull(items)) return "";
        var end as string[] = [];
        for i, x in items.asList() {
            if (isNull(x) || isNull(x.Item)) continue;
            val item as IItemStack = itemUtils.getItem(x.Item.id, x.Item.Damage);
            end += contents(item.displayName, x.Count);
        }
        if (end.length == 0) return "§6Contains nothing§r";
        return arrayToList(end, "and");
    } as ITooltipFunction;
}

# Convert a compacting drawer into a comma separated list containing its items, indicating that the quantity is exclusive between types.
function compactingDrawer() as ITooltipFunction {
    return function(drawer as IItemStack) as string {
        val count as IData = getNested(drawer.tag, ["tile", "Drawers", "Count"], "0");

        val items as IData = getNested(drawer.tag, ["tile", "Drawers", "Items"], []);
        if (isNull(items) || isNull(count)) return "";
        var end as string[] = [];
        for i, x in items.asList() {
            if (isNull(x) || isNull(x.Item)) continue;
            val item as IItemStack = itemUtils.getItem(x.Item.id, x.Item.Damage);
            end += contents(item.displayName, count / x.Conv);
        }
        if (end.length == 0) return "§6Contains nothing§r";
        return arrayToList(end, "or");
    } as ITooltipFunction;
}

# Setup the drawer tooltips
function setupDrawerTooltip(drawer as IItemStack, trim as bool, slots as int, stack as int) {
    if (trim) {
        drawer.addAdvancedTooltip(makeTagFunc("Side"));
        drawer.addAdvancedTooltip(makeTagFunc("Front"));
        drawer.addAdvancedTooltip(makeTagFunc("Trim"));
    }
    if (stack > 0) {
        drawer.removeTooltip("stacks per drawer");
        drawer.addAdvancedTooltip(capacity(stack));
    }
    if (slots == 3) {
        drawer.addAdvancedTooltip(compactingDrawer());
    } else if (slots > 0) {
        drawer.addAdvancedTooltip(normalDrawer());
    }
}

setupDrawerTooltip(<storagedrawers:basicdrawers>, false, 1, 32);
setupDrawerTooltip(<storagedrawers:basicdrawers:1>, false, 2, 16);
setupDrawerTooltip(<storagedrawers:basicdrawers:2>, false, 4, 8);
setupDrawerTooltip(<storagedrawers:basicdrawers:3>, false, 2, 8);
setupDrawerTooltip(<storagedrawers:basicdrawers:4>, false, 4, 4);
setupDrawerTooltip(<storagedrawers:customdrawers>, true, 1, 32);
setupDrawerTooltip(<storagedrawers:customdrawers:1>, true, 2, 16);
setupDrawerTooltip(<storagedrawers:customdrawers:2>, true, 4, 8);
setupDrawerTooltip(<storagedrawers:customdrawers:3>, true, 2, 8);
setupDrawerTooltip(<storagedrawers:customdrawers:4>, true, 4, 4);
setupDrawerTooltip(<storagedrawers:compdrawers>, false, 3, 16);

<storagedrawers:customtrim>.addAdvancedTooltip(makeTagFunc("Side"));
<storagedrawers:customtrim>.addAdvancedTooltip(makeTagFunc("Trim"));

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