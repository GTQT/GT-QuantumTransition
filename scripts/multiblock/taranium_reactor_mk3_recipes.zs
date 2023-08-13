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
 
global s_taranium_reactor_mk3_recipes as RecipeMap = FactoryRecipeMap.start("s_taranium_reactor_mk3_recipes")
    .maxFluidInputs(1)
    .build();
 
Builder.start("s_taranium_reactor_mk3_recipes", 32016)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMMMMMM", "MMMMMMM", "MMMMMMM","MMMMMMM", "MMMMMMM","MMMMMMM", "MMMMMMM","MMMMMMM","MMMMMMM")
            .aisle("MMMMMMM", "MBAAABM", "MBAAABM","MBAAABM", "MBAAABM","MBAAABM", "MBAAABM","MBAAABM","MMMMMMM")
            .aisle("MMMMMMM", "MAAXAAM", "MAAXAAM","MAAXAAM", "MAAXAAM","MAAXAAM", "MAAXAAM","MAAXAAM","MMMMMMM")
            .aisle("MMMMMMM", "MBAAABM", "MBAAABM","MBAAABM", "MBAAABM","MBAAABM", "MBAAABM","MBAAABM","MMMMMMM")
            .aisle("MMMMMMM", "MAAXAAM", "MAAXAAM","MAAXAAM", "MAAXAAM","MAAXAAM", "MAAXAAM","MAAXAAM","MMMMMMM")
            .aisle("MMMMMMM", "MBAAABM", "MBAAABM","MBAAABM", "MBAAABM","MBAAABM", "MBAAABM","MBAAABM","MMMMMMM")
            .aisle("MMMCMMM", "MMMMMMM", "MMMMMMM","MMMMMMM", "MMMMMMM","MMMMMMM", "MMMMMMM","MMMMMMM","MMMMMMM")
            .where("C", controller.self())
            .where("A", <metastate:gregtech:meta_block_frame_127:10>)
            .where("B", <metastate:gregtech:boiler_casing:3>)
            .where("M", CTPredicate.states(<metastate:gcym:large_multiblock_casing:11>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
            )
            .where("X", <metastate:gcym:unique_casing:4>)
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(s_taranium_reactor_mk3_recipes)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:11>)
    .buildAndRegister();

s_taranium_reactor_mk3_recipes.recipeBuilder()
  .fluidInputs(<liquid:light_hyper_fuel>*800)
  .duration(80).EUt(-9511000)
  .buildAndRegister();
  
s_taranium_reactor_mk3_recipes.recipeBuilder()
   .fluidInputs(<liquid:medium_hyper_fuel>*800)
   .duration(80).EUt(-88540000)
   .buildAndRegister();
s_taranium_reactor_mk3_recipes.recipeBuilder()
   .fluidInputs(<liquid:heavy_hyper_fuel>*800)
   .duration(80).EUt(-399576000)
   .buildAndRegister();