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
 
val fmodular_fission_reactor = Builder.start("multiblocktweaker:fmodular_fission_reactor",32041)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                return FactoryBlockPattern.start()
            .aisle("MMMHMMM","MDMMMDM","MMMUMMM","MMMMMMM","MMMMMMM","MEMMMEM","MMMMMMM")
            .aisle("MMMMMMM","DC   CD","MC   CM","MC   CM","MC   CM","EC   CE","MMMMMMM")
            .aisle("MMMMMMM","M     M","M ABA M","M ABA M","M ABA M","M     M","MMMMMMM")
            .aisle("MMMMMMM","D     D","M BAB M","M BAB M","M BAB M","E     E","MMMMMMM")
            .aisle("MMMMMMM","M     M","M ABA M","M ABA M","M ABA M","M     M","MMMMMMM")
            .aisle("MMMMMMM","DC   CD","MC   CM","MC   CM","MC   CM","EC   CE","MMMMMMM")
            .aisle("MMMFMMM","MDMMMDM","MMMVMMM","MMMMMMM","MMMMMMM","MEMMMEM","MMMMMMM")
            .where('F', controller.self())
            .where('C', <metastate:gregtech:meta_block_frame_20:3>)
            .where('B', <metastate:gregtech:meta_block_compressed_0:10>)
            .where('A', <metastate:gregtech:meta_block_frame_7:3>)
            .where('M', <metastate:gregtech:meta_block_compressed_3:7>)
            .where('D', CTPredicate.states(<metastate:gregtech:meta_block_compressed_3:7>)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(11).setPreviewCount(11)
			 )
            .where('E', CTPredicate.states(<metastate:gregtech:meta_block_compressed_3:7>)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(11).setPreviewCount(11)
			 )
			.where('U', CTPredicate.states(<metastate:gregtech:meta_block_compressed_3:7>)		
		        | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
			.where('V', CTPredicate.states(<metastate:gregtech:meta_block_compressed_3:7>)		
		        | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where('H', CTPredicate.states(<metastate:gregtech:meta_block_compressed_3:7>)		
		        | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
			.where(" ",CTPredicate.getAny())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(
	FactoryRecipeMap.start("fmodular_fission_reactor")
    .maxFluidInputs(2)
    .maxFluidOutputs(2)
    .build())
    .withBaseTexture(<metastate:gregtech:meta_block_compressed_3:7>)
    .buildAndRegister();
	
	
fmodular_fission_reactor.runOverclockingLogic = function(recipelogic as IRecipeLogic, recipe as IRecipe, negativeEU as bool, maxOverclocks as int) as int[] {
    return IRecipeLogic.standardOverclockingLogic(recipe.getEUt() * (negativeEU ? -1 : 1), recipelogic.maxVoltage, recipe.getDuration(), 1, 1, 0); // 1x duration, 1x voltage, 0 overclocks
} as IRunOverclockingLogicFunction;

fmodular_fission_reactor.hasMufflerMechanics = false;
fmodular_fission_reactor.hasMaintenanceMechanics = false;

fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:tbu_fluoride_flibe>,<liquid:nak>*32).fluidOutputs(<liquid:nak_hot>*32,<liquid:depleted_tbu_fluoride_flibe>).duration(125).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:leu_233_fluoride_flibe>,<liquid:nak>*172).fluidOutputs(<liquid:nak_hot>*172,<liquid:depleted_leu_233_fluoride_flibe>).duration(23).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:heu_233_fluoride_flibe>,<liquid:nak>*516).fluidOutputs(<liquid:nak_hot>*516,<liquid:depleted_heu_233_fluoride_flibe>).duration(23).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:leu_235_fluoride_flibe>,<liquid:nak>*96).fluidOutputs(<liquid:nak_hot>*96,<liquid:depleted_leu_235_fluoride_flibe>).duration(42).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:heu_235_fluoride_flibe>,<liquid:nak>*288).fluidOutputs(<liquid:nak_hot>*288,<liquid:depleted_heu_235_fluoride_flibe>).duration(42).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:len_236_fluoride_flibe>,<liquid:nak>*234).fluidOutputs(<liquid:nak_hot>*234,<liquid:depleted_len_236_fluoride_flibe>).duration(17).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:hen_236_fluoride_flibe>,<liquid:nak>*702).fluidOutputs(<liquid:nak_hot>*702,<liquid:depleted_hen_236_fluoride_flibe>).duration(17).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:lep_239_fluoride_flibe>,<liquid:nak>*100).fluidOutputs(<liquid:nak_hot>*100,<liquid:depleted_lep_239_fluoride_flibe>).duration(40).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:hep_239_fluoride_flibe>,<liquid:nak>*300).fluidOutputs(<liquid:nak_hot>*300,<liquid:depleted_hep_239_fluoride_flibe>).duration(40).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:lep_241_fluoride_flibe>,<liquid:nak>*146).fluidOutputs(<liquid:nak_hot>*146,<liquid:depleted_lep_241_fluoride_flibe>).duration(27).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:hep_241_fluoride_flibe>,<liquid:nak>*438).fluidOutputs(<liquid:nak_hot>*438,<liquid:depleted_hep_241_fluoride_flibe>).duration(27).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:mix_239_fluoride_flibe>,<liquid:nak>*106).fluidOutputs(<liquid:nak_hot>*106,<liquid:depleted_mix_239_fluoride_flibe>).duration(38).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:mix_241_fluoride_flibe>,<liquid:nak>*154).fluidOutputs(<liquid:nak_hot>*154,<liquid:depleted_mix_241_fluoride_flibe>).duration(26).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:lea_242_fluoride_flibe>,<liquid:nak>*312).fluidOutputs(<liquid:nak_hot>*312,<liquid:depleted_lea_242_fluoride_flibe>).duration(13).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:hea_242_fluoride_flibe>,<liquid:nak>*936).fluidOutputs(<liquid:nak_hot>*936,<liquid:depleted_hea_242_fluoride_flibe>).duration(13).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:lecm_243_fluoride_flibe>,<liquid:nak>*308).fluidOutputs(<liquid:nak_hot>*308,<liquid:depleted_lecm_243_fluoride_flibe>).duration(13).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:hecm_243_fluoride_flibe>,<liquid:nak>*924).fluidOutputs(<liquid:nak_hot>*924,<liquid:depleted_hecm_243_fluoride_flibe>).duration(13).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:lecm_245_fluoride_flibe>,<liquid:nak>*190).fluidOutputs(<liquid:nak_hot>*190,<liquid:depleted_lecm_245_fluoride_flibe>).duration(21).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:hecm_245_fluoride_flibe>,<liquid:nak>*570).fluidOutputs(<liquid:nak_hot>*570,<liquid:depleted_hecm_245_fluoride_flibe>).duration(21).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:lecm_247_fluoride_flibe>,<liquid:nak>*214).fluidOutputs(<liquid:nak_hot>*214,<liquid:depleted_lecm_247_fluoride_flibe>).duration(19).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:hecm_247_fluoride_flibe>,<liquid:nak>*642).fluidOutputs(<liquid:nak_hot>*642,<liquid:depleted_hecm_247_fluoride_flibe>).duration(19).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:leb_248_fluoride_flibe>,<liquid:nak>*212).fluidOutputs(<liquid:nak_hot>*212,<liquid:depleted_leb_248_fluoride_flibe>).duration(19).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:heb_248_fluoride_flibe>,<liquid:nak>*636).fluidOutputs(<liquid:nak_hot>*636,<liquid:depleted_heb_248_fluoride_flibe>).duration(19).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:lecf_249_fluoride_flibe>,<liquid:nak>*432).fluidOutputs(<liquid:nak_hot>*432,<liquid:depleted_lecf_249_fluoride_flibe>).duration(9).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:hecf_249_fluoride_flibe>,<liquid:nak>*1296).fluidOutputs(<liquid:nak_hot>*1296,<liquid:depleted_hecf_249_fluoride_flibe>).duration(9).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:lecf_251_fluoride_flibe>,<liquid:nak>*320).fluidOutputs(<liquid:nak_hot>*320,<liquid:depleted_lecf_251_fluoride_flibe>).duration(17).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:hecf_251_fluoride_flibe>,<liquid:nak>*690).fluidOutputs(<liquid:nak_hot>*690,<liquid:depleted_hecf_251_fluoride_flibe>).duration(17).EUt(100).buildAndRegister();
