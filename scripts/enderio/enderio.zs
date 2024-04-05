import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val electric_blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("electric_blast_furnace");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val fluid_solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
//remove Enderio Recipes
recipes.removeByMod("enderio");
furnace.remove(<enderio:item_alloy_ingot:*>);

//JEI
mods.jei.JEI.removeAndHide(<enderio:item_alloy_ball:*>);
mods.jei.JEI.removeAndHide(<enderio:item_alloy_endergy_ball:*>);
mods.jei.JEI.removeAndHide(<enderio:item_material:81>);
mods.jei.JEI.removeAndHide(<enderio:block_death_pouch>);
mods.jei.JEI.removeAndHide(<enderio:item_material:9>);
mods.jei.JEI.removeAndHide(<enderio:item_material:10>);
mods.jei.JEI.removeAndHide(<enderio:item_material:11>);
mods.jei.JEI.removeAndHide(<enderio:item_material:12>);
mods.jei.JEI.removeAndHide(<enderio:item_material:13>);
mods.jei.JEI.removeAndHide(<enderio:item_material:73>);

mods.jei.JEI.removeAndHide(<enderio:item_material>);

mods.jei.JEI.removeAndHide(<enderio:block_sag_mill>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_sag_mill>);
mods.jei.JEI.removeAndHide(<enderio:block_enhanced_sag_mill>);

mods.jei.JEI.removeAndHide(<enderio:block_alloy_smelter>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);
mods.jei.JEI.removeAndHide(<enderio:block_enhanced_alloy_smelter>);
recipes.addShaped(<enderio:item_basic_item_filter>, [[<enderio:item_basic_item_filter>]]);
//Soul Binder
recipes.addShaped(<enderio:block_soul_binder>, [[<ore:plateSoularium>, <ore:skullEnderResonator>, <ore:plateSoularium>],[<ore:circuitHv>, <enderio:item_material:53>, <ore:circuitHv>], [<gregtech:meta_item_1:129>, <ore:skullZombieController>, <gregtech:meta_item_1:129>]]);

//Slice 'N' Splice
recipes.addShaped(<enderio:block_slice_and_splice>, [[<ore:plateSoularium>, <minecraft:shears>, <ore:plateSoularium>],[<ore:circuitMv>, <enderio:item_material:53>, <ore:circuitMv>], [<ore:plateSoularium>, <minecraft:iron_axe>, <ore:plateSoularium>]]);

//Travel Anchor
recipes.addShaped(<enderio:block_travel_anchor>, [[<ore:plateElectricalSteel>,<enderio:item_material:1>, <ore:plateElectricalSteel>],[<ore:itemPulsatingCrystal>, <enderio:item_material:1>, <ore:itemPulsatingCrystal>], [<ore:plateElectricalSteel>, <gregtech:meta_item_1:202>, <ore:plateElectricalSteel>]]);

//Inventory Panel
recipes.addShaped(<enderio:block_inventory_panel>, [[<ore:plateDarkSteel>, <ore:itemRemoteAwarenessUpgrade>, <ore:plateDarkSteel>],[<ore:itemPulsatingCrystal>, <gregtech:meta_item_1:465>, <ore:itemPulsatingCrystal>], [<ore:plateDarkSteel>, <ore:skullZombieController>, <ore:plateDarkSteel>]]);

//Buffer Tier 2
recipes.addShaped(<enderio:block_buffer:1>, [[null, null, null],[<ore:plateElectricalSteel>, <enderio:item_power_conduit>, <ore:plateElectricalSteel>], [<gregtech:meta_item_1:735>, <ore:frameGtDarkSteel>, <ore:circuitLv>]]);

//Buffer Tier 1
recipes.addShaped(<enderio:block_buffer>, [[null, null, null],[<ore:plateElectricalSteel>, <minecraft:chest>, <ore:plateElectricalSteel>], [<gregtech:meta_item_1:157>, <ore:frameGtDarkSteel>, <ore:circuitLv>]]);

//Transceiver
recipes.addShaped(<enderio:block_transceiver>, [[<gregtech:wire_single:296>, <ore:circuitLuv>,<gregtech:wire_single:296>],[<ore:itemEnderCrystal>, <ore:itemEndSteelMachineChassi>, <ore:itemEnderCrystal>], [<appliedenergistics2:quartz_glass>, <ore:skullSentientEnder>, <appliedenergistics2:quartz_glass>]]);

//Omni Reservoir
recipes.addShaped(<enderio:block_omni_reservoir> * 2, [[<appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:144>, <appliedenergistics2:quartz_glass>],[<appliedenergistics2:quartz_glass>, <minecraft:cauldron>, <appliedenergistics2:quartz_glass>], [<appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:144>, <appliedenergistics2:quartz_glass>]]);

//High Pressure Tank
recipes.addShaped(<enderio:block_tank:1>, [[<ore:plateDarkSteel>, <enderio:block_dark_iron_bars>, <ore:plateDarkSteel>],[<enderio:block_dark_iron_bars>, <ore:frameGtDarkSteel>, <enderio:block_dark_iron_bars>], [<ore:plateDarkSteel>, <gregtech:meta_item_1:143>, <ore:plateDarkSteel>]]);

//Tank
recipes.addShaped(<enderio:block_tank>, [[<ore:plateSteel>, <gregtech:meta_plate:51>, <ore:plateSteel>],[<gregtech:meta_plate:51>, <ore:frameGtElectricalSteel>, <gregtech:meta_plate:51>], [<ore:plateSteel>, <gregtech:meta_item_1:142>, <ore:plateSteel>]]);

//Wireless Charger
recipes.addShaped(<enderio:block_wireless_charger>, [[<ore:plateElectricalSteel>, <enderio:item_basic_capacitor:2>, <ore:plateElectricalSteel>],[<ore:circuitHv>, <enderio:item_material:1>, <ore:circuitHv>], [<gregtech:meta_item_1:129>, <ore:skullEnderResonator>, <gregtech:meta_item_1:129>]]);

//Farming Station
recipes.addShaped(<enderio:block_farm_station>, [[<gregtech:meta_item_1:189>, <ore:circuitHv>, <gregtech:meta_item_1:189>],[<ore:itemPulsatingCrystal>, <enderio:item_material:53>, <ore:itemPulsatingCrystal>], [<ore:gearElectricalSteel>, <ore:skullZombieController>, <ore:gearElectricalSteel>]]);

//Powered Monitor
recipes.addShaped(<enderio:block_power_monitor>, [[<ore:plateElectricalSteel>, <gregtech:meta_item_1:465>, <ore:plateElectricalSteel>],[<ore:circuitLv>, <enderio:item_material:1>, <ore:circuitLv>], [<enderio:item_power_conduit>, <enderio:item_conduit_probe>, <enderio:item_power_conduit>]]);

//The Vat
recipes.addShaped(<enderio:block_vat>, [[<ore:plateSteel>, <minecraft:cauldron>, <ore:plateSteel>],[<enderio:block_tank>, <enderio:item_material:1>, <enderio:block_tank>], [<gregtech:meta_item_1:127>, <gregtech:machine:50>, <gregtech:meta_item_1:127>]]);

