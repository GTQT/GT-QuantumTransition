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
 
global reactor_fuel_processing as RecipeMap = FactoryRecipeMap.start("reactor_fuel_processing")
    .maxInputs(3)
	.maxOutputs(3)
    .maxFluidInputs(6)
    .maxFluidOutputs(6)
    .build();
 
Builder.start("reactor_fuel_processing", 32044)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMM", "MMM"," M ", " M ", " M ", " M ", " M ", "   ")
            .aisle("MMM", "MMM","MNM", "MNM", "MNM", "MNM", "MNM", " M ")
            .aisle("MXM", "MMM"," M ", " M ", " M ", " M ", " M ", "   ")

            .where("X", controller.self())
			.where("N", <metastate:gcym:unique_casing:3>)
            .where("M", CTPredicate.states(<metastate:gcym:large_multiblock_casing:4>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(reactor_fuel_processing)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:4>)
    .buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:tbu_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:tbu_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:leu_233_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:leu_233_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:heu_233_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:heu_233_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:leu_235_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:leu_235_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:heu_235_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:heu_235_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:len_236_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:len_236_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:hen_236_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:hen_236_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:lep_239_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:lep_239_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:hep_239_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:hep_239_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:lep_241_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:lep_241_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:hep_241_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:hep_241_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:mix_239_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:mix_239_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:mix_241_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:mix_241_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:lea_242_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:lea_242_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:hea_242_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:hea_242_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:lecm_243_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:lecm_243_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:hecm_243_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:hecm_243_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:lecm_245_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:lecm_245_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:hecm_245_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:hecm_245_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:lecm_247_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:lecm_247_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:hecm_247_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:hecm_247_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:leb_248_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:leb_248_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:heb_248_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:heb_248_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:lecf_249_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:lecf_249_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:hecf_249_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:hecf_249_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:lecf_251_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:lecf_251_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
reactor_fuel_processing.recipeBuilder() .fluidInputs(<liquid:hecf_251_fluoride>* 1000,<liquid:flibe>*1000).fluidOutputs(<liquid:hecf_251_fluoride_flibe>* 1000).duration(200).EUt(1960).buildAndRegister();
