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
 
global ex_superheavy_reactor_recipes as RecipeMap = FactoryRecipeMap.start("ex_superheavy_reactor_recipes")
    .maxInputs(4)
	.maxOutputs(4)
    .maxFluidInputs(4)
    .maxFluidOutputs(4)
    .build();
 
Builder.start("ex_superheavy_reactor_recipes", 32007)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMMMM", "A###A", "A###A","A###A", "A###A", "MMMMM")
            .aisle("MMMMM", "#BBB#", "#NNN#","#NNN#", "#BBB#", "MMMMM")
            .aisle("MMMMM", "#BBB#", "#N#N#","#N#N#", "#BBB#", "MMMMM")
            .aisle("MMMMM", "#BBB#", "#NNN#","#NNN#", "#BBB#", "MMMMM")
            .aisle("MMCMM", "A###A", "A###A","A###A", "A###A", "MMMMM")
            .where("C", controller.self())
            .where("A", <metastate:gregtech:meta_block_frame_127:10>)
            .where("B", <metastate:gcym:large_multiblock_casing:10>)
            .where("M", CTPredicate.states(<metastate:gcym:large_multiblock_casing:11>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("N", <metastate:gregtech:wire_coil:5>)
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(ex_superheavy_reactor_recipes)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:11>)
    .buildAndRegister();
ex_superheavy_reactor_recipes.recipeBuilder()
    .inputs(<gregtech:meta_dust:3103>)
    .fluidInputs(<liquid:heavy_taranium_fuel>*300,<liquid:heavy_enriched_taranium_fuel>*400,<liquid:energetic_naquadria>*300,<liquid:plutonium> *144)
    .outputs(<gregtech:meta_dust:125>)
    .fluidOutputs(<liquid:heavy_hyper_fuel>*2000)
    .duration(580).EUt(1474560).buildAndRegister();
	
ex_superheavy_reactor_recipes.recipeBuilder()
    .inputs(<gregtech:meta_dust:3>)
    .fluidInputs(<liquid:medium_taranium_fuel>*350,<liquid:medium_enriched_taranium_fuel>*400,<liquid:energetic_naquadria>*300,<liquid:uranium_235> *144)
    .outputs(<gregtech:meta_dust:125>)
    .fluidOutputs(<liquid:medium_hyper_fuel>*2000)
    .duration(520).EUt(1474560).buildAndRegister();

ex_superheavy_reactor_recipes.recipeBuilder()
    .inputs(<gregtech:meta_dust:33>)
    .fluidInputs(<liquid:light_taranium_fuel>*300,<liquid:light_enriched_taranium_fuel>*500,<liquid:energetic_naquadria>*200,<liquid:uranium> *144)
    .outputs(<gregtech:meta_dust:124>)
    .fluidOutputs(<liquid:light_hyper_fuel>*2000)
    .duration(460).EUt(1474560).buildAndRegister();
	
ex_superheavy_reactor_recipes.recipeBuilder()
    .inputs(<gregtech:meta_dust:3105>)
	.fluidInputs(<liquid:sulfuric_acid>*500,<liquid:nitrogen_dioxide>*500)
    .outputs(<gregtech:meta_dust:75>*2,<gregtech:meta_dust:124>*2,<gregtech:meta_dust:3619>*5,<gregtech:meta_dust:3618>)
    .fluidOutputs(<liquid:diluted_sulfuric_acid>*500)
    .duration(200).EUt(1474560).buildAndRegister();
	
ex_superheavy_reactor_recipes.recipeBuilder()
    .inputs(<gregtech:meta_dust:126>)
    .fluidInputs(<liquid:sulfuric_acid>*500,<liquid:nitrogen_dioxide>*500)
    .outputs(<gregtech:meta_dust:58>,<gregtech:meta_dust:116>,<gregtech:meta_dust:82>,<gregtech:meta_dust:125>)
    .fluidOutputs(<liquid:energetic_naquadria>*1000)
    .duration(900).EUt(1474560).buildAndRegister();