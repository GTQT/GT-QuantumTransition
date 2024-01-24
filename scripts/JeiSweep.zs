import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
val AppliedEnergistics2 as IMod = loadedMods["appliedenergistics2"];
if (!isNull(AppliedEnergistics2)) {
    val itemAppliedEnergistics2 as IItemStack[] = AppliedEnergistics2.items;
    for item in itemAppliedEnergistics2 {
        if (item.displayName has "线缆伪装板") {
            if (item.displayName has "湿海绵") {
                item.addTooltip("看我看我，我是覆盖版");
            } else {
                mods.jei.JEI.hide(item);
            }
        }
    }
}

val ae2 as IMod = loadedMods["aeadditions"];
if(!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;
    for item in ae2Items {
        if(item.displayName has "流体模板")
               mods.jei.JEI.hide(item);   			   
        }
    }

val enderio as IMod = loadedMods["enderio"];
if(!isNull(enderio)) {
    val enderioItems as IItemStack[] = enderio.items;

    for item in enderioItems {
        if(item.displayName has "Spawner")
               mods.jei.JEI.hide(item); 
        if(item.displayName has "Vial")
               mods.jei.JEI.hide(item);
		if (item.displayName has "Glass")
            mods.jei.JEI.hide(item);
        if (item.displayName has "Fused Quartz") 
            mods.jei.JEI.hide(item);
        if (item.displayName has "decoration block") 
            mods.jei.JEI.hide(item);
        if(item.displayName has "灵魂瓶")
               mods.jei.JEI.hide(item); 
        if(item.displayName has "破损的刷怪箱")
               mods.jei.JEI.hide(item); 	   
    }
}


val GregTechCEu as IMod = loadedMods["gregtech"];
if (!isNull(GregTechCEu)) {
    val itemGregTechCEu as IItemStack[] = GregTechCEu.items;
    for item in itemGregTechCEu {
        if (item.displayName has "伪装板") {
            if (item.displayName has "草方块") {
                item.addTooltip("看我看我，我是覆盖版");
            } else {
                mods.jei.JEI.hide(item);
            }
        }
    }
}




