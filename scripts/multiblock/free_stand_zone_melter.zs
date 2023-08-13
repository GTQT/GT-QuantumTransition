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
 
global free_stand_zone_melter as RecipeMap = FactoryRecipeMap.start("free_stand_zone_melter")
    .maxInputs(2)
	.maxOutputs(2)
    .maxFluidInputs(2)
    .build();
 
Builder.start("free_stand_zone_melter", 32009)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("#MMM#", "#MMM#", "#NNN#", "#NNN#","#MMM#", "#MMM#")
            .aisle("MMMMM", "M###M", "N###N", "N###N","M###M", "MAAAM")
            .aisle("MMMMM", "M###M", "N###N", "N###N","M###M", "MABAM")
            .aisle("MMMMM", "M###M", "N###N", "N###N","M###M", "MAAAM")
            .aisle("#MMM#", "#MCM#", "#NNN#", "#NNN#","#MMM#", "#MMM#")
            .where("C", controller.self())
            .where("N", <metastate:gregtech:wire_coil:4>)
            .where("M", CTPredicate.states(<metastate:gregtech:metal_casing:7>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
            )
            .where("A", <metastate:gregtech:boiler_casing:3>)
            .where("B", <metastate:gregtech:multiblock_casing:1>)
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(free_stand_zone_melter)
    .withBaseTexture(<metastate:gregtech:metal_casing:7>)
    .buildAndRegister();
