import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.world.IFacing;
 
global space_mining_machine_launch_station as RecipeMap = FactoryRecipeMap.start("space_mining_machine_launch_station_controller")
    .maxInputs(4)
    .maxOutputs(30)
	.maxFluidInputs(2)
	.maxFluidOutputs(4)
    .build();
 
Builder.start("space_mining_machine_launch_station", 32026)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
.aisle(
        "AAAAAABBBBBAAAAAA",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
.aisle(
        "AXXXXXBBBBBXXXXXA",
        " BBBDD     DDBBB ",
        " B             B ",
        " B             B ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
 .aisle(
        "AXEEEEBBBBBEEEEXA",
        " BBAAA     AAABB ",
        "  BBB       BBB  ",
        "  B           B  ",
        "  B           B  ",
        "  B           B  ",
        "  B           B  ",
        "  B           B  ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
 .aisle(
        "AXEEEEBBBBBEEEEXA",
        " BA  F     F  AB ",
        "  BB F     F BB  ",
        "   BBB     BBB   ",
        "   B F     F B   ",
        "   B F     F B   ",
        "   B F     F B   ",
        "   B F     F B   ",
        "   B F     F B   ",
        "   BBB     BBB   ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
 .aisle(
        "AXEEEEBBBBBEEEEXA",
        " DA     E     AD ",
        "  B           B  ",
        "   BB       BB   ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "   BB       BB   ",
        "    BBB   BBB    ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
)
 .aisle(
        "AXEEEBBBBBBBEEEXA",
        " DAF E  E  E FAD ",
        "   F         F   ",
        "   B         B   ",
        "   F         F   ",
        "   F         F   ",
        "   F         F   ",
        "   F         F   ",
        "   F         F   ",
        "   B         B   ",
        "    BB     BB    ",
        "     B     B     ",
        "     B     B     ",
        "     BB   BB     ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
)
 .aisle(
        "BBBBBBBBBBBBBBBBB",
        "      EEEEE      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "    B F   F B    ",
        "      F   F      ",
        "      F   F      ",
        "     BB   BB     ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      FB BF      ",
        "      FB BF      ",
        "      FB BF      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      "
     )
       .aisle(
        "BBBBBBBBBBBBBBBBB",
        "      EEEEE      ",
        "       EEE       ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "      B   B      ",
        "      B   B      ",
        "      B   B      ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
       .aisle(
        "BBBBBBBBBBBBBBBBB",
        "    EEEEEEEEE    ",
        "       EEE       ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
       .aisle(
        "BBBBBBBBBBBBBBBBB",
        "      EEEEE      ",
        "       EEE       ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "      B   B      ",
        "      B   B      ",
        "      B   B      ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
       .aisle(
        "BBBBBBBBBBBBBBBBB",
        "      EEEEE      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "    B F   F B    ",
        "      F   F      ",
        "      F   F      ",
        "     BB   BB     ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      FB BF      ",
        "      FB BF      ",
        "      FB BF      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      ",
        "      F   F      "
      )
       .aisle(
        "AXEEEBBBBBBBEEEXA",
        " DAF E  E  E FAD ",
        "   F         F   ",
        "   B         B   ",
        "   F         F   ",
        "   F         F   ",
        "   F         F   ",
        "   F         F   ",
        "   F         F   ",
        "   B         B   ",
        "    BB     BB    ",
        "     B     B     ",
        "     B     B     ",
        "     BB   BB     ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
       .aisle(
        "AXEEEEBBBBBEEEEXA",
        " DA     E     AD ",
        "  B           B  ",
        "   BB       BB   ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "   BB       BB   ",
        "    BBB   BBB    ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
       .aisle(
        "AXEEEEBBBBBEEEEXA",
        " BA  F     F  AB ",
        "  BB F     F BB  ",
        "   BBB     BBB   ",
        "   B F     F B   ",
        "   B F     F B   ",
        "   B F     F B   ",
        "   B F     F B   ",
        "   B F     F B   ",
        "   BBB     BBB   ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
       .aisle(
        "AXEEEEBBBBBEEEEXA",
        " BBAAA     AAABB ",
        "  BBB       BBB  ",
        "  B           B  ",
        "  B           B  ",
        "  B           B  ",
        "  B           B  ",
        "  B           B  ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
       .aisle(
        "AXXXXXBBBBBXXXXXA",
        " BBBDD     DDBBB ",
        " B             B ",
        " B             B ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
       .aisle(
        "AAAAAABBCBBAAAAAA",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 ",
        "                 "
      )
            .where("C", controller.self())
		    .where("A", <metastate:gregtech:boiler_casing:3>)
			.where("X", <metastate:gregtech:turbine_casing:4>)
			.where("D", <metastate:gregtech:boiler_casing:2>)
			.where("E", <metastate:gregtech:metal_casing:6>)
			.where("F", <metastate:gregtech:meta_block_frame_125:13>)
            .where("B", CTPredicate.states(<metastate:gregtech:metal_casing:7>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(space_mining_machine_launch_station)
    .withBaseTexture(<metastate:gregtech:metal_casing:6>)
    .buildAndRegister();
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:220>*4,<gregtech:meta_item_1:235>*4,<gregtech:meta_block_frame_7:1>*16,<gregtech:meta_item_1:100>*4)
    .fluidInputs(<liquid:reinforced_epoxy_resin>* 1440)
    .outputs(<gregtech:machine:32026>)
	.circuit(3) 
    .duration(128)
    .EUt(160)
    .buildAndRegister();
//地球
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:astro_miner>*2)
	.fluidInputs(<liquid:rocket_fuel>*20)
	.chancedOutput(<gregtech:ore_grossular_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_garnierite_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_coal_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_cinnabar_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_calcite_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_blue_topaz_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_certus_quartz_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_almandine_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_asbestos_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_sapphire_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_saltpeter_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_salt_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_ruby_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_rock_salt_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_pyrolusite_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_lazurite_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_magnesite_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_green_sapphire_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_gypsum_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_zeolite_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_lapis_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_opal_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_olivine_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_glauconite_sand_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_topaz_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_sodalite_0>, 1000, 100)
	.chancedOutput(<gregtech:ore_redstone_0>, 1000, 100)
	.circuit(1)
	.EUt(960)
    .duration(20) 
    .buildAndRegister(); 
//月球T1
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftcore:rocket_t1>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>)
	.fluidInputs(<liquid:rocket_fuel>*25)
	.chancedOutput(<gregtech:ore_chromite_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_tin_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_silver_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_neodymium_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_copper_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_lead_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_iron_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_aluminium_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_ilmenite_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_molybdenite_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_wulfenite_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_meteoric_iron_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_monazite_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_pyrite_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_bauxite_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_galena_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_1>, 1000, 100)
	.chancedOutput(<gregtech:ore_bastnasite_1>, 1000, 100)
	.circuit(2)
	.EUt(960)
    .duration(20) 
    .buildAndRegister(); 
//火卫一
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:rocket_t2>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>*2)
	.fluidInputs(<liquid:rocket_fuel>*40)
	.chancedOutput(<gregtech:ore_beryllium_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_gold_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_lithium_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_nickel_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_silver_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_sulfur_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_thorium_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_chromite_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_cobaltite_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_ilmenite_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_scheelite_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_stibnite_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_tungstate_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_uraninite_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_spodumene_2:5>, 1000, 100)
	.chancedOutput(<gregtech:ore_lepidolite_2:5>, 1000, 100)
	.circuit(2)
	.EUt(1920)
    .duration(20) 
    .buildAndRegister(); 
//火卫二
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:rocket_t2>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>*2)
	.fluidInputs(<liquid:rocket_fuel>*40)
	.chancedOutput(<gregtech:ore_beryllium_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_gold_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_lithium_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_nickel_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_silver_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_sulfur_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_thorium_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_chromite_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_cobaltite_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_ilmenite_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_scheelite_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_stibnite_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_tungstate_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_uraninite_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_spodumene_2:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_lepidolite_2:6>, 1000, 100)
	.circuit(3)
	.EUt(1920)
    .duration(20) 
    .buildAndRegister(); 
//火星T2
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:rocket_t2>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>*2)
	.fluidInputs(<liquid:rocket_fuel>*40)
	.chancedOutput(<gregtech:ore_beryllium_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_gold_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_lithium_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_nickel_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_silver_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_sulfur_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_thorium_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_chromite_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_cobaltite_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_ilmenite_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_stibnite_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_tungstate_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_uraninite_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_spodumene_1:1>, 1000, 100)
	.chancedOutput(<gregtech:ore_lepidolite_1:1>, 1000, 100)
	.circuit(1)
	.EUt(1920)
    .duration(20) 
    .buildAndRegister(); 
	
//金星T3
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:rocket_t3>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>*4)
	.fluidInputs(<liquid:rocket_fuel>*100)
	.chancedOutput(<gregtech:ore_plutonium_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_silver_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_thorium_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_naquadah_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_dragon_essence_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_ardite_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_monazite_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_pitchblende_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_bastnasite_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_pentlandite_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_uraninite_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_sulfur_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_certus_quartz_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_nether_quartz_1:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_neodymium_1:2>, 1000, 100)
	.circuit(1)
	.EUt(3840)
    .duration(20) 
    .buildAndRegister(); 
//水星T3

//木星T4
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier4_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*8)
	.fluidInputs(<liquid:rocket_fuel>*400)	
	.chancedOutput(<gregtech:ore_aluminium_1:6>, 2000, 100)
	.chancedOutput(<gregtech:ore_magnetite_1:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_cooperite_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_1:6>, 2000, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_1:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_cassiterite_sand_1:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_platinum_1:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_palladium_1:6>, 2000, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_monazite_1:6>, 2000, 100)
	.chancedOutput(<gregtech:ore_fullers_earth_1:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_spessartine_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_naquadah_1:6>, 2000, 100)
	.chancedOutput(<gregtech:ore_plutonium_1:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_1:6>, 1000, 100)
	.chancedOutput(<gregtech:ore_nickel_1:6>, 1000, 100)
	.circuit(1)
	.EUt(15360)
    .duration(20) 
    .buildAndRegister(); 
//木卫一T4
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier4_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*8)
	.fluidInputs(<liquid:rocket_fuel>*400)	
	.chancedOutput(<gregtech:ore_aluminium_2:7>, 1000, 100)
	.chancedOutput(<gregtech:ore_magnetite_2:7>, 2000, 100)
	.chancedOutput(<gregtech:ore_cooperite_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_2:7>, 1000, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_2:7>, 1000, 100)
	.chancedOutput(<gregtech:ore_cassiterite_sand_2:7>, 2000, 100)
	.chancedOutput(<gregtech:ore_platinum_2:7>, 2000, 100)
	.chancedOutput(<gregtech:ore_palladium_2:7>, 1000, 100)
	.chancedOutput(<gregtech:ore_scheelite_2:7>, 2000, 100)
	.chancedOutput(<gregtech:ore_monazite_2:7>, 1000, 100)
	.chancedOutput(<gregtech:ore_fullers_earth_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_spessartine_2:7>, 1000, 100)
	.chancedOutput(<gregtech:ore_naquadah_2:7>, 2000, 100)
	.chancedOutput(<gregtech:ore_plutonium_2:7>, 1000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_2:7>, 1000, 100)
	.chancedOutput(<gregtech:ore_nickel_2:7>, 2000, 100)
	.circuit(2)
	.EUt(15360)
    .duration(20) 
    .buildAndRegister(); 
//木卫二T4
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier4_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*8)
	.fluidInputs(<liquid:rocket_fuel>*400)	
	.chancedOutput(<gregtech:ore_aluminium_1:12>, 1000, 100)
	.chancedOutput(<gregtech:ore_magnetite_1:12>, 2000, 100)
	.chancedOutput(<gregtech:ore_cooperite_1:12>, 2000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_1:12>, 1000, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_1:12>, 1000, 100)
	.chancedOutput(<gregtech:ore_cassiterite_sand_1:12>, 2000, 100)
	.chancedOutput(<gregtech:ore_platinum_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_palladium_1:12>, 1000, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:12>, 1000, 100)
	.chancedOutput(<gregtech:ore_monazite_1:12>, 1000, 100)
	.chancedOutput(<gregtech:ore_fullers_earth_1:12>, 2000, 100)
	.chancedOutput(<gregtech:ore_spessartine_1:12>, 1000, 100)
	.chancedOutput(<gregtech:ore_naquadah_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_plutonium_1:12>, 1000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_1:12>, 1000, 100)
	.chancedOutput(<gregtech:ore_nickel_1:12>, 2000, 100)
	.circuit(3)
	.EUt(15360)
    .duration(20) 
    .buildAndRegister(); 
//木卫三T4
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier4_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*8)
	.fluidInputs(<liquid:rocket_fuel>*400)	
	.chancedOutput(<gregtech:ore_aluminium_2:2>, 2000, 100)
	.chancedOutput(<gregtech:ore_magnetite_2:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_cooperite_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_2:2>, 2000, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_2:2>, 2000, 100)
	.chancedOutput(<gregtech:ore_cassiterite_sand_2:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_platinum_2:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_palladium_2:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_scheelite_2:2>, 2000, 100)
	.chancedOutput(<gregtech:ore_monazite_2:2>, 2000, 100)
	.chancedOutput(<gregtech:ore_fullers_earth_2:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_spessartine_2:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_naquadah_2:2>, 2000, 100)
	.chancedOutput(<gregtech:ore_plutonium_2:2>, 2000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_2:2>, 1000, 100)
	.chancedOutput(<gregtech:ore_nickel_2:2>, 4000, 100)
	.circuit(4)
	.EUt(15360)
    .duration(20) 
    .buildAndRegister(); 
//木卫四T4
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier4_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*8)
	.fluidInputs(<liquid:rocket_fuel>*400)	
	.chancedOutput(<gregtech:ore_aluminium_2:3>, 1000, 100)
	.chancedOutput(<gregtech:ore_magnetite_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_cooperite_2:3>, 2000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_2:3>, 1000, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_2:3>, 1000, 100)
	.chancedOutput(<gregtech:ore_cassiterite_sand_2:3>, 1000, 100)
	.chancedOutput(<gregtech:ore_platinum_2:3>, 2000, 100)
	.chancedOutput(<gregtech:ore_palladium_2:3>, 2000, 100)
	.chancedOutput(<gregtech:ore_scheelite_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_monazite_2:3>, 2000, 100)
	.chancedOutput(<gregtech:ore_fullers_earth_2:3>, 1000, 100)
	.chancedOutput(<gregtech:ore_spessartine_2:3>, 1000, 100)
	.chancedOutput(<gregtech:ore_naquadah_2:3>, 1000, 100)
	.chancedOutput(<gregtech:ore_plutonium_2:3>, 1000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_2:3>, 2000, 100)
	.chancedOutput(<gregtech:ore_nickel_2:3>, 2000, 100)
	.circuit(5)
	.EUt(15360)
    .duration(20) 
    .buildAndRegister(); 

//土星T5
//土卫五T5
//土卫六T5
//土卫八T5

//天王星T6
//天卫三T6
//天卫四T6