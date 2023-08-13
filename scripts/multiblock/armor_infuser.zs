import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
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
import moretweaker.draconicevolution.FusionCrafting;
FusionCrafting.removeAll();
global armor_infuser as RecipeMap = FactoryRecipeMap.start("armor_infuser")
    .maxInputs(6)
	.maxOutputs(3)
    .maxFluidInputs(3)
    .maxFluidOutputs(3)
    .build();
 
Builder.start("armor_infuser", 32053)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
           .aisle(
                    "HHHHH",
                    "HCCCH",
                    "HCCCH",
                    "HCCCH",
                    "HHSHH")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "AAAAA",
                    "A~F~A",
                    "AFGFA",
                    "A~F~A",
                    "AAAAA")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "AAAAA",
                    "A~F~A",
                    "AFGFA",
                    "A~F~A",
                    "AAAAA")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC")
            .where("S", controller.self())
            .where("G", <metastate:contenttweaker:mass_generator>)
			.where("C", <metastate:contenttweaker:extreme_casing>)
			.where("F", <metastate:gregtech:fusion_casing:4>)
			.where("A", <metastate:gregtech:fusion_casing:1>)
            .where("H", CTPredicate.states(<metastate:contenttweaker:extreme_casing>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("~",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(armor_infuser)
    .withBaseTexture(<metastate:contenttweaker:extreme_casing>)
    .buildAndRegister();


#VOLTAGE
var basicVoltage = 524288;
var wyvernVoltage = 2097152;
var draconicVoltage = 8388608;
var chaoticVoltage = 33554432;

var Dur = 150;
var coolingfluid = <liquid:space_coolant>;
var heatedfluid = <liquid:star_inside_material>;
var basicFluidCost = 1000;
var wyvernFluidCost = 2000;
var draconicFluidCost = 3000;
var chaoticFluidCost = 4000;

var draconicTools = [<draconicevolution:draconic_pick>,<draconicevolution:draconic_shovel>,<draconicevolution:draconic_axe>] as IItemStack[];
var wyvernTools = [<draconicevolution:wyvern_pick>,<draconicevolution:wyvern_shovel>,<draconicevolution:wyvern_axe>] as IItemStack[];

for i in 0 to 3 {
armor_infuser.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2, (wyvernTools[i]))
.outputs((draconicTools[i].withTag({DEUpgrades: {digSpeed: 0 as byte, digAOE: 0 as byte, rfCap: 0 as byte}, Energy: 0 })))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();
}

armor_infuser.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2, <minecraft:diamond_hoe>)
.outputs(<draconicevolution:draconic_hoe>.withTag({DEUpgrades: {digAOE: 0 as byte, rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();
//battery
armor_infuser.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 4, <draconicevolution:draconic_energy_core> * 4, <draconicevolution:draconium_capacitor>)
.outputs(<draconicevolution:draconium_capacitor:1>.withTag({DEUpgrades: {rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();

armor_infuser.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2, <draconicevolution:draconic_shovel>,<draconicevolution:draconic_sword>,<draconicevolution:draconic_pick>)
.outputs(<draconicevolution:draconic_staff_of_power>.withTag({DEUpgrades: {attackDmg: 0 as byte, digSpeed: 0 as byte, digAOE: 0 as byte, rfCap: 0 as byte, attackAOE: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();

armor_infuser.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2,<contenttweaker:nanites> * 4, <draconicevolution:draconic_staff_of_power>)
.outputs(<draconicadditions:chaotic_staff_of_power>.withTag({DEUpgrades: {attackDmg: 0 as byte, digSpeed: 0 as byte, digAOE: 0 as byte, rfCap: 0 as byte, attackAOE: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();

armor_infuser.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2,<contenttweaker:nanites> * 4, <draconicevolution:draconic_bow>)
.outputs(<draconicadditions:chaotic_bow>.withTag({DEUpgrades: {arrowDmg: 0 as byte, arrowSpeed: 0 as byte, drawSpeed: 0 as byte, rfCap: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();

armor_infuser.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2, <draconicevolution:wyvern_sword>)
.outputs(<draconicevolution:draconic_sword>.withTag({DEUpgrades: {attackDmg: 0 as byte, rfCap: 0 as byte, attackAOE: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();

armor_infuser.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2,<draconicevolution:wyvern_bow>)
.outputs(<draconicevolution:draconic_bow>.withTag({DEUpgrades: {arrowDmg: 0 as byte, arrowSpeed: 0 as byte, drawSpeed: 0 as byte, rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();


//wyvern to dracon armor
//head
armor_infuser.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2,<draconicevolution:wyvern_helm>)
.outputs(<draconicevolution:draconic_helm>.withTag({DEUpgrades: {shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();
//chest
armor_infuser.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2,<draconicevolution:wyvern_chest>)
.outputs(<draconicevolution:draconic_chest>.withTag({DEUpgrades: {shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();
//leg
armor_infuser.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2,<draconicevolution:wyvern_legs>)
.outputs(<draconicevolution:draconic_legs>.withTag({DEUpgrades: {moveSpeed: 0 as byte, shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();
//boot
armor_infuser.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2,<draconicevolution:wyvern_boots>)
.outputs(<draconicevolution:draconic_boots>.withTag({DEUpgrades: {shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte, jumpBoost: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();

//dracon to chaotic armor
//head
armor_infuser.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2, <contenttweaker:nanites> * 4, <draconicevolution:draconic_helm>)
.outputs(<draconicadditions:chaotic_helm>.withTag({DEUpgrades: {shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();
//chest
armor_infuser.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2, <contenttweaker:nanites> * 4, <draconicevolution:draconic_chest>)
.outputs(<draconicadditions:chaotic_chest>.withTag({DEUpgrades: {attackDmg: 0 as byte, shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();
//leg
armor_infuser.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2, <contenttweaker:nanites> * 4, <draconicevolution:draconic_legs>)
.outputs(<draconicadditions:chaotic_legs>.withTag({DEUpgrades: {moveSpeed: 0 as byte, shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();
//boot
armor_infuser.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2, <contenttweaker:nanites> * 4, <draconicevolution:draconic_boots>)
.outputs(<draconicadditions:chaotic_boots>.withTag({DEUpgrades: {shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte, jumpBoost: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();