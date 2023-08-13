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
 
val imodular_fission_reactor = Builder.start("multiblocktweaker:imodular_fission_reactor",32048)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                return FactoryBlockPattern.start()
            .aisle("MMHHHMM","MMMMMMM","MMMUMMM","MMMMMMM","MMMMMMM","MMMMMMM","MMMMMMM")
            .aisle("MMMMMMM","MC   CM","MC   CM","MC   CM","MC   CM","MC   CM","MMMMMMM")
            .aisle("MMMMMMM","M     M","M ABA M","M ABA M","M ABA M","M     M","MMMMMMM")
            .aisle("MMMMMMM","M     M","M BAB M","M BAB M","M BAB M","M     M","MMMMMMM")
            .aisle("MMMMMMM","M     M","M ABA M","M ABA M","M ABA M","M     M","MMMMMMM")
            .aisle("MMMMMMM","MC   CM","MC   CM","MC   CM","MC   CM","MC   CM","MMMMMMM")
            .aisle("MMMFMMM","MMMMMMM","MMMPMMM","MMMMMMM","MMMMMMM","MMMMMMM","MMMMMMM")
            .where('F', controller.self())
            .where('C', <metastate:gregtech:meta_block_frame_20:3>)
            .where('B', <metastate:gregtech:meta_block_compressed_21:5>)
            .where('A', <metastate:gregtech:meta_block_frame_7:3>)
            .where('M', <metastate:gregtech:meta_block_compressed_3:7>)
			.where('P', CTPredicate.states(<metastate:gregtech:meta_block_compressed_3:7>)		
		        | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
			.where('U', CTPredicate.states(<metastate:gregtech:meta_block_compressed_3:7>)		
		        | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where('H', CTPredicate.states(<metastate:gregtech:meta_block_compressed_3:7>)		
		        | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
            )
			.where(" ",CTPredicate.getAny())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(
	FactoryRecipeMap.start("imodular_fission_reactor")
	.maxInputs(2)
	.maxOutputs(2)
    .build())
    .withBaseTexture(<metastate:gregtech:meta_block_compressed_3:7>)
    .buildAndRegister();

imodular_fission_reactor.hasMufflerMechanics = false;
imodular_fission_reactor.hasMaintenanceMechanics = false;

imodular_fission_reactor.recipeMap.recipeBuilder()
  .inputs(<contenttweaker:thorium_rod_quad>)
  .outputs(<contenttweaker:poor_thorium_rod_quad>)
  .duration(4000)
  .EUt(-20000)
  .buildAndRegister();

imodular_fission_reactor.recipeMap.recipeBuilder()
  .inputs(<contenttweaker:thorium_rod_dual>)
  .outputs(<contenttweaker:poor_thorium_rod_dual>)
  .duration(2000)
  .EUt(-20000)
  .buildAndRegister();

imodular_fission_reactor.recipeMap.recipeBuilder()
  .inputs(<contenttweaker:thorium_rod>)
  .outputs(<contenttweaker:poor_thorium_rod>)
  .duration(1000)
  .EUt(-20000)
  .buildAndRegister();

imodular_fission_reactor.recipeMap.recipeBuilder()
  .inputs(<ic2:quad_uranium_fuel_rod>.withTag({advDmg: 0}))
  .outputs(<ic2:nuclear:13>)
  .duration(4000)
  .EUt(-20000)
  .buildAndRegister();

imodular_fission_reactor.recipeMap.recipeBuilder()
  .inputs(<ic2:dual_uranium_fuel_rod>.withTag({advDmg: 0}))
  .outputs(<ic2:nuclear:12>)
  .duration(2000)
  .EUt(-20000)
  .buildAndRegister();

imodular_fission_reactor.recipeMap.recipeBuilder()
  .inputs(<ic2:uranium_fuel_rod>.withTag({advDmg: 0}))
  .outputs(<ic2:nuclear:11>)
  .duration(1000)
  .EUt(-20000)
  .buildAndRegister();
