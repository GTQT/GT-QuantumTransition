#modloaded utilityworlds
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import mods.orestages.OreStages as OreStages;

recipes.remove(<utilityworlds:portal_return>);
recipes.remove(<utilityworlds:portal_garden>);
recipes.remove(<utilityworlds:portal_void>);
recipes.remove(<utilityworlds:portal_mining>);

mods.jei.JEI.removeAndHide(<utilityworlds:portal_mining>);
mods.ItemStages.addItemStage("disabledStage", <utilityworlds:portal_mining>);
OreStages.addReplacement("disabledStage", <utilityworlds:portal_mining>, <minecraft:stone>);