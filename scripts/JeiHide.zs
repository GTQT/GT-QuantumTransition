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
<morefurnaces:upgrade:7>
];

//循环移除
for i, item in items {
    mods.jei.JEI.removeAndHide(item);
}