//Crafter
recipes.addShaped(<enderio:block_crafter>, [[<ore:plateSteel>, <gregtech:machine:1647>, <ore:plateSteel>],[<ore:circuitLv>, <enderio:item_material:1>, <ore:circuitLv>], [<ore:plateSteel>, <ore:skullZombieController>, <gregtech:meta_plate:324>]]);

//Painter
recipes.addShaped(<enderio:block_painter>, [[<ore:plateSteel>, <ore:rotorSteel>, <ore:plateSteel>],[<ore:circuitLv>, <enderio:item_material:1>, <ore:circuitLv>], [<gregtech:meta_item_1:127>, <ore:rotorSteel>, <gregtech:meta_item_1:127>]]);

//Capacitor Tier 3
recipes.addShaped(<enderio:block_cap_bank:3>, [[<enderio:item_basic_capacitor:2>, <ore:circuitHv>, <enderio:item_basic_capacitor:2>],[<ore:itemVibrantCrystal>, <enderio:item_material:1>, <ore:itemVibrantCrystal>], [<enderio:item_basic_capacitor:2>, <gregtech:meta_item_1:743>, <enderio:item_basic_capacitor:2>]]);

//Capacitor Tier 2
recipes.addShaped(<enderio:block_cap_bank:2>, [[<enderio:item_basic_capacitor:1>, <ore:circuitMv>, <enderio:item_basic_capacitor:1>],[<ore:plateEnergeticAlloy>, <enderio:item_material:1>, <ore:plateEnergeticAlloy>], [<enderio:item_basic_capacitor:1>, <gregtech:meta_item_1:740>, <enderio:item_basic_capacitor:1>]]);

//Capacitor Tier 1
recipes.addShaped(<enderio:block_cap_bank:1>, [[<enderio:item_basic_capacitor>, <ore:circuitLv>, <enderio:item_basic_capacitor>],[<ore:plateRedstone>, <enderio:item_material:1>, <ore:plateRedstone>], [<enderio:item_basic_capacitor>, <gregtech:meta_item_1:739>, <enderio:item_basic_capacitor>]]);

//Solar Panel Tier 3
recipes.addShaped(<enderio:block_solar_panel:3>, [[<ore:plateEndSteel>, <appliedenergistics2:quartz_glass>, <ore:plateEndSteel>],[<ore:plateVibrantAlloy>, <enderio:block_solar_panel:2>, <ore:plateVibrantAlloy>], [<enderio:item_basic_capacitor:2>, <appliedenergistics2:quartz_glass>, <enderio:item_basic_capacitor:2>]]);

//Solar Panel Tier 2
recipes.addShaped(<enderio:block_solar_panel:2>, [[<ore:platePulsatingIron>, <appliedenergistics2:quartz_glass>, <ore:platePulsatingIron>],[<ore:plateVibrantAlloy>, <enderio:block_solar_panel:1>, <ore:plateVibrantAlloy>], [<enderio:item_basic_capacitor:1>, <appliedenergistics2:quartz_glass>, <enderio:item_basic_capacitor:1>]]);

//Solae Panel Tier 1
recipes.addShaped(<enderio:block_solar_panel:1>, [[<ore:plateEnergeticAlloy>, <appliedenergistics2:quartz_glass>, <ore:plateEnergeticAlloy>],[<ore:plateVibrantAlloy>, <gregtech:meta_item_1:331>, <ore:plateVibrantAlloy>], [<enderio:item_basic_capacitor>, <appliedenergistics2:quartz_glass>, <enderio:item_basic_capacitor>]]);

//Enderman Generator
recipes.addShaped(<enderio:block_ender_generator>, [[<ore:plateEndSteel>, <ore:circuitEv>, <ore:plateEndSteel>],[<appliedenergistics2:quartz_glass>, <enderio:item_material:66>, <appliedenergistics2:quartz_glass>], [<gregtech:meta_item_1:130>, <ore:skullEnderResonator>, <gregtech:meta_item_1:130>]]);

//Advanced Zombie Generator
recipes.addShaped(<enderio:block_franken_zombie_generator>, [[<ore:plateDarkSteel>, <ore:circuitHv>, <ore:plateDarkSteel>],[<appliedenergistics2:quartz_glass>, <enderio:item_material:53>, <appliedenergistics2:quartz_glass>], [<gregtech:meta_item_1:129>, <ore:skullZombieFrankenstein>, <gregtech:meta_item_1:129>]]);

//Zombie Generator
recipes.addShaped(<enderio:block_zombie_generator>, [[<ore:plateSteel>, <ore:circuitMv>, <ore:plateSteel>],[<appliedenergistics2:quartz_glass>, <enderio:item_material:1>, <appliedenergistics2:quartz_glass>], [<gregtech:meta_item_1:128>, <ore:skullZombieElectrode>, <gregtech:meta_item_1:128>]]);

//Combustion Generator
recipes.addShaped(<enderio:block_combustion_generator>, [[<ore:plateSteel>, <ore:circuitMv>, <ore:plateSteel>],[<ore:rotorSteel>, <enderio:item_material:1>, <ore:rotorSteel>], [<gregtech:meta_item_1:128>, <enderio:block_tank>, <gregtech:meta_item_1:128>]]);

//Stirling Generator
recipes.addShaped(<enderio:block_stirling_generator>, [[<ore:plateIron>, <ore:circuitLv>, <ore:plateIron>],[<ore:rotorIron>, <enderio:item_material:1>, <ore:rotorIron>], [<gregtech:meta_item_1:127>, <gregtech:machine:50>, <gregtech:meta_item_1:127>]]);

//Endsteel Bars
recipes.addShaped(<enderio:block_end_iron_bars> * 3, [[null, <ore:toolHammer>, null],[<ore:stickEndSteel>, <ore:stickEndSteel>, <ore:stickEndSteel>], [<ore:stickEndSteel>, <ore:stickEndSteel>, <ore:stickEndSteel>]]);

//Darkstell Bars
recipes.addShaped(<enderio:block_dark_iron_bars> * 3, [[null, <ore:toolHammer>, null],[<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>], [<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>]]);

//Electric Light Tier 2
recipes.addShaped(<enderio:block_electric_light:2> * 16, [[<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>],[<ore:plateSilicon>, <minecraft:sea_lantern>, <ore:plateSilicon>], [<ore:plateIron>, <ore:wireGtSingleRedAlloy>, <ore:plateIron>]]);

//Electric Light
recipes.addShaped(<enderio:block_electric_light> * 8, [[<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>],[<ore:plateSilicon>, <ore:dustGlowstone>, <ore:plateSilicon>], [<ore:circuitLv>, <enderio:item_basic_capacitor>, <ore:circuitLv>]]);

//Enchanter
recipes.addShaped(<enderio:block_enchanter>, [[<ore:itemPulsatingCrystal>, <ore:bookEmpty>, <ore:itemVibrantCrystal>],[null, <ore:plateDarkSteel>, null], [<ore:plateDarkSteel>, <minecraft:enchanting_table>, <ore:plateDarkSteel>]]);

