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
		if (item.displayName has "Cable Facade") {
            if (item.displayName has "Sponge") {
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
	    val name = item.displayName.toLowerCase();
		   
		if (name.contains("灵魂瓶") || 
			name.contains("刷怪箱") || 
            name.contains("玻璃") || 
            name.contains("Soul Vial") || 
            name.contains("Glass") || 
            name.contains("Spawner")) {
            mods.jei.JEI.hide(item);
        }  
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

val forestry as IMod = loadedMods["forestry"];
if (!isNull(forestry)) {
    val forestryItems as IItemStack[] = forestry.items;
    
    for item in forestryItems {
        val name = item.displayName.toLowerCase();
        
        // 隐藏所有胶囊、罐和耐火胶囊类物品
        if (name.contains("胶囊") || 
			name.contains("Capsule") || 
            name.contains("罐") || 
            name.contains("Can")) {
            mods.jei.JEI.hide(item);
        }
    }
}


val gendustry as IMod = loadedMods["gendustry"];
if (!isNull(gendustry)) {
    val gendustryItems as IItemStack[] = gendustry.items;
    
    for item in gendustryItems {
        val name = item.displayName.toLowerCase();
        
        // 隐藏所有基因模板、基因样本和Genetic相关物品
        if (name.contains("genetic") || 
            name.contains("基因模板") || 
            name.contains("基因样本")) {
            mods.jei.JEI.hide(item);
        }
    }
}

//  Remove and hide some fake Better Quest items.
mods.jei.JEI.removeAndHide(<bq_standard:loot_chest>.withTag({hideLootInfo: 1 as byte}));
mods.jei.JEI.removeAndHide(<bq_standard:loot_chest:25>.withTag({hideLootInfo: 1 as byte}));
mods.jei.JEI.removeAndHide(<bq_standard:loot_chest:50>.withTag({hideLootInfo: 1 as byte}));
mods.jei.JEI.removeAndHide(<bq_standard:loot_chest:75>.withTag({hideLootInfo: 1 as byte}));
mods.jei.JEI.removeAndHide(<bq_standard:loot_chest:100>.withTag({hideLootInfo: 1 as byte}));
mods.jei.JEI.removeAndHide(<bq_standard:loot_chest:101>.withTag({hideLootInfo: 1 as byte}));
mods.jei.JEI.removeAndHide(<bq_standard:loot_chest:102>);
mods.jei.JEI.removeAndHide(<bq_standard:loot_chest:103>.withTag({loottable: "minecraft:chests/simple_dungeon", hideLootInfo: 1 as byte}));
mods.jei.JEI.removeAndHide(<bq_standard:loot_chest:103>.withTag({loottable: "minecraft:chests/simple_dungeon", hideLootInfo: 1 as byte}));
mods.jei.JEI.removeAndHide(<bq_standard:loot_chest:104>.withTag({hideLootInfo: 1 as byte, fixedLootList: [{id: "minecraft:stone", Count: 1, Damage: 0 as short, OreDict: ""}], fixedLootName: "Item Set"}));

//  Remove and hide top items.
mods.jei.JEI.removeAndHide(<theoneprobe:probe>);
mods.jei.JEI.removeAndHide(<theoneprobe:probenote>);
mods.jei.JEI.removeAndHide(<theoneprobe:creativeprobe>);
mods.jei.JEI.removeAndHide(<theoneprobe:iron_helmet_probe>.withTag({theoneprobe: 1}));
mods.jei.JEI.removeAndHide(<theoneprobe:gold_helmet_probe>.withTag({theoneprobe: 1}));
mods.jei.JEI.removeAndHide(<theoneprobe:diamond_helmet_probe>.withTag({theoneprobe: 1}));


