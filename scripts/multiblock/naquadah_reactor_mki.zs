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
 
global naquadah_reactor_mki as RecipeMap = FactoryRecipeMap.start("naquadah_reactor_mki")
            .minInputs(1)
            .maxInputs(1)
            .minOutputs(1)
            .maxOutputs(1)
    .build();
 
Builder.start("naquadah_reactor_mki", 32034)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("AAA","ABA","AAA","F F","F F","AAA")
            .aisle("AAA","BDB","ADA"," E "," E ","AAA")
            .aisle("AXA","ABA","AAA","F F","F F","AAA")
            .where('X', controller.self())
            .where('B', <metastate:gregtech:meta_block_frame_127:10>)
            .where('C', <metastate:gcym:unique_casing:2>)
            .where('D', <metastate:gcym:unique_casing:3>)
            .where('E', <metastate:gregtech:wire_coil:5>)
            .where('F', <metastate:gregtech:meta_block_frame_127:10>)
            .where('A', CTPredicate.states(<metastate:gcym:large_multiblock_casing:9>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(naquadah_reactor_mki)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:9>)
    .buildAndRegister();
naquadah_reactor_mki.recipeBuilder()
    .duration(938*2)
    .EUt(-131072)
    .inputs(<contenttweaker:naquadah_rod>)
    .outputs(<contenttweaker:poor_naquadah_rod>)
    .buildAndRegister();
	
naquadah_reactor_mki.recipeBuilder()
    .duration(1876*2)
    .EUt(-131072)
    .inputs(<contenttweaker:naquadah_rod_dual>)
    .outputs(<contenttweaker:poor_naquadah_rod_dual>)
    .buildAndRegister();
	
naquadah_reactor_mki.recipeBuilder()
    .duration(3752*2)
    .EUt(-131072)
    .inputs(<contenttweaker:naquadah_rod_quad>)
    .outputs(<contenttweaker:poor_naquadah_rod_quad>)
    .buildAndRegister();