//Weather Obelisk
recipes.addShaped(<enderio:block_weather_obelisk>, [[null, <ore:itemWeatherCrystal>, null],[<minecraft:water_bucket>, <ore:plateSoularium>, <minecraft:lava_bucket>], [<ore:plateSoularium>, <enderio:block_cap_bank:2>, <ore:plateSoularium>]]);

//Experience Obelisk
recipes.addShaped(<enderio:block_experience_obelisk>, [[null, <enderio:item_xp_transfer>, null],[<ore:plateEnergeticAlloy>, <ore:plateSoularium>, <ore:plateEnergeticAlloy>], [<ore:plateSoularium>, <enderio:item_material:1>, <ore:plateSoularium>]]);

//Relocator Obelisk
recipes.addShaped(<enderio:block_relocator_obelisk>, [[null, <minecraft:prismarine>, null],[<ore:plateEnergeticAlloy>, <ore:plateSoularium>, <ore:plateEnergeticAlloy>], [<ore:plateSoularium>, <enderio:item_material:1>, <ore:plateSoularium>]]);

//Aversion Obelisk
recipes.addShaped(<enderio:block_aversion_obelisk>, [[null, <enderio:block_enderman_skull:2>, null],[<ore:plateEnergeticAlloy>, <ore:plateSoularium>, <ore:plateEnergeticAlloy>], [<ore:plateSoularium>, <enderio:item_material:1>, <ore:plateSoularium>]]);

//Attractor Obelisk
recipes.addShaped(<enderio:block_attractor_obelisk>, [[null, <ore:itemAttractorCrystal>, null],[<ore:plateEnergeticAlloy>, <ore:plateSoularium>, <ore:plateEnergeticAlloy>], [<ore:plateSoularium>, <enderio:item_material:1>, <ore:plateSoularium>]]);

//Killer Joe
recipes.addShaped(<enderio:block_killer_joe>, [[<ore:plateAluminium>, <ore:circuitMv>, <ore:plateAluminium>],[<appliedenergistics2:quartz_glass>, <enderio:item_material:1>, <appliedenergistics2:quartz_glass>], [<gregtech:meta_item_1:128>, <ore:skullZombieFrankenstein>, <gregtech:meta_item_1:128>]]);

//Powered Spawner
recipes.addShaped(<enderio:block_powered_spawner>, [[<ore:plateDarkSteel>, <ore:itemSkull>, <ore:plateDarkSteel>],[<ore:plateSoularium>, <enderio:item_material:53>, <ore:plateSoularium>], [<ore:itemEnderCrystal>, <ore:skullZombieFrankenstein>, <ore:itemEnderCrystal>]]);

//Conduit Probe
recipes.addShaped(<enderio:item_conduit_probe>, [[<ore:plateSilicon>, <enderio:item_power_conduit>, <ore:plateSilicon>],[<ore:circuitLv>, <minecraft:comparator>, <ore:circuitLv>], [<ore:plateElectricalSteel>, <enderio:item_redstone_conduit>, <ore:plateElectricalSteel>]]);

//Coord Selector
recipes.addShaped(<enderio:item_coord_selector>, [[<ore:plateElectricalSteel>, <ore:gemEnderEye>, <ore:plateElectricalSteel>],[<ore:platePulsatingIron>, <minecraft:compass>, <ore:platePulsatingIron>], [<ore:plateElectricalSteel>, <ore:gemEnderEye>, <ore:plateElectricalSteel>]]);

//Travel Staff
recipes.addShaped(<enderio:item_travel_staff>, [[<ore:toolScrewdriver>, <ore:circuitHv>, <ore:itemEnderCrystal>],[<ore:screwVibrantAlloy>, <ore:stickDarkSteel>, <ore:circuitHv>], [<ore:stickDarkSteel>, <ore:screwVibrantAlloy>, <ore:gtceWrenches>]]);

//Xp Transfermer
recipes.addShaped(<enderio:item_xp_transfer>, [[<ore:toolScrewdriver>, <ore:circuitHv>, <ore:itemPulsatingCrystal>],[<ore:screwEnergeticAlloy>, <ore:stickSoularium>, <ore:circuitHv>], [<ore:stickSoularium>, <ore:screwEnergeticAlloy>, <ore:gtceWrenches>]]);

//Yeta Wrench
recipes.addShaped(<enderio:item_yeta_wrench>, [[<ore:ingotElectricalSteel>, <ore:toolHammer>, <ore:ingotElectricalSteel>],[<ore:ingotElectricalSteel>, <ore:gearElectricalSteel>, <ore:ingotElectricalSteel>], [null, <ore:ingotElectricalSteel>, null]]);

//Endsteel Machine Casing
recipes.addShaped(<enderio:item_material:66>, [[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>],[<ore:plateEndSteel>, <enderio:item_basic_capacitor:2>, <ore:plateEndSteel>], [<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>]]);

//Soular Machine Casing
recipes.addShaped(<enderio:item_material:53>, [[<ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>],[<ore:plateSoularium>, <enderio:item_basic_capacitor:1>, <ore:plateSoularium>], [<ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>]]);

//Industrial Machine Casing
recipes.addShaped(<enderio:item_material:1>, [[<ore:plateSteel>, <ore:plateElectricalSteel>, <ore:plateSteel>],[<ore:plateElectricalSteel>, <enderio:item_basic_capacitor>, <ore:plateElectricalSteel>], [<ore:plateSteel>, <ore:plateElectricalSteel>, <ore:plateSteel>]]);
assembler.recipeBuilder()
	.inputs([<enderio:item_basic_capacitor>, <ore:plateSteel> * 2, <ore:plateElectricalSteel> * 2])
	.outputs(<enderio:item_material:1>)
	.duration(200).EUt(64).buildAndRegister();
    
//Gilder Wings
recipes.addShaped(<enderio:item_material:7>, [[<ore:screwDarkSteel>, <ore:stickDarkSteel>, <ore:screwDarkSteel>],[<ore:itemGliderWing>, <ore:plateSilicon>, <ore:itemGliderWing>], [<ore:gtceWrenches>, <ore:stickDarkSteel>, <ore:toolScrewdriver>]]);

//Gilder Wing
recipes.addShaped(<enderio:item_material:6>, [[<ore:toolHammer>, <ore:stickDarkSteel>, <ore:leather>],[<ore:stickDarkSteel>, <ore:leather>, <ore:leather>], [<ore:leather>, <ore:leather>, <ore:leather>]]);

//Awarness Upgrade
recipes.addShaped(<enderio:item_material:64>, [[<ore:plateSilicon>, <ore:itemConduitBinder>, <ore:plateSilicon>],[<ore:circuitHv>, <ore:gemEnderEye>, <ore:circuitHv>], [<ore:plateSilicon>, <ore:plateElectricalSteel>, <ore:plateSilicon>]]);

//Levity Staff
recipes.addShaped(<enderio:item_staff_of_levity>, [[<ore:toolScrewdriver>, <ore:circuitHv>, <ore:itemPrecientCrystal>], [<ore:screwSoularium>, <ore:stickEndSteel>, <ore:circuitHv>], [<ore:stickEndSteel>, <ore:screwSoularium>, <ore:gtceWrenches>]]);

