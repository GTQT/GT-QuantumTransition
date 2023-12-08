import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.IRecipe;
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;
import mods.botania.Apothecary;
import mods.botania.PureDaisy;
import mods.botaniatweaks.Agglomeration;
import mods.tconstruct.Melting;
import mods.thaumcraft.ArcaneWorkbench;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.thaumcraft.Infusion;
import mods.botania.ElvenTrade;
 
global bacterial_culture_tank as RecipeMap = FactoryRecipeMap.start("bacterial_culture_tank_controller")
    .maxInputs(4)
	.maxOutputs(6)
    .maxFluidInputs(3)
    .maxFluidOutputs(3)
    .build();
 
Builder.start("bacterial_culture_tank", 32004)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMMMM", "NNNNN", "NNNNN", "MMMMM")
            .aisle("MMMMM", "N###N", "N###N", "MMMMM")
            .aisle("MMMMM", "N###N", "N###N", "MMMMM")
            .aisle("MMMMM", "N###N", "N###N", "MMMMM")
            .aisle("MMCMM", "NNNNN", "NNNNN", "MMMMM")
            .where("C", controller.self())
            .where("N", <metastate:gcys:transparent_casing>)
            .where("M", CTPredicate.states(<metastate:gregtech:metal_casing:5>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
				| CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(bacterial_culture_tank)
    .withBaseTexture(<metastate:gregtech:metal_casing:5>)
    .buildAndRegister();
bacterial_culture_tank.recipeBuilder()
    .duration(60)  
    .EUt(1920)  
    .inputs(<gregtech:meta_item_1:440>*4) 
    .fluidInputs(<liquid:distilled_water>*1000) 
    .fluidOutputs(<liquid:bacteria>*1000) 
    .buildAndRegister(); 
	
bacterial_culture_tank.recipeBuilder()
    .duration(60)  
    .EUt(1920)  
    .inputs(<gregtech:meta_dust:344>) 
    .fluidInputs(<liquid:bacteria>*500,<liquid:sterilized_growth_medium>*500) 
    .fluidOutputs(<liquid:bacterial_sludge>*500) 
	.outputs(<gregtech:meta_item_1:709>*32)
    .buildAndRegister(); 
	
bacterial_culture_tank.recipeBuilder()
    .duration(60)  
    .EUt(1920)  
    .notConsumable(<gcys:meta_item_1:205>)
    .fluidInputs(<liquid:bacterial_sludge>*500) 
    .fluidOutputs(<liquid:enriched_bacterial_sludge>*500) 
    .buildAndRegister(); 
	
bacterial_culture_tank.recipeBuilder()
    .duration(60)  
    .EUt(1920)  
    .inputs(<gregtechfoodoption:gtfo_oredict_item:1101>) 
    .fluidInputs(<liquid:enriched_bacterial_sludge>*100) 
    .outputs(<nuclearcraft:part:6>) 
    .buildAndRegister(); 	
	
///Mana温室反应仪配方
//IIngredient翻倍
function multiIIngredient(input as IIngredient[], number as int) as IIngredient[] {
    var new_input as IIngredient[] = [];
    for index, i_Ingredient in input {
        new_input += i_Ingredient;
    }
    for i in 0 to new_input.length {
        new_input[i] = new_input[i] * (number* new_input[i].amount);
    }

    return new_input;
}
//批量无流体添加配方
function addItemRecipes(input as IIngredient[], not_consumable as IIngredient[], 
    mana_need as int, extra_fluid as ILiquidStack[], output as IIngredient[], times as int, eu_tick as int) as void {
        val output_raw = output;
        val multiOutputs as IIngredient[] = multiIIngredient(output_raw, 2);
        bacterial_culture_tank.recipeBuilder()
            .inputs(input)
            .notConsumable(not_consumable)
            .notConsumable(<botania:lens>)
            .fluidInputs(<liquid:refined_life_essence>*mana_need)
            .outputs(output_raw)
            .duration(times)
            .EUt(eu_tick)
            .buildAndRegister();
			
        bacterial_culture_tank.recipeBuilder()
            .inputs(input)
            .notConsumable(not_consumable)
            .notConsumable(<botania:lens:1>)
            .fluidInputs(<liquid:refined_life_essence>*mana_need)
            .fluidInputs(extra_fluid)
            .fluidOutputs(<liquid:distilled_water>*(mana_need/10))
            .outputs(output_raw)
            .duration(times/2)
            .EUt(eu_tick*2)
            .buildAndRegister();
			
        bacterial_culture_tank.recipeBuilder()
            .inputs(input)
            .notConsumable(not_consumable)
            .notConsumable(<botania:lens:2>)
            .fluidInputs(<liquid:refined_life_essence>*mana_need)
            .fluidInputs(extra_fluid)
            .fluidOutputs(<liquid:distilled_water>*(mana_need/10))
            .outputs(multiOutputs)
            .duration(times)
            .EUt(eu_tick*2)
            .buildAndRegister();
			
        bacterial_culture_tank.recipeBuilder()
            .inputs(input)
            .notConsumable(not_consumable)
            .notConsumable(<botania:lens:2>.withTag({compositeLens: {id: "botania:lens", Count: 1 as byte, tag: {}, Damage: 1 as short}}))
            .fluidInputs(<liquid:refined_life_essence>*mana_need)
            .fluidInputs(extra_fluid)
            .fluidOutputs(<liquid:distilled_water>*(mana_need/10))
            .outputs(multiOutputs)
            .duration(times/2)
            .EUt(eu_tick*2)
            .buildAndRegister();
    }  
//黏土花
addItemRecipes([<ore:sand>*1], [<botania:specialflower>.withTag({type: "clayconia"})], 
    250, [<liquid:enchanted_biomass_liquid>*50], [<minecraft:clay_ball>*2], 32, 192);
//白雏菊
var puredaisyInputs as IIngredient[][] = [
    [<minecraft:stone>],
    [<minecraft:netherrack>],
    [<thaumcraft:log_greatwood>],
    [<minecraft:soul_sand>],
    [<ore:blockIce>],
    [<botania:blazeblock>],
    [<minecraft:sapling>]
];
var puredaisyOutputs as IIngredient[][] = [
    [<botania:livingrock>],
    [<minecraft:cobblestone>],
    [<botania:livingwood>],
    [<minecraft:sand>],
    [<minecraft:packed_ice>],
    [<minecraft:obsidian>],
    [<thaumcraft:sapling_greatwood>]
];
for i in 0 to puredaisyOutputs.length {
    addItemRecipes(puredaisyInputs[i], [<botania:specialflower>.withTag({type: "puredaisy"})],
        250, [<liquid:enchanted_biomass_liquid>*50], puredaisyOutputs[i], 64, 192);
}

//龙蛋复制
bacterial_culture_tank.recipeBuilder()
    .inputs(<minecraft:dragon_egg>)
    .fluidInputs(<liquid:sterilized_growth_medium> * 8000,<liquid:refined_life_essence>*8000)
    .outputs(<minecraft:dragon_egg> * 4)
    .fluidOutputs([<liquid:mutagen> * 3200])
    .circuit(0)
    .EUt(1920)
    .duration(4500)
    .buildAndRegister();

//龙息
bacterial_culture_tank.recipeBuilder()
    .inputs(<minecraft:dragon_egg>)
	.chancedOutput(<draconicevolution:dragon_heart>, 1000, 1000)
    .fluidInputs(<liquid:sterilized_growth_medium> * 8000,<liquid:refined_life_essence>*2000)
    .outputs(<minecraft:dragon_breath> * 64)
    .fluidOutputs([<liquid:dragon_blood> * 16000,<liquid:mutagen> * 3200])
    .circuit(2)
    .EUt(1920)
    .duration(9000)
    .buildAndRegister();

//龙组织
bacterial_culture_tank.recipeBuilder()
    .inputs(<minecraft:dragon_egg>,<botania:manaresource:5>*16)
    .fluidInputs(<liquid:sterilized_growth_medium> * 8000,<liquid:enchanted_biomass_liquid>*2000,<liquid:refined_life_essence>*2000)
	.chancedOutput(<draconicevolution:dragon_heart>, 1000, 1000)
	.chancedOutput(<draconicevolution:dragon_heart>, 1000, 1000)
    .outputs([<contenttweaker:dragon_cell> * 64,<contenttweaker:dragon_cell> * 64,<contenttweaker:dragon_cell> * 64,<contenttweaker:dragon_cell> * 64])
    .fluidOutputs([<liquid:dragon_blood> * 16000,<liquid:mutagen> * 3200])
    .circuit(3)
    .EUt(1920)
    .duration(9000)
    .buildAndRegister();
