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
 
global precision_disassembly_machine as RecipeMap = FactoryRecipeMap.start("precision_disassembly_machine")
    .maxInputs(1)
    .maxOutputs(16)
	.maxFluidInputs(1)
    .build();
 
Builder.start("precision_disassembly_machine", 32033)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
             .aisle(
        "AAAAA",
        "ABBBA",
        "ADDDA",
        "ADDDA",
        "ADDDA",
        "ABBBA",
        "AAAAA"
      )
      .aisle(
        "AAAAA",
        "BBBBB",
        "DBBBD",
        "DDCDD",
        "DBBBD",
        "BBBBB",
        "AAAAA"
      )
      .aisle(
        "AAAAA",
        "BBBBB",
        "DBBBD",
        "DCCCD",
        "DBBBD",
        "BBBBB",
        "AAAAA"
      )
      .aisle(
        "AAAAA",
        "BBBBB",
        "DBBBD",
        "DDCDD",
        "DBBBD",
        "BBBBB",
        "AAAAA"
      )
      .aisle(
        "AAAAA",
        "ABXBA",
        "ADDDA",
        "ADDDA",
        "ADDDA",
        "ABBBA",
        "AAAAA"
      )
            .where("X", controller.self())
			.where("A", <metastate:gcym:large_multiblock_casing:7>)
			.where("C", <metastate:gregtech:fusion_casing:2>)
			.where("D", <metastate:gregtech:transparent_casing:1>)
			.where("E", <metastate:gregtech:meta_block_frame_2:1>)
			.where("B", CTPredicate.states(<metastate:gcym:large_multiblock_casing:5>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(precision_disassembly_machine)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:5>)
    .buildAndRegister();
precision_disassembly_machine.recipeBuilder() 
    .outputs(<gregtech:fusion_casing:0> * 8, <gregtech:meta_item_1:237>*4, <metaitem:plateDoublePlutonium241> * 16, <metaitem:plateDoubleOsmiridium> * 4, <metaitem:field.generator.iv> * 4, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:wireGtSingleIndiumTinBariumTitaniumCuprate> * 32)
	.inputs(<gregtech:machine:1020> * 1)
	.fluidInputs(<liquid:liquid_nitrogen>*4000)
    .duration(6000)
    .EUt(1920)
    .buildAndRegister();
	
precision_disassembly_machine.recipeBuilder() 
    .outputs(<gregtech:fusion_casing:1> * 16,<gregtech:meta_item_1:238> *16, <metaitem:plateDoubleNaquadria> * 16, <metaitem:plateDoubleEuropium> * 8, <metaitem:field.generator.luv> * 8, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:plate.ultra_high_power_integrated_circuit> * 32, <metaitem:wireGtSingleUraniumRhodiumDinaquadide> * 64)
	.inputs(<gregtech:machine:1021> * 1)
	.fluidInputs(<liquid:liquid_nitrogen>*4000)
    .duration(6000)
    .EUt(1920)
    .buildAndRegister();
	
precision_disassembly_machine.recipeBuilder() 
    .outputs(<gregtech:fusion_casing:1> * 32, <gregtech:meta_item_1:238>*32, <metaitem:quantumstar> * 16, <metaitem:plateDoubleAmericium> * 16, <metaitem:field.generator.zpm> * 16, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 64, <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 64)
	.inputs(<gregtech:machine:1022> * 1)
	.fluidInputs(<liquid:liquid_nitrogen>*4000)
    .duration(6000)
    .EUt(1920)
    .buildAndRegister();

precision_disassembly_machine.recipeBuilder() 
    .outputs(<gregtech:fusion_casing:0>, <metaitem:field.generator.iv> * 2,<metaitem:electric.pump.iv>, <metaitem:neutron_reflector> * 2,<metaitem:pipeSmallFluidNaquadah> * 4, <metaitem:plateEuropium> * 4)
	.inputs(<gregtech:fusion_casing:1>)
	.fluidInputs(<liquid:liquid_nitrogen>*4000)
    .duration(6000)
    .EUt(1920)
    .buildAndRegister();
	
precision_disassembly_machine.recipeBuilder() 
    .outputs(<gregtech:machine_casing:6>, <gregtech:fusion_casing:0>, <metaitem:neutron_reflector>, <metaitem:electric.pump.luv>, <metaitem:plateTungstenSteel> * 6)
	.inputs(<gregtech:fusion_casing:2>*2)
	.fluidInputs(<liquid:liquid_nitrogen>*4000)
    .duration(6000)
    .EUt(1920)
    .buildAndRegister();
	
precision_disassembly_machine.recipeBuilder() 
    .outputs(<gregtech:machine_casing:7>, <gregtech:fusion_casing:1>, <metaitem:voltage_coil.zpm> * 2, <metaitem:field.generator.luv>, <metaitem:plateEuropium> * 6)
	.inputs(<gregtech:fusion_casing:3>*2)
	.fluidInputs(<liquid:liquid_nitrogen>*4000)
    .duration(6000)
    .EUt(1920)
    .buildAndRegister();
	
precision_disassembly_machine.recipeBuilder() 
    .outputs(<gregtech:machine_casing:8>, <gregtech:fusion_casing:1>, <metaitem:voltage_coil.uv> * 2, <metaitem:field.generator.zpm>, <metaitem:plateAmericium> * 6)
	.inputs(<gregtech:fusion_casing:4>*2)
	.fluidInputs(<liquid:liquid_nitrogen>*4000)
    .duration(6000)
    .EUt(1920)
    .buildAndRegister();
	