//Soul Vial
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:quartz_glass> * 3, <ore:plateSoularium>])
	.outputs(<enderio:item_soul_vial>)
	.duration(200).EUt(48).buildAndRegister();

//Basic Capacitor
assembler.recipeBuilder()
	.inputs([<ore:boltSteel> * 2, <ore:foilManganese> * 4])
    .fluidInputs(<liquid:plastic> * 288)
	.outputs(<enderio:item_basic_capacitor>)
	.duration(200).EUt(30).buildAndRegister();

//4x Capacitor
assembler.recipeBuilder()
	.inputs([<enderio:item_basic_capacitor:1> * 2, <ore:dustGlowstone> * 4])
    .fluidInputs(<liquid:vibrant_alloy> * 864)
	.outputs(<enderio:item_basic_capacitor:2>)
	.duration(200).EUt(480).buildAndRegister();

//CBP
macerator.recipeBuilder()
	.inputs(<buildinggadgets:constructionpaste>)
	.outputs(<enderio:item_material:22> * 2)
	.duration(40).EUt(2).buildAndRegister();

//Conduit Binder
furnace.remove(<enderio:item_material:4>);
chemical_bath.recipeBuilder()
    .inputs([<enderio:item_material:22>])
    .fluidInputs(<liquid:rubber> * 144)
	.outputs(<enderio:item_material:4> * 2)
    .chancedOutput(<enderio:item_material:4> * 2, 9000, 0)
    .chancedOutput(<enderio:item_material:4>, 5000, 0)
	.duration(200).EUt(2).buildAndRegister();

//water
assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:251>*2,<ore:circuitIv>*2,<gregtech:meta_block_frame_7:1>,<enderio:block_fused_glass>*4])
    .fluidInputs(<liquid:plastic> * 144)
	.outputs(<enderio:block_reservoir>)
	.duration(100).EUt(120).buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:251>*2,<ore:circuitIv>*2,<gregtech:meta_block_frame_7:1>,<enderio:block_fused_glass>*4])
    .fluidInputs(<liquid:epoxy> * 72)
	.outputs(<enderio:block_reservoir>)
	.duration(100).EUt(120).buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:251>*2,<ore:circuitIv>*2,<gregtech:meta_block_frame_7:1>,<enderio:block_fused_glass>*4])
    .fluidInputs(<liquid:polytetrafluoroethylene> * 36)
	.outputs(<enderio:block_reservoir>)
	.duration(100).EUt(120).buildAndRegister();	

//2
assembler.recipeBuilder()
    .inputs([<enderio:item_basic_capacitor>*2,<gregtech:meta_dust:416>*4])
    .fluidInputs(<liquid:energetic_alloy>* 144)
	.outputs(<enderio:item_basic_capacitor:1>)
	.duration(100).EUt(120).buildAndRegister();



//Energy Conduit
assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleGold>, <ore:plateConductiveIron>,<enderio:item_material:4>*2])
    .fluidInputs(<liquid:plastic> * 144)
	.outputs(<enderio:item_power_conduit>)
	.duration(100).EUt(120).buildAndRegister();

//Energy Conduit
assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleAluminium>, <ore:plateEnergeticAlloy>,<enderio:item_material:4>*2])
    .fluidInputs(<liquid:plastic> * 144)
	.outputs(<enderio:item_power_conduit:1>)
	.duration(100).EUt(256).buildAndRegister();

//Energy Conduit
assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleOsmium>, <ore:plateVibrantAlloy>,<enderio:item_material:4>*2])
    .fluidInputs(<liquid:epoxy> * 144)
	.outputs(<enderio:item_power_conduit:2>)
	.duration(100).EUt(480).buildAndRegister();

//ME Conduit
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:part:16>, <ore:plateSilicon>,<enderio:item_material:4>*2])
    .fluidInputs(<liquid:plastic> * 144)
	.outputs(<enderio:item_me_conduit>)
	.duration(100).EUt(256).buildAndRegister();

//ME Conduit
assembler.recipeBuilder()
    .inputs([<enderio:item_me_conduit> * 4, <ore:plateTitanium>,<enderio:item_material:4>*2])
    .fluidInputs(<liquid:plastic> * 144)
	.outputs(<enderio:item_me_conduit:1>)
	.duration(100).EUt(480).buildAndRegister();

//Redstone Conduit
assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleRedAlloy>, <ore:plateRedstoneAlloy>,<enderio:item_material:4>*2])
    .fluidInputs(<liquid:plastic> * 144)
	.outputs(<enderio:item_redstone_conduit>)
	.duration(100).EUt(64).buildAndRegister();

//conduit upgrade
assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:291>, <gregtech:meta_plate:51>])
	.outputs(<enderio:item_basic_item_filter>)
	.duration(300).EUt(30).buildAndRegister();

//conduit upgrade
assembler.recipeBuilder()
    .inputs([<enderio:item_basic_item_filter>, <ore:skullZombieController>])
	.outputs(<enderio:item_advanced_item_filter>)
	.duration(300).EUt(64).buildAndRegister();

//conduit upgrade
assembler.recipeBuilder()
    .inputs([<enderio:item_advanced_item_filter> * 2, <enderio:block_end_iron_bars> * 2])
	.outputs(<enderio:item_big_item_filter>)
	.duration(300).EUt(120).buildAndRegister();

//conduit upgrade
assembler.recipeBuilder()
    .inputs([<enderio:item_big_item_filter>, <ore:skullZombieFrankenstein>])
	.outputs(<enderio:item_big_advanced_item_filter>)
	.duration(300).EUt(256).buildAndRegister();

//conduit upgrade
assembler.recipeBuilder()
    .inputs([<enderio:item_advanced_item_filter>, <minecraft:comparator>])
	.outputs(<enderio:item_existing_item_filter>)
	.duration(300).EUt(120).buildAndRegister();

//conduit upgrade
assembler.recipeBuilder()
    .inputs([<enderio:item_basic_item_filter>, <enderio:item_yeta_wrench>])
	.outputs(<enderio:item_mod_item_filter>)
	.duration(300).EUt(64).buildAndRegister();

//conduit upgrade
assembler.recipeBuilder()
    .inputs([<enderio:item_basic_item_filter>, <enderio:item_conduit_probe>])
	.outputs(<enderio:item_power_item_filter>)
	.duration(300).EUt(64).buildAndRegister();
    
//conduit upgrade
assembler.recipeBuilder()
    .inputs([<enderio:item_basic_item_filter>, <gregtech:meta_item_1:172>])
	.outputs(<enderio:item_extract_speed_upgrade>)
	.duration(300).EUt(64).buildAndRegister();

//conduit upgrade
assembler.recipeBuilder()
    .inputs([<enderio:item_extract_speed_upgrade>])
    .circuit(1)
    .fluidInputs(<liquid:rubber> * 144)
	.outputs(<enderio:item_extract_speed_downgrade>)
	.duration(300).EUt(64).buildAndRegister();

//Pulsating Crystal
assembler.recipeBuilder()
    .inputs([<ore:gemDiamond>, <ore:nuggetPulsatingIron> * 8])
	.outputs(<enderio:item_material:14>)
	.duration(600).EUt(120).buildAndRegister();

