import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

var items as IItemStack[] = [
<morefurnaces:furnaceblock:4>,
<morefurnaces:furnaceblock:5>,
<morefurnaces:furnaceblock:6>,
<morefurnaces:upgrade>,
<morefurnaces:upgrade:1>,
<morefurnaces:upgrade:2>,
<morefurnaces:upgrade:3>,
<morefurnaces:upgrade:4>,
<morefurnaces:upgrade:5>,
<morefurnaces:upgrade:6>,
<morefurnaces:upgrade:7>,
<enderio:item_material:23>,
<enderio:item_material:24>,
<enderio:item_material:25>,
<enderio:item_material:26>,
<enderio:item_material:27>,
<enderio:item_material:28>,
<enderio:item_material:29>,
<enderio:item_material:30>,
<enderio:item_material:31>,
<enderio:item_material:32>,
<enderio:item_material:33>,
<appliedenergistics2:material:2>,
<appliedenergistics2:material:3>,
<appliedenergistics2:material:49>,
<appliedenergistics2:material:51>,
<forestry:apatite>,
<forestry:ingot_copper>,
<forestry:ingot_tin>,
<forestry:ingot_bronze>,
<forestry:gear_bronze>,
<forestry:gear_copper>,
<forestry:gear_tin>,
<forestry:resource_storage>,
<forestry:resource_storage:1>,
<forestry:resource_storage:2>,
<forestry:resource_storage:3>,
<forestry:resources>,
<forestry:resources:1>,
<forestry:resources:2>,
<forestry:bronze_pickaxe>,
<forestry:bronze_shovel>,
<forestry:broken_bronze_pickaxe>,
<forestry:broken_bronze_shovel>,
<forestry:kit_shovel>,
<forestry:kit_pickaxe>,
<thaumcraft:plate>,
<thaumcraft:plate:1>
];

//循环移除
for i, item in items {
    mods.jei.JEI.removeAndHide(item);
	recipes.remove(item);
}