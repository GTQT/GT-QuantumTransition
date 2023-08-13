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
            .where('B', <metastate:gregtech:meta_block_compressed_21:5>)
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
    .maxFluidOutputs(1)
	.maxOutputs(2)
	.maxInputs(1)
    .build())
    .withBaseTexture(<metastate:gregtech:meta_block_compressed_3:7>)
    .buildAndRegister();
	
	
fmodular_fission_reactor.runOverclockingLogic = function(recipelogic as IRecipeLogic, recipe as IRecipe, negativeEU as bool, maxOverclocks as int) as int[] {
    return IRecipeLogic.standardOverclockingLogic(recipe.getEUt() * (negativeEU ? -1 : 1), recipelogic.maxVoltage, recipe.getDuration(), 1, 1, 0); // 1x duration, 1x voltage, 0 overclocks
} as IRunOverclockingLogicFunction;

fmodular_fission_reactor.hasMufflerMechanics = false;
fmodular_fission_reactor.hasMaintenanceMechanics = false;

fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*10,<liquid:nak>*200).fluidOutputs(<liquid:nak_hot>*200).circuit(1).duration(1).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*20,<liquid:nak>*400).fluidOutputs(<liquid:nak_hot>*400).circuit(2).duration(1).EUt(200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*30,<liquid:nak>*600).fluidOutputs(<liquid:nak_hot>*600).circuit(3).duration(1).EUt(300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*40,<liquid:nak>*800).fluidOutputs(<liquid:nak_hot>*800).circuit(4).duration(1).EUt(400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*50,<liquid:nak>*1000).fluidOutputs(<liquid:nak_hot>*1000).circuit(5).duration(1).EUt(500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*60,<liquid:nak>*1200).fluidOutputs(<liquid:nak_hot>*1200).circuit(6).duration(1).EUt(600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*70,<liquid:nak>*1400).fluidOutputs(<liquid:nak_hot>*1400).circuit(7).duration(1).EUt(700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*80,<liquid:nak>*1600).fluidOutputs(<liquid:nak_hot>*1600).circuit(8).duration(1).EUt(800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*90,<liquid:nak>*1800).fluidOutputs(<liquid:nak_hot>*1800).circuit(9).duration(1).EUt(900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*100,<liquid:nak>*2000).fluidOutputs(<liquid:nak_hot>*2000).circuit(10).duration(1).EUt(1000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*110,<liquid:nak>*2200).fluidOutputs(<liquid:nak_hot>*2200).circuit(11).duration(1).EUt(1100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*120,<liquid:nak>*2400).fluidOutputs(<liquid:nak_hot>*2400).circuit(12).duration(1).EUt(1200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*130,<liquid:nak>*2600).fluidOutputs(<liquid:nak_hot>*2600).circuit(13).duration(1).EUt(1300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*140,<liquid:nak>*2800).fluidOutputs(<liquid:nak_hot>*2800).circuit(14).duration(1).EUt(1400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*150,<liquid:nak>*3000).fluidOutputs(<liquid:nak_hot>*3000).outputs(<nuclearcraft:uranium>).circuit(15).duration(1).EUt(1500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*160,<liquid:nak>*3200).fluidOutputs(<liquid:nak_hot>*3200).outputs(<nuclearcraft:uranium>).circuit(16).duration(1).EUt(1600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*170,<liquid:nak>*3400).fluidOutputs(<liquid:nak_hot>*3400).outputs(<nuclearcraft:uranium>).circuit(17).duration(1).EUt(1700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*180,<liquid:nak>*3600).fluidOutputs(<liquid:nak_hot>*3600).outputs(<nuclearcraft:uranium>).circuit(18).duration(1).EUt(1800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*190,<liquid:nak>*3800).fluidOutputs(<liquid:nak_hot>*3800).outputs(<nuclearcraft:uranium>).circuit(19).duration(1).EUt(1900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*200,<liquid:nak>*4000).fluidOutputs(<liquid:nak_hot>*4000).outputs(<nuclearcraft:uranium>).circuit(20).duration(1).EUt(2000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*210,<liquid:nak>*4200).fluidOutputs(<liquid:nak_hot>*4200).outputs(<nuclearcraft:uranium>).circuit(21).duration(1).EUt(2100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*220,<liquid:nak>*4400).fluidOutputs(<liquid:nak_hot>*4400).outputs(<nuclearcraft:uranium>).circuit(22).duration(1).EUt(2200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*230,<liquid:nak>*4600).fluidOutputs(<liquid:nak_hot>*4600).outputs(<nuclearcraft:uranium>).circuit(23).duration(1).EUt(2300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*240,<liquid:nak>*4800).fluidOutputs(<liquid:nak_hot>*4800).outputs(<nuclearcraft:uranium>).circuit(24).duration(1).EUt(2400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:thorium>*250,<liquid:nak>*5000).fluidOutputs(<liquid:nak_hot>*5000).outputs(<nuclearcraft:uranium>).circuit(25).duration(1).EUt(2500).buildAndRegister();

fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*10,<liquid:nak>*200).fluidOutputs(<liquid:nak_hot>*200).circuit(1).duration(1).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*20,<liquid:nak>*400).fluidOutputs(<liquid:nak_hot>*400).circuit(2).duration(1).EUt(200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*30,<liquid:nak>*600).fluidOutputs(<liquid:nak_hot>*600).circuit(3).duration(1).EUt(300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*40,<liquid:nak>*800).fluidOutputs(<liquid:nak_hot>*800).circuit(4).duration(1).EUt(400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*50,<liquid:nak>*1000).fluidOutputs(<liquid:nak_hot>*1000).circuit(5).duration(1).EUt(500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*60,<liquid:nak>*1200).fluidOutputs(<liquid:nak_hot>*1200).circuit(6).duration(1).EUt(600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*70,<liquid:nak>*1400).fluidOutputs(<liquid:nak_hot>*1400).circuit(7).duration(1).EUt(700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*80,<liquid:nak>*1600).fluidOutputs(<liquid:nak_hot>*1600).circuit(8).duration(1).EUt(800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*90,<liquid:nak>*1800).fluidOutputs(<liquid:nak_hot>*1800).circuit(9).duration(1).EUt(900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*100,<liquid:nak>*2000).fluidOutputs(<liquid:nak_hot>*2000).circuit(10).duration(1).EUt(1000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*110,<liquid:nak>*2200).fluidOutputs(<liquid:nak_hot>*2200).circuit(11).duration(1).EUt(1100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*120,<liquid:nak>*2400).fluidOutputs(<liquid:nak_hot>*2400).circuit(12).duration(1).EUt(1200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*130,<liquid:nak>*2600).fluidOutputs(<liquid:nak_hot>*2600).circuit(13).duration(1).EUt(1300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*140,<liquid:nak>*2800).fluidOutputs(<liquid:nak_hot>*2800).circuit(14).duration(1).EUt(1400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*150,<liquid:nak>*3000).fluidOutputs(<liquid:nak_hot>*3000).outputs(<nuclearcraft:uranium:5>).circuit(15).duration(1).EUt(1500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*160,<liquid:nak>*3200).fluidOutputs(<liquid:nak_hot>*3200).outputs(<nuclearcraft:uranium:5>).circuit(16).duration(1).EUt(1600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*170,<liquid:nak>*3400).fluidOutputs(<liquid:nak_hot>*3400).outputs(<nuclearcraft:uranium:5>).circuit(17).duration(1).EUt(1700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*180,<liquid:nak>*3600).fluidOutputs(<liquid:nak_hot>*3600).outputs(<nuclearcraft:uranium:5>).circuit(18).duration(1).EUt(1800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*190,<liquid:nak>*3800).fluidOutputs(<liquid:nak_hot>*3800).outputs(<nuclearcraft:uranium:5>).circuit(19).duration(1).EUt(1900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*200,<liquid:nak>*4000).fluidOutputs(<liquid:nak_hot>*4000).outputs(<nuclearcraft:uranium:5>).circuit(20).duration(1).EUt(2000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*210,<liquid:nak>*4200).fluidOutputs(<liquid:nak_hot>*4200).outputs(<nuclearcraft:uranium:5>).circuit(21).duration(1).EUt(2100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*220,<liquid:nak>*4400).fluidOutputs(<liquid:nak_hot>*4400).outputs(<nuclearcraft:uranium:5>).circuit(22).duration(1).EUt(2200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*230,<liquid:nak>*4600).fluidOutputs(<liquid:nak_hot>*4600).outputs(<nuclearcraft:uranium:5>).circuit(23).duration(1).EUt(2300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*240,<liquid:nak>*4800).fluidOutputs(<liquid:nak_hot>*4800).outputs(<nuclearcraft:uranium:5>).circuit(24).duration(1).EUt(2400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_233>*250,<liquid:nak>*5000).fluidOutputs(<liquid:nak_hot>*5000).outputs(<nuclearcraft:uranium:5>).circuit(25).duration(1).EUt(2500).buildAndRegister();

fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*10,<liquid:nak>*200).fluidOutputs(<liquid:nak_hot>*200).circuit(1).duration(1).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*20,<liquid:nak>*400).fluidOutputs(<liquid:nak_hot>*400).circuit(2).duration(1).EUt(200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*30,<liquid:nak>*600).fluidOutputs(<liquid:nak_hot>*600).circuit(3).duration(1).EUt(300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*40,<liquid:nak>*800).fluidOutputs(<liquid:nak_hot>*800).circuit(4).duration(1).EUt(400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*50,<liquid:nak>*1000).fluidOutputs(<liquid:nak_hot>*1000).circuit(5).duration(1).EUt(500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*60,<liquid:nak>*1200).fluidOutputs(<liquid:nak_hot>*1200).circuit(6).duration(1).EUt(600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*70,<liquid:nak>*1400).fluidOutputs(<liquid:nak_hot>*1400).circuit(7).duration(1).EUt(700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*80,<liquid:nak>*1600).fluidOutputs(<liquid:nak_hot>*1600).circuit(8).duration(1).EUt(800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*90,<liquid:nak>*1800).fluidOutputs(<liquid:nak_hot>*1800).circuit(9).duration(1).EUt(900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*100,<liquid:nak>*2000).fluidOutputs(<liquid:nak_hot>*2000).circuit(10).duration(1).EUt(1000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*110,<liquid:nak>*2200).fluidOutputs(<liquid:nak_hot>*2200).circuit(11).duration(1).EUt(1100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*120,<liquid:nak>*2400).fluidOutputs(<liquid:nak_hot>*2400).circuit(12).duration(1).EUt(1200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*130,<liquid:nak>*2600).fluidOutputs(<liquid:nak_hot>*2600).circuit(13).duration(1).EUt(1300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*140,<liquid:nak>*2800).fluidOutputs(<liquid:nak_hot>*2800).circuit(14).duration(1).EUt(1400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*150,<liquid:nak>*3000).fluidOutputs(<liquid:nak_hot>*3000).outputs(<nuclearcraft:neptunium:5>).circuit(15).duration(1).EUt(1500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*160,<liquid:nak>*3200).fluidOutputs(<liquid:nak_hot>*3200).outputs(<nuclearcraft:neptunium:5>).circuit(16).duration(1).EUt(1600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*170,<liquid:nak>*3400).fluidOutputs(<liquid:nak_hot>*3400).outputs(<nuclearcraft:neptunium:5>).circuit(17).duration(1).EUt(1700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*180,<liquid:nak>*3600).fluidOutputs(<liquid:nak_hot>*3600).outputs(<nuclearcraft:neptunium:5>).circuit(18).duration(1).EUt(1800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*190,<liquid:nak>*3800).fluidOutputs(<liquid:nak_hot>*3800).outputs(<nuclearcraft:neptunium:5>).circuit(19).duration(1).EUt(1900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*200,<liquid:nak>*4000).fluidOutputs(<liquid:nak_hot>*4000).outputs(<nuclearcraft:neptunium:5>).circuit(20).duration(1).EUt(2000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*210,<liquid:nak>*4200).fluidOutputs(<liquid:nak_hot>*4200).outputs(<nuclearcraft:neptunium:5>).circuit(21).duration(1).EUt(2100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*220,<liquid:nak>*4400).fluidOutputs(<liquid:nak_hot>*4400).outputs(<nuclearcraft:neptunium:5>).circuit(22).duration(1).EUt(2200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*230,<liquid:nak>*4600).fluidOutputs(<liquid:nak_hot>*4600).outputs(<nuclearcraft:neptunium:5>).circuit(23).duration(1).EUt(2300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*240,<liquid:nak>*4800).fluidOutputs(<liquid:nak_hot>*4800).outputs(<nuclearcraft:neptunium:5>).circuit(24).duration(1).EUt(2400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_235>*250,<liquid:nak>*5000).fluidOutputs(<liquid:nak_hot>*5000).outputs(<nuclearcraft:neptunium:5>).circuit(25).duration(1).EUt(2500).buildAndRegister();

fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*10,<liquid:nak>*200).fluidOutputs(<liquid:nak_hot>*200).circuit(1).duration(1).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*20,<liquid:nak>*400).fluidOutputs(<liquid:nak_hot>*400).circuit(2).duration(1).EUt(200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*30,<liquid:nak>*600).fluidOutputs(<liquid:nak_hot>*600).circuit(3).duration(1).EUt(300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*40,<liquid:nak>*800).fluidOutputs(<liquid:nak_hot>*800).circuit(4).duration(1).EUt(400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*50,<liquid:nak>*1000).fluidOutputs(<liquid:nak_hot>*1000).circuit(5).duration(1).EUt(500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*60,<liquid:nak>*1200).fluidOutputs(<liquid:nak_hot>*1200).circuit(6).duration(1).EUt(600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*70,<liquid:nak>*1400).fluidOutputs(<liquid:nak_hot>*1400).circuit(7).duration(1).EUt(700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*80,<liquid:nak>*1600).fluidOutputs(<liquid:nak_hot>*1600).circuit(8).duration(1).EUt(800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*90,<liquid:nak>*1800).fluidOutputs(<liquid:nak_hot>*1800).circuit(9).duration(1).EUt(900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*100,<liquid:nak>*2000).fluidOutputs(<liquid:nak_hot>*2000).circuit(10).duration(1).EUt(1000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*110,<liquid:nak>*2200).fluidOutputs(<liquid:nak_hot>*2200).circuit(11).duration(1).EUt(1100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*120,<liquid:nak>*2400).fluidOutputs(<liquid:nak_hot>*2400).circuit(12).duration(1).EUt(1200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*130,<liquid:nak>*2600).fluidOutputs(<liquid:nak_hot>*2600).circuit(13).duration(1).EUt(1300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*140,<liquid:nak>*2800).fluidOutputs(<liquid:nak_hot>*2800).circuit(14).duration(1).EUt(1400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*150,<liquid:nak>*3000).fluidOutputs(<liquid:nak_hot>*3000).outputs(<nuclearcraft:plutonium>).circuit(15).duration(1).EUt(1500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*160,<liquid:nak>*3200).fluidOutputs(<liquid:nak_hot>*3200).outputs(<nuclearcraft:plutonium>).circuit(16).duration(1).EUt(1600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*170,<liquid:nak>*3400).fluidOutputs(<liquid:nak_hot>*3400).outputs(<nuclearcraft:plutonium>).circuit(17).duration(1).EUt(1700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*180,<liquid:nak>*3600).fluidOutputs(<liquid:nak_hot>*3600).outputs(<nuclearcraft:plutonium>).circuit(18).duration(1).EUt(1800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*190,<liquid:nak>*3800).fluidOutputs(<liquid:nak_hot>*3800).outputs(<nuclearcraft:plutonium>).circuit(19).duration(1).EUt(1900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*200,<liquid:nak>*4000).fluidOutputs(<liquid:nak_hot>*4000).outputs(<nuclearcraft:plutonium>).circuit(20).duration(1).EUt(2000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*210,<liquid:nak>*4200).fluidOutputs(<liquid:nak_hot>*4200).outputs(<nuclearcraft:plutonium>).circuit(21).duration(1).EUt(2100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*220,<liquid:nak>*4400).fluidOutputs(<liquid:nak_hot>*4400).outputs(<nuclearcraft:plutonium>).circuit(22).duration(1).EUt(2200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*230,<liquid:nak>*4600).fluidOutputs(<liquid:nak_hot>*4600).outputs(<nuclearcraft:plutonium>).circuit(23).duration(1).EUt(2300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*240,<liquid:nak>*4800).fluidOutputs(<liquid:nak_hot>*4800).outputs(<nuclearcraft:plutonium>).circuit(24).duration(1).EUt(2400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:neptunium_237>*250,<liquid:nak>*5000).fluidOutputs(<liquid:nak_hot>*5000).outputs(<nuclearcraft:plutonium>).circuit(25).duration(1).EUt(2500).buildAndRegister();

fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*10,<liquid:nak>*200).fluidOutputs(<liquid:nak_hot>*200).circuit(1).duration(1).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*20,<liquid:nak>*400).fluidOutputs(<liquid:nak_hot>*400).circuit(2).duration(1).EUt(200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*30,<liquid:nak>*600).fluidOutputs(<liquid:nak_hot>*600).circuit(3).duration(1).EUt(300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*40,<liquid:nak>*800).fluidOutputs(<liquid:nak_hot>*800).circuit(4).duration(1).EUt(400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*50,<liquid:nak>*1000).fluidOutputs(<liquid:nak_hot>*1000).circuit(5).duration(1).EUt(500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*60,<liquid:nak>*1200).fluidOutputs(<liquid:nak_hot>*1200).circuit(6).duration(1).EUt(600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*70,<liquid:nak>*1400).fluidOutputs(<liquid:nak_hot>*1400).circuit(7).duration(1).EUt(700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*80,<liquid:nak>*1600).fluidOutputs(<liquid:nak_hot>*1600).circuit(8).duration(1).EUt(800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*90,<liquid:nak>*1800).fluidOutputs(<liquid:nak_hot>*1800).circuit(9).duration(1).EUt(900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*100,<liquid:nak>*2000).fluidOutputs(<liquid:nak_hot>*2000).circuit(10).duration(1).EUt(1000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*110,<liquid:nak>*2200).fluidOutputs(<liquid:nak_hot>*2200).circuit(11).duration(1).EUt(1100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*120,<liquid:nak>*2400).fluidOutputs(<liquid:nak_hot>*2400).circuit(12).duration(1).EUt(1200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*130,<liquid:nak>*2600).fluidOutputs(<liquid:nak_hot>*2600).circuit(13).duration(1).EUt(1300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*140,<liquid:nak>*2800).fluidOutputs(<liquid:nak_hot>*2800).circuit(14).duration(1).EUt(1400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*150,<liquid:nak>*3000).fluidOutputs(<liquid:nak_hot>*3000).outputs(<gregtech:meta_dust:81>).circuit(15).duration(1).EUt(1500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*160,<liquid:nak>*3200).fluidOutputs(<liquid:nak_hot>*3200).outputs(<gregtech:meta_dust:81>).circuit(16).duration(1).EUt(1600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*170,<liquid:nak>*3400).fluidOutputs(<liquid:nak_hot>*3400).outputs(<gregtech:meta_dust:81>).circuit(17).duration(1).EUt(1700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*180,<liquid:nak>*3600).fluidOutputs(<liquid:nak_hot>*3600).outputs(<gregtech:meta_dust:81>).circuit(18).duration(1).EUt(1800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*190,<liquid:nak>*3800).fluidOutputs(<liquid:nak_hot>*3800).outputs(<gregtech:meta_dust:81>).circuit(19).duration(1).EUt(1900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*200,<liquid:nak>*4000).fluidOutputs(<liquid:nak_hot>*4000).outputs(<gregtech:meta_dust:81>).circuit(20).duration(1).EUt(2000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*210,<liquid:nak>*4200).fluidOutputs(<liquid:nak_hot>*4200).outputs(<gregtech:meta_dust:81>).circuit(21).duration(1).EUt(2100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*220,<liquid:nak>*4400).fluidOutputs(<liquid:nak_hot>*4400).outputs(<gregtech:meta_dust:81>).circuit(22).duration(1).EUt(2200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*230,<liquid:nak>*4600).fluidOutputs(<liquid:nak_hot>*4600).outputs(<gregtech:meta_dust:81>).circuit(23).duration(1).EUt(2300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*240,<liquid:nak>*4800).fluidOutputs(<liquid:nak_hot>*4800).outputs(<gregtech:meta_dust:81>).circuit(24).duration(1).EUt(2400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:plutonium_238>*250,<liquid:nak>*5000).fluidOutputs(<liquid:nak_hot>*5000).outputs(<gregtech:meta_dust:81>).circuit(25).duration(1).EUt(2500).buildAndRegister();

fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*10,<liquid:nak>*200).fluidOutputs(<liquid:nak_hot>*200).circuit(1).duration(1).EUt(100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*20,<liquid:nak>*400).fluidOutputs(<liquid:nak_hot>*400).circuit(2).duration(1).EUt(200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*30,<liquid:nak>*600).fluidOutputs(<liquid:nak_hot>*600).circuit(3).duration(1).EUt(300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*40,<liquid:nak>*800).fluidOutputs(<liquid:nak_hot>*800).circuit(4).duration(1).EUt(400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*50,<liquid:nak>*1000).fluidOutputs(<liquid:nak_hot>*1000).circuit(5).duration(1).EUt(500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*60,<liquid:nak>*1200).fluidOutputs(<liquid:nak_hot>*1200).circuit(6).duration(1).EUt(600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*70,<liquid:nak>*1400).fluidOutputs(<liquid:nak_hot>*1400).circuit(7).duration(1).EUt(700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*80,<liquid:nak>*1600).fluidOutputs(<liquid:nak_hot>*1600).circuit(8).duration(1).EUt(800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*90,<liquid:nak>*1800).fluidOutputs(<liquid:nak_hot>*1800).circuit(9).duration(1).EUt(900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*100,<liquid:nak>*2000).fluidOutputs(<liquid:nak_hot>*2000).circuit(10).duration(1).EUt(1000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*110,<liquid:nak>*2200).fluidOutputs(<liquid:nak_hot>*2200).circuit(11).duration(1).EUt(1100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*120,<liquid:nak>*2400).fluidOutputs(<liquid:nak_hot>*2400).circuit(12).duration(1).EUt(1200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*130,<liquid:nak>*2600).fluidOutputs(<liquid:nak_hot>*2600).circuit(13).duration(1).EUt(1300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*140,<liquid:nak>*2800).fluidOutputs(<liquid:nak_hot>*2800).circuit(14).duration(1).EUt(1400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*150,<liquid:nak>*3000).fluidOutputs(<liquid:nak_hot>*3000).outputs(<gregtech:meta_dust:81>).circuit(15).duration(1).EUt(1500).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*160,<liquid:nak>*3200).fluidOutputs(<liquid:nak_hot>*3200).outputs(<gregtech:meta_dust:81>).circuit(16).duration(1).EUt(1600).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*170,<liquid:nak>*3400).fluidOutputs(<liquid:nak_hot>*3400).outputs(<gregtech:meta_dust:81>).circuit(17).duration(1).EUt(1700).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*180,<liquid:nak>*3600).fluidOutputs(<liquid:nak_hot>*3600).outputs(<gregtech:meta_dust:81>).circuit(18).duration(1).EUt(1800).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*190,<liquid:nak>*3800).fluidOutputs(<liquid:nak_hot>*3800).outputs(<gregtech:meta_dust:81>).circuit(19).duration(1).EUt(1900).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*200,<liquid:nak>*4000).fluidOutputs(<liquid:nak_hot>*4000).outputs(<gregtech:meta_dust:81>).circuit(20).duration(1).EUt(2000).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*210,<liquid:nak>*4200).fluidOutputs(<liquid:nak_hot>*4200).outputs(<gregtech:meta_dust:81>).circuit(21).duration(1).EUt(2100).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*220,<liquid:nak>*4400).fluidOutputs(<liquid:nak_hot>*4400).outputs(<gregtech:meta_dust:81>).circuit(22).duration(1).EUt(2200).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*230,<liquid:nak>*4600).fluidOutputs(<liquid:nak_hot>*4600).outputs(<gregtech:meta_dust:81>).circuit(23).duration(1).EUt(2300).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*240,<liquid:nak>*4800).fluidOutputs(<liquid:nak_hot>*4800).outputs(<gregtech:meta_dust:81>).circuit(24).duration(1).EUt(2400).buildAndRegister();
fmodular_fission_reactor.recipeMap.recipeBuilder().fluidInputs(<liquid:uranium_238>*250,<liquid:nak>*5000).fluidOutputs(<liquid:nak_hot>*5000).outputs(<gregtech:meta_dust:81>).circuit(25).duration(1).EUt(2500).buildAndRegister();