//Vibrant Crystal
assembler.recipeBuilder()
    .inputs([<ore:gemEmerald>, <ore:nuggetVibrantAlloy> * 8])
	.outputs(<enderio:item_material:15>)
	.duration(600).EUt(120).buildAndRegister();

//Weather Crystal
assembler.recipeBuilder()
    .inputs([<ore:ingotManyullyn>, <ore:nuggetDarkSteel> * 8])
	.outputs(<enderio:item_material:18>)
	.duration(600).EUt(256).buildAndRegister();

//Conduit Facade
assembler.recipeBuilder()
    .inputs([<ore:itemConduitBinder> * 8])
    .circuit(8)
	.outputs(<enderio:item_conduit_facade>)
	.duration(100).EUt(30).buildAndRegister();

//Conduit Facade
chemical_bath.recipeBuilder()
    .inputs([<enderio:item_conduit_facade>])
    .fluidInputs(<liquid:obsidian> * 576)
	.outputs(<enderio:item_conduit_facade:1>)
	.duration(200).EUt(2).buildAndRegister();

//Material
Alloy.removeRecipe(<liquid:electrical_steel>);
mixer.recipeBuilder()
    .inputs(<ore:dustCoal>)
    .inputs(<ore:dustSteel>)
	.inputs(<ore:dustSilicon>)
	.circuit(2)
    .outputs(<ore:dustElectricalSteel>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

Alloy.removeRecipe(<liquid:dark_steel>);
mixer.recipeBuilder()
    .inputs(<ore:dustElectricalSteel>)
    .inputs(<ore:dustCoal>)
	.inputs(<ore:dustObsidian>)
	.circuit(2)
    .outputs(<ore:dustDarkSteel>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();
	
Alloy.removeRecipe(<liquid:redstone_alloy>);
mixer.recipeBuilder()
    .inputs(<ore:dustCoal>)
    .inputs(<ore:dustRedstone>)
	.inputs(<ore:dustSilicon>)
	.circuit(2)
    .outputs(<ore:dustRedstoneAlloy>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

Alloy.removeRecipe(<liquid:conductive_iron>);
mixer.recipeBuilder()
    .inputs(<ore:dustSilver>)
    .inputs(<ore:dustIron>)
	.inputs(<ore:dustRedstoneAlloy>)
	.circuit(2)
    .outputs(<ore:dustConductiveIron>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

Alloy.removeRecipe(<liquid:energetic_alloy>);
mixer.recipeBuilder()
    .inputs(<ore:dustConductiveIron>)
    .inputs(<ore:dustGold>)
	.inputs(<ore:dustBlackSteel>)
	.circuit(2)
    .outputs(<ore:dustEnergeticAlloy>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

Alloy.removeRecipe(<liquid:vibrant_alloy>);
mixer.recipeBuilder()
    .inputs(<ore:dustEnderEye>)
    .inputs(<ore:dustEnergeticAlloy>)
	.inputs(<ore:dustChrome>)
	.circuit(2)
    .outputs(<ore:dustVibrantAlloy>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

Alloy.removeRecipe(<liquid:pulsating_iron>);
mixer.recipeBuilder()
    .inputs(<ore:dustEnderPearl>)
    .inputs(<ore:dustIron>)
	.inputs(<ore:dustRedstoneAlloy>)
	.circuit(2)
    .outputs(<ore:dustPulsatingIron>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

Alloy.removeRecipe(<liquid:soularium>);
mixer.recipeBuilder()
    .inputs(<minecraft:soul_sand>)
    .inputs(<ore:dustGold>)
	.inputs(<ore:dustAsh>)
	.circuit(2)
    .outputs(<ore:dustSoularium>.firstItem * 2)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

Alloy.removeRecipe(<liquid:end_steel>);
mixer.recipeBuilder()
    .inputs(<ore:dustDarkSteel>)
    .inputs(<ore:dustEndstone>)
	.inputs(<ore:dustTungstenSteel>)
	.circuit(2)
    .outputs(<ore:dustEndSteel>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();



//Blast Furnace Recipe
electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustPulsatingIron>.firstItem)
    .outputs(<ore:ingotPulsatingIron>.firstItem)
    .property("temperature", 1800)
    .circuit(1)
    .duration(1600)
    .EUt(120)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustPulsatingIron>.firstItem)
    .outputs(<ore:ingotPulsatingIron>.firstItem)
    .property("temperature", 1800)
    .duration(1600 * 2/3).circuit(2)
	.fluidInputs(<liquid:oxygen> * 1000)
    .EUt(120)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustVibrantAlloy>.firstItem)
    .outputs(<ore:ingotVibrantAlloy>.firstItem)
    .property("temperature", 3600)
    .circuit(1)
    .duration(6000)
    .EUt(120)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustVibrantAlloy>.firstItem)
    .outputs(<ore:ingotVibrantAlloy>.firstItem)
    .property("temperature", 3600)
    .duration(6000 * 2/3).circuit(2)
	.fluidInputs(<liquid:oxygen> * 1000)
    .EUt(120)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustEnergeticAlloy>.firstItem)
    .outputs(<ore:ingotEnergeticAlloy>.firstItem)
    .property("temperature", 2500)
    .circuit(1)
    .duration(3200)
    .EUt(120)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustEnergeticAlloy>.firstItem)
    .outputs(<ore:ingotEnergeticAlloy>.firstItem)
    .property("temperature", 2500)
    .duration(3200 * 2/3).circuit(2)
	.fluidInputs(<liquid:oxygen> * 1000)
    .EUt(120)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustDarkSteel>.firstItem)
    .outputs(<ore:ingotDarkSteel>.firstItem)
    .property("temperature", 1800)
    .duration(1000)
    .circuit(1)
    .EUt(120)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustDarkSteel>.firstItem)
    .outputs(<ore:ingotDarkSteel>.firstItem)
    .property("temperature", 1800)
    .duration(1000 * 2/3).circuit(2)
	.fluidInputs(<liquid:oxygen> * 1000)
    .EUt(120)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustEndSteel>.firstItem)
    .outputs(<ore:ingotEndSteel>.firstItem)
    .property("temperature", 4500)
    .duration(1233)
    .EUt(1920)
    .circuit(1)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustEndSteel>.firstItem)
    .outputs(<ore:ingotEndSteel>.firstItem)
    .property("temperature", 4500)
    .duration(1233 * 2/3).circuit(2)
	.fluidInputs(<liquid:nitrogen> * 1000)
    .EUt(1920)
    .buildAndRegister();

//Remove Casting
Casting.removeBasinRecipe(<ore:itemPulsatingCrystal>.firstItem);
Casting.removeBasinRecipe(<ore:itemVibrantCrystal>.firstItem);

//Remove Tinker Smelting
Melting.removeRecipe(<liquid:energetic_alloy>);
Melting.removeRecipe(<liquid:dark_steel>);
Melting.removeRecipe(<liquid:end_steel>);
Melting.removeRecipe(<liquid:vibrant_alloy>);
Melting.removeRecipe(<liquid:pulsating_iron>);

