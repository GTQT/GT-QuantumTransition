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
 
global naquadah_reactor_mkiii as RecipeMap = FactoryRecipeMap.start("naquadah_reactor_mkiii")
            .minInputs(1)
            .maxInputs(1)
            .minOutputs(1)
            .maxOutputs(1)
    .build();
 
Builder.start("naquadah_reactor_mkiii", 32036)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("AAAAAAA","ABBBBBA","AAAAAAA","F     F","F     F","F     F","F     F","AAAAAAA")
            .aisle("AAAAAAA","B     B","A     A","       ","       ","       ","       ","AAAAAAA")
            .aisle("AAAAAAA","B CCC B","A CCC A","  EEE  ","  EEE  ","  EEE  ","  EEE  ","AAAAAAA")
            .aisle("AAAAAAA","B CDC B","A CDC A","  EDE  ","  EDE  ","  EDE  ","  EDE  ","AAAAAAA")
            .aisle("AAAAAAA","B CCC B","A CCC A","  EEE  ","  EEE  ","  EEE  ","  EEE  ","AAAAAAA")
            .aisle("AAAAAAA","B     B","A     A","       ","       ","       ","       ","AAAAAAA")
            .aisle("AAAXAAA","ABBBBBA","AAAAAAA","F     F","F     F","F     F","F     F","AAAAAAA")
            .where('X', controller.self())
            .where('B', <metastate:gregtech:meta_block_frame_127:10>)
            .where('C', <metastate:gcym:unique_casing:2>)
            .where('D', <metastate:gcym:unique_casing:3>)
            .where('E', <metastate:gregtech:wire_coil:5>)
            .where('F', <metastate:gregtech:meta_block_frame_127:10>)
            .where('A', CTPredicate.states(<metastate:gcym:large_multiblock_casing:11>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(naquadah_reactor_mkiii)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:11>)
    .buildAndRegister();
naquadah_reactor_mkiii.recipeBuilder()
    .duration(469)
    .EUt(-2097152)
    .inputs(<contenttweaker:naquadah_rod>)
    .outputs(<contenttweaker:poor_naquadah_rod>)
    .buildAndRegister();
	
naquadah_reactor_mkiii.recipeBuilder()
    .duration(938)
    .EUt(-2097152)
    .inputs(<contenttweaker:naquadah_rod_dual>)
    .outputs(<contenttweaker:poor_naquadah_rod_dual>)
    .buildAndRegister();
	
naquadah_reactor_mkiii.recipeBuilder()
    .duration(1876)
    .EUt(-2097152)
    .inputs(<contenttweaker:naquadah_rod_quad>)
    .outputs(<contenttweaker:poor_naquadah_rod_quad>)
    .buildAndRegister();