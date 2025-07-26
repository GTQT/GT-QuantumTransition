package classes.utils

import gregtech.api.unification.OreDictUnifier
import gregtech.api.unification.ore.OrePrefix
import gregtech.api.unification.stack.UnificationEntry
import gregtech.loaders.recipe.CraftingComponent
import groovy.transform.TupleConstructor
import net.minecraft.block.Block
import net.minecraft.item.Item
import net.minecraft.item.ItemStack

class Utility {

    static gtqt(String name) {
        return 'gtqt:' + name
    }

    static gtqtId(String name) {
        return resource('gtqt', name)
    }

}