//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_basic_item_filter>, <minecraft:redstone_torch>])
	.outputs(<enderio:item_material:60>)
	.duration(300).EUt(64).buildAndRegister();
    
//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(1)
	.outputs(<enderio:item_redstone_not_filter>)
	.duration(300).EUt(120).buildAndRegister();
    
//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(2)
	.outputs(<enderio:item_redstone_or_filter>)
	.duration(300).EUt(120).buildAndRegister();
    
//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(3)
	.outputs(<enderio:item_redstone_and_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(4)
	.outputs(<enderio:item_redstone_nor_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(5)
	.outputs(<enderio:item_redstone_nand_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(6)
	.outputs(<enderio:item_redstone_xor_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(7)
	.outputs(<enderio:item_redstone_xnor_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(8)
	.outputs(<enderio:item_redstone_toggle_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(9)
	.outputs(<enderio:item_redstone_counting_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(10)
	.outputs(<enderio:item_redstone_sensor_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Redstone Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_material:60>])
    .circuit(11)
	.outputs(<enderio:item_redstone_timer_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Conduit Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_advanced_item_filter>, <enderio:block_dark_iron_bars>])
	.outputs(<enderio:item_limited_item_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Conduit Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_basic_item_filter>,<tconstruct:large_plate>.withTag({Material: "xu_magical_wood"})])
	.outputs(<enderio:item_enchantment_filter_normal>)
	.duration(300).EUt(64).buildAndRegister();

//Conduit Upgrades
assembler.recipeBuilder()
    .inputs([<enderio:item_big_item_filter>,<tconstruct:large_plate>.withTag({Material: "xu_enchanted_metal"})])
	.outputs(<enderio:item_enchantment_filter_big>)
	.duration(300).EUt(256).buildAndRegister();

//Wired Charger
recipes.addShaped(<enderio:block_wired_charger>, [[<ore:cableGtQuadrupleTin>, <ore:cableGtQuadrupleTin>, <ore:cableGtQuadrupleTin>],[<ore:plateElectricalSteel>, <ore:itemMachineChassi>, <ore:plateElectricalSteel>], [<ore:plateElectricalSteel>, <gregtech:machine:1316>, <ore:plateElectricalSteel>]]);

//block Detector (Silent/Normal)
recipes.addShapeless(<enderio:block_detector_block_silent>, [<enderio:block_detector_block>,<minecraft:diamond>]);
recipes.addShaped(<enderio:block_detector_block>, [[<ore:plateIron>, <enderio:block_painted_pressure_plate:8>, <ore:plateIron>],[<ore:plateIron>, <ore:craftingPiston>, <ore:plateIron>], [<ore:plateIron>, <ore:blockRedstone>, <ore:plateIron>]]);

//Xp Vacuum Chest
recipes.addShaped(<enderio:block_xp_vacuum>, [[<ore:plateElectricalSteel>, <ore:plateElectricalSteel>, <ore:plateElectricalSteel>],[<ore:plateElectricalSteel>, <enderio:item_xp_transfer>, <ore:plateElectricalSteel>], [<ore:plateElectricalSteel>, <ore:itemVibrantCrystal>, <ore:plateElectricalSteel>]]);

//Vacuum Chest
recipes.addShaped(<enderio:block_vacuum_chest>, [[<ore:plateElectricalSteel>, <ore:plateElectricalSteel>, <ore:plateElectricalSteel>],[<ore:plateElectricalSteel>, <minecraft:hopper>, <ore:plateElectricalSteel>], [<ore:plateElectricalSteel>, <ore:itemPulsatingCrystal>, <ore:plateElectricalSteel>]]);

//Impulse Hopper
recipes.addShaped(<enderio:block_impulse_hopper>, [[<ore:plateElectricalSteel>, <minecraft:hopper>, <ore:plateElectricalSteel>],[<ore:plateDoubleEnergeticAlloy>, <ore:itemMachineChassi>, <ore:plateDoubleEnergeticAlloy>], [<ore:plateElectricalSteel>, <ore:plateRedstoneAlloy>, <ore:plateElectricalSteel>]]);

//Wireless Charger Extension
recipes.addShaped(<enderio:block_wireless_charger_extension>, [[<ore:screwElectricalSteel>, <ore:itemWirelessDish>, <ore:screwElectricalSteel>],[<ore:itemWirelessDish>, <gregtech:meta_item_1:235>, <ore:itemWirelessDish>], [<ore:screwElectricalSteel>, <ore:itemWirelessDish>, <ore:screwElectricalSteel>]]);

//Enhanced Wireless Charger
recipes.addShaped(<enderio:block_enhanced_wireless_charger>, [[<ore:plateElectricalSteel>, <ore:itemWirelessDish>, <ore:plateElectricalSteel>],[<ore:itemWirelessDish>, <enderio:block_wireless_charger>, <ore:itemWirelessDish>], [<ore:plateElectricalSteel>, <enderio:item_basic_capacitor:2>, <ore:plateElectricalSteel>]]);

//Wireless Charger Normal
recipes.addShaped(<enderio:block_normal_wireless_charger>, [[<ore:plateElectricalSteel>, <ore:itemWirelessDish>, <ore:plateElectricalSteel>],[<ore:itemWirelessDish>, <enderio:block_wireless_charger>, <ore:itemWirelessDish>], [<ore:plateElectricalSteel>, <enderio:item_basic_capacitor:1>, <ore:plateElectricalSteel>]]);

//Wireless Dish
recipes.addShapeless(<enderio:item_material:65>, [<ore:plateElectricalSteel>,<gregtech:meta_item_1:234>,<ore:plateElectricalSteel>,<ore:plateElectricalSteel>]);

//Inventory Item Charger
assembler.recipeBuilder()
    .inputs([<enderio:item_basic_capacitor>, <ore:plateDarkSteel> * 2])
    .fluidInputs(<liquid:conductive_iron> * 576)
	.outputs(<enderio:item_fluid_filter>)
	.duration(400).EUt(120).buildAndRegister();

//Inventory Item Charger
assembler.recipeBuilder()
    .inputs([<ore:skullEnderResonator>,<gregtech:meta_item_1:290>,<gregtech:meta_plate:32015>])
    .fluidInputs(<liquid:dark_steel> * 576)
	.outputs(<enderio:item_inventory_charger_basic>)
	.duration(400).EUt(256).buildAndRegister();

//Inventory Item Charger
assembler.recipeBuilder()
    .inputs([<ore:skullEnderResonator>, <ore:itemWirelessDish> * 2, <enderio:block_cap_bank:2>])
    .fluidInputs(<liquid:dark_steel> * 576)
	.outputs(<enderio:item_inventory_charger>)
	.duration(400).EUt(480).buildAndRegister();

//Inventory Item Charger
assembler.recipeBuilder()
    .inputs([<ore:skullEnderResonator>, <ore:itemWirelessDish> * 2, <enderio:block_cap_bank:3>])
    .fluidInputs(<liquid:dark_steel> * 576)
	.outputs(<enderio:item_inventory_charger_vibrant>)
	.duration(400).EUt(600).buildAndRegister();

//Crystal Dust
macerator.recipeBuilder()
    .inputs([<ore:itemPulsatingCrystal>])
	.outputs(<ore:itemPulsatingPowder>.firstItem)
	.duration(60).EUt(600).buildAndRegister();

macerator.recipeBuilder()
    .inputs([<ore:itemVibrantCrystal>])
	.outputs(<ore:itemVibrantPowder>.firstItem)
	.duration(60).EUt(600).buildAndRegister();

macerator.recipeBuilder()
    .inputs([<ore:itemEnderCrystal>])
	.outputs(<ore:itemEnderCrystalPowder>.firstItem)
	.duration(60).EUt(600).buildAndRegister();

macerator.recipeBuilder()
    .inputs([<ore:itemPrecientCrystal>])
	.outputs(<ore:itemPrecientPowder>.firstItem)
	.duration(60).EUt(600).buildAndRegister();

recipes.addShaped(<enderio:item_dark_steel_helmet>, 
	[[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
	[<ore:plateDarkSteel>, <ore:gtceHardHammers>, <ore:plateDarkSteel>],
	]);
	
recipes.addShaped(<enderio:item_dark_steel_chestplate>, 
	[[<ore:plateDarkSteel>, <ore:gtceHardHammers>, <ore:plateDarkSteel>],
	[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
	[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>]]);

recipes.addShaped(<enderio:item_dark_steel_leggings>, 
	[[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
	[<ore:plateDarkSteel>, <ore:gtceHardHammers>, <ore:plateDarkSteel>],
	[<ore:plateDarkSteel>, null, <ore:plateDarkSteel>]]);

recipes.addShaped(<enderio:item_dark_steel_boots>, 
	[[<ore:plateDarkSteel>, null, <ore:plateDarkSteel>],
	[<ore:plateDarkSteel>, <ore:gtceHardHammers>, <ore:plateDarkSteel>],
	]);

recipes.addShaped(<enderio:item_dark_steel_axe>, 
	[[<ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:gtceHardHammers>],
	[<ore:plateDarkSteel>, <ore:stickWood>],
	[<ore:gtceFiles>, <ore:stickWood>]]);

recipes.addShaped(<enderio:item_dark_steel_sword>, 
	[[null, <ore:plateDarkSteel>, null],
	[<ore:gtceFiles>, <ore:plateDarkSteel>, <ore:gtceHardHammers>],
	[null, <ore:stickWood>, null]]);

recipes.addShaped(<enderio:item_dark_steel_pickaxe>, 
	[[<ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
	[<ore:gtceFiles>, <ore:stickWood>, <ore:gtceHardHammers>],
	[null, <ore:stickWood>, null]]);

recipes.addShaped(<enderio:item_dark_steel_crook>, 
	[[<ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:gtceHardHammers>],
	[<ore:gtceFiles>, <ore:stickWood>, null],
	[null, <ore:stickWood>, null]]);

recipes.addShaped(<enderio:item_dark_steel_shears>, 
	[[<ore:plateDarkSteel>, <ore:screwDarkSteel>, <ore:plateDarkSteel>],
	[<ore:gtceFiles>, <ore:ringDarkSteel>, <ore:gtceHardHammers>],
	[<ore:stickWood>, <ore:gtceScrewdrivers>, <ore:stickWood>]]);

recipes.addShaped(<enderio:item_dark_steel_shield>, 
	[[<ore:boltDarkSteel>, <ore:stickDarkSteel>, <ore:boltDarkSteel>],
	[<ore:stickDarkSteel>, <ore:plateDarkSteel>, <ore:stickDarkSteel>],
	[<ore:boltDarkSteel>, <ore:stickDarkSteel>, <ore:boltDarkSteel>]]);

recipes.addShaped(<enderio:item_end_steel_helmet>, 
	[[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>],
	[<ore:plateEndSteel>, <ore:skullGuardianDiode>, <ore:plateEndSteel>],
    [null, <ore:gtceHardHammers>, null]
	]);
	
recipes.addShaped(<enderio:item_end_steel_chestplate>, 
	[[<ore:plateEndSteel>, <ore:gtceHardHammers>, <ore:plateEndSteel>],
	[<ore:plateEndSteel>, <ore:skullGuardianDiode>, <ore:plateEndSteel>],
	[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>]]);

recipes.addShaped(<enderio:item_end_steel_leggings>, 
	[[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>],
	[<ore:plateEndSteel>, <ore:skullGuardianDiode>, <ore:plateEndSteel>],
	[<ore:plateEndSteel>, <ore:gtceHardHammers>, <ore:plateEndSteel>]]);

recipes.addShaped(<enderio:item_end_steel_boots>, 
	[[<ore:plateEndSteel>, <ore:skullGuardianDiode>, <ore:plateEndSteel>],
	[<ore:plateEndSteel>, <ore:gtceHardHammers>, <ore:plateEndSteel>],
	]);

recipes.addShaped(<enderio:item_end_steel_axe>, 
	[[<ore:plateEndSteel>, <ore:ingotEndSteel>, <ore:gtceHardHammers>],
	[<ore:plateEndSteel>, <ore:stickDarkSteel>],
	[<ore:gtceFiles>, <ore:stickDarkSteel>]]);

recipes.addShaped(<enderio:item_end_steel_sword>, 
	[[null, <ore:plateEndSteel>, null],
	[<ore:gtceFiles>, <ore:plateEndSteel>, <ore:gtceHardHammers>],
	[null, <ore:stickDarkSteel>, null]]);

recipes.addShaped(<enderio:item_end_steel_pickaxe>, 
	[[<ore:plateEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
	[<ore:gtceFiles>, <ore:stickDarkSteel>, <ore:gtceHardHammers>],
	[null, <ore:stickDarkSteel>, null]]);

recipes.addShaped(<enderio:item_end_steel_shield>, 
	[[<ore:boltEndSteel>, <ore:stickEndSteel>, <ore:boltEndSteel>],
	[<ore:stickEndSteel>, <ore:plateEndSteel>, <ore:stickEndSteel>],
	[<ore:boltEndSteel>, <ore:stickEndSteel>, <ore:boltEndSteel>]]);

assembler.recipeBuilder()
    .inputs([<enderio:item_basic_item_filter>, <enderio:block_dark_iron_bars>])
	.outputs(<enderio:item_dark_steel_upgrade>)
	.duration(300).EUt(60).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_solar_panel:1>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_solar_panel:2>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_solar_panel:3>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <forestry:apiarist_helmet>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiointegrationforestry:apiarist_armor_head"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <forestry:apiarist_chest>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiointegrationforestry:apiarist_armor_chest"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <forestry:apiarist_legs>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiointegrationforestry:apiarist_armor_legs"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <forestry:apiarist_boots>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiointegrationforestry:apiarist_armor_feet"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <thaumcraft:goggles>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:gogglesofrevealing"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <thaumcraft:cloth_chest>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:thaumaturge_robes_chest"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <thaumcraft:cloth_legs>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:thaumaturge_robes_legs"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <thaumcraft:cloth_boots>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:thaumaturge_robes_feet"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:item_magnet>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:fish:2>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:swim"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <tconstruct:materials:13>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:golden_shovel>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <ore:itemGliderWings>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:diamond>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:padding"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:golden_hoe>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <gregtech:transparent_casing:3>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <forestry:naturalist_helmet>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiointegrationforestry:naturalist_eye"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <theoneprobe:probe>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:top"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:elytra>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <gregtech:gt_armor:1>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:step_assist"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <tconstruct:large_plate>.withTag({Material: "cobalt"})])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <tconstruct:materials:12>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:item_travel_staff>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearIron>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearSteel>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearStainlessSteel>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearTitanium>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearTungstenSteel>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_enderman_skull:2>, <ore:gearIron>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_enderman_skull:2>, <ore:gearSteel>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_enderman_skull:2>, <ore:gearStainlessSteel>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_enderman_skull:2>, <ore:gearTitanium>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_enderman_skull:2>, <ore:gearTungstenSteel>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <gregtech:meta_item_1:172>, <ore:gearIron>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost1"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <gregtech:meta_item_1:172>, <ore:gearEnergeticAlloy>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost2"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <gregtech:meta_item_1:172>, <ore:gearVibrantAlloy>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost3"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <gregtechfoodoption:gtfo_meta_item:16>, <ore:gearIron>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost1"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <gregtechfoodoption:gtfo_meta_item:16>, <ore:gearEnergeticAlloy>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost2"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <gregtechfoodoption:gtfo_meta_item:16>, <ore:gearVibrantAlloy>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_dark_steel_anvil>, <ore:gearIron>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_dark_steel_anvil>, <ore:gearEnergeticAlloy>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil1"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <enderio:block_dark_steel_anvil>, <ore:gearVibrantAlloy>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil2"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:purple_shulker_box>, <ore:gearIron>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:purple_shulker_box>, <ore:gearEnergeticAlloy>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv1"}))
	.duration(300).EUt(120).buildAndRegister();

assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade>, <minecraft:purple_shulker_box>, <ore:gearVibrantAlloy>])
	.outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv2"}))
	.duration(300).EUt(120).buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:dark_steel> * 4464)
    .notConsumable(<gregtech:meta_item_1:21>)
	.outputs(<enderio:block_dark_steel_anvil>)
	.duration(1680).EUt(16).buildAndRegister();

recipes.addShaped(<enderio:item_magnet>,
	[[<ore:plateElectricalSteel>, <ore:plateConductiveIron>, <ore:plateConductiveIron>],
	[<ore:toolWrench>, <enderio:item_basic_capacitor:2>, <ore:itemVibrantCrystal>],
	[<ore:plateElectricalSteel>, <ore:plateConductiveIron>, <ore:plateConductiveIron>]]);

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:nutrient_distillation> * 72)
    .inputs(<ore:stickTreatedWood>)
	.outputs(<enderio:item_material:8>)
	.duration(30).EUt(64).buildAndRegister();

recipes.addShaped(<enderio:item_dark_steel_bow>, 
	[[<ore:gtceHardHammers>, <ore:itemNutritiousStick>, <ore:wireFineDarkSteel>],
	[<ore:itemNutritiousStick>, <ore:ringDarkSteel>, <ore:wireFineDarkSteel>],
	[<ore:gtceFiles>, <ore:itemNutritiousStick>, <ore:wireFineDarkSteel>]]);

recipes.addShaped(<enderio:item_end_steel_bow>, 
	[[<ore:gtceHardHammers>, <ore:stickEndSteel>, <ore:wireFineDarkSteel>],
	[<ore:stickEndSteel>, <enderio:item_dark_steel_bow>, <ore:wireFineDarkSteel>],
	[<ore:gtceFiles>, <ore:stickEndSteel>, <ore:wireFineDarkSteel>]]);

//conduit upgrade
assembler.recipeBuilder()
    .inputs([<enderio:item_advanced_item_filter>, <forestry:portable_alyzer>])
	.outputs(<enderio:item_species_item_filter>)
	.duration(300).EUt(120).buildAndRegister();

//Conduit Facade
assembler.recipeBuilder()
    .inputs([<ore:itemConduitBinder> * 8, <appliedenergistics2:quartz_glass>])
    .circuit(8)
	.outputs(<enderio:item_conduit_facade:2>)
	.duration(100).EUt(30).buildAndRegister();

//Conduit Facade
chemical_bath.recipeBuilder()
    .inputs([<enderio:item_conduit_facade:2>])
    .fluidInputs(<liquid:obsidian> * 576)
	.outputs(<enderio:item_conduit_facade:3>)
	.duration(200).EUt(2).buildAndRegister();

//Darksteel Hoe
recipes.addShaped(<enderio:item_dark_steel_hand>, 
	[[<ore:screwDarkSteel>, <ore:screwDarkSteel>, <ore:stickWood>],
	[<ore:screwDarkSteel>, <ore:screwDarkSteel>, <ore:stickWood>],
	[null, null, <ore:stickWood>]]);

###enderio conduit mod
mixer.recipeBuilder()
    .inputs(<ore:itemPulsatingPowder>)
    .inputs(<ore:dustGold>)
	.inputs(<ore:dustEmerald>)
	.circuit(2)
    .outputs(<ore:dustCrystallineAlloy>.firstItem * 3)
    .EUt(8)
    .duration(100)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:dustEndSteel>)
    .inputs(<ore:dustEnderEye>)
	.inputs(<ore:dustBismuth>)
	.circuit(2)
    .outputs(<ore:dustMelodicAlloy>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:dustMelodicAlloy>)
    .inputs(<ore:dustNetherStar>)
	.inputs(<ore:dustNaquadah>)
	.circuit(2)
    .outputs(<ore:dustStellarAlloy>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<tconstruct:slime_congealed:2>)
    .inputs(<ore:dustCrystallineAlloy>)
	.inputs(<ore:dustDiamond>)
	.circuit(2)
    .outputs(<ore:dustCrystallinePinkSlime>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:dustChromite>)
    .inputs(<ore:dustEnderEye>)
	.inputs(<ore:dustEnergeticSilver>)
	.circuit(2)
    .outputs(<ore:dustVividAlloy>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

recipes.addShapeless(<ore:dustCrudeSteel>.firstItem * 3, [<ore:dustClay>* 1,<ore:dustFlint>* 1,<ore:dustStone>* 1]);

mixer.recipeBuilder()
    .inputs([<ore:dustClay>* 1,<ore:dustFlint>* 1,<ore:dustStone>* 1])
	.circuit(2)
    .outputs(<ore:dustCrudeSteel>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();

recipes.addShapeless(<ore:dustEnergeticSilver>.firstItem * 3, [<ore:dustBlackSteel>* 1,<ore:dustSilver> * 1,<ore:dustConductiveIron>* 1]);

mixer.recipeBuilder()
    .inputs([<ore:dustBlackSteel>* 1,<ore:dustSilver> * 1,<ore:dustConductiveIron>* 1])
	.circuit(2)
    .outputs(<ore:dustEnergeticSilver>.firstItem * 3)
    .EUt(7)
    .duration(100)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<enderio:item_material:36> * 1,<gregtech:meta_dust:1607> * 3,<gregtech:meta_dust:416>*2)
    .outputs(<enderio:item_material:22> * 6)
    .duration(100)
    .EUt(32)
    .buildAndRegister();
	