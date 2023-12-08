#priority 203

import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;
import mods.tconstruct.Fuel;
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);
mods.tconstruct.Alloy.removeRecipe(<liquid:vibrant_alloy>);

recipes.addShaped(<tconstruct:cast_custom:4>, [[<ore:toolHammer>, null, null], [null, <tconstruct:cast>, null],[<ore:toolWireCutter>,null,null]]);
recipes.addShaped(<tconstruct:cast_custom:3>, [[<ore:toolHammer>, null, null], [null, <tconstruct:cast>, <ore:toolWireCutter>],[null,null,null]]);
recipes.addShaped(<tconstruct:cast_custom:2>, [[<ore:toolHammer>, null,null], [<ore:toolWireCutter>, <tconstruct:cast>,null],[null,null,null]]);
recipes.addShaped(<tconstruct:cast_custom:1>, [[<ore:toolHammer>, null, <ore:toolWireCutter>], [null, <tconstruct:cast>, null],[null,null,null]]);
recipes.addShaped(<tconstruct:cast_custom>, [[<ore:toolHammer>, <ore:toolWireCutter>,null], [null, <tconstruct:cast>,null],[null,null,null]]);

recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconevo:part_arcane_focus"}), [[null,<ore:toolHammer>,null], [null,<ore:cast>, null], [null,null, <ore:toolWireCutter>]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "conarm:boots_core"}), [[null,<ore:toolHammer>,null], [null,<ore:cast>,null], [null,<ore:toolWireCutter>,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "conarm:armor_trim"}), [[null, <ore:toolHammer>,null], [null, <ore:cast>,null], [<ore:toolWireCutter>, null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "conarm:leggings_core"}), [[null,<ore:toolHammer>, null], [null,<ore:cast>, <ore:toolWireCutter>],[null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "conarm:chest_core"}), [[null, <ore:toolHammer>,null], [<ore:toolWireCutter>, <ore:cast>, null],[null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_shaft"}), [[null,<ore:toolHammer>, <ore:toolWireCutter>], [null,<ore:cast>, null],[null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "conarm:armor_plate"}), [[<ore:toolWireCutter>,<ore:toolHammer>, null], [null, <ore:cast>, null],[null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "conarm:polishing_kit"}), [[<ore:toolHammer>, null, null], [null, <ore:cast>, null], [null, null, <ore:toolWireCutter>]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "conarm:helmet_core"}), [[<ore:toolHammer>, null,null], [null, <ore:cast>,null], [null, <ore:toolWireCutter>,null]]);

mods.tconstruct.Alloy.removeRecipe(<liquid:bronze>);
mods.tconstruct.Alloy.removeRecipe(<liquid:electrum>);
mods.tconstruct.Alloy.removeRecipe(<liquid:dark_steel>);
mods.tconstruct.Alloy.removeRecipe(<liquid:conductive_iron>);
mods.tconstruct.Alloy.removeRecipe(<liquid:pulsating_iron>);
mods.tconstruct.Alloy.removeRecipe(<liquid:energetic_alloy>);
mods.tconstruct.Alloy.removeRecipe(<liquid:invar>);
mods.tconstruct.Alloy.removeRecipe(<liquid:ferroboron>);
mods.tconstruct.Alloy.removeRecipe(<liquid:hard_carbon>);
mods.tconstruct.Alloy.removeRecipe(<liquid:tough>);
mods.tconstruct.Alloy.removeRecipe(<liquid:magnesium_diboride>);
mods.tconstruct.Alloy.removeRecipe(<liquid:lead_platinum>);
mods.tconstruct.Alloy.removeRecipe(<liquid:alubrass>);
mods.tconstruct.Alloy.removeRecipe(<liquid:brass>);

mods.tconstruct.Casting.removeBasinRecipe(<nuclearcraft:ingot_block:12>);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:ingot:12>);

mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:1>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:2>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:0>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.tconstruct.Casting.removeTableRecipe(<threng:material>);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:alloy:1>);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:alloy:2>);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:alloy:6>);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:alloy:9>);
mods.tconstruct.Casting.removeTableRecipe(<extraplanets:tier11_items:5>);

mods.tconstruct.Melting.addRecipe(<liquid:aluminum> * 144,<gregtech:meta_ingot:2>, 500);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>,null, <liquid:alumite>, 288, true, 200);

mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritia:resource:4>);
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritia:resource:3>);
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritia:block_resource>);

mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>,<gregtech:meta_dust:2>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>,<gregtech:meta_dust_small:2>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>,<gregtech:meta_dust_tiny:2>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>,<gregtech:meta_nugget:2>);

mods.tconstruct.Melting.removeRecipe(<liquid:osmium>,<gregtech:meta_dust:75>);
mods.tconstruct.Melting.removeRecipe(<liquid:osmium>,<gregtech:meta_dust_small:75>);
mods.tconstruct.Melting.removeRecipe(<liquid:osmium>,<gregtech:meta_dust_tiny:75>);
mods.tconstruct.Melting.removeRecipe(<liquid:osmium>,<gregtech:meta_nugget:75>);

mods.tconstruct.Melting.removeRecipe(<liquid:stainless_steel>,<gregtech:meta_dust:323>);
mods.tconstruct.Melting.removeRecipe(<liquid:stainless_steel>,<gregtech:meta_dust_small:323>);
mods.tconstruct.Melting.removeRecipe(<liquid:stainless_steel>,<gregtech:meta_dust_tiny:323>);
mods.tconstruct.Melting.removeRecipe(<liquid:stainless_steel>,<gregtech:meta_nugget:323>);

mods.tconstruct.Melting.removeRecipe(<liquid:tungsten>,<gregtech:meta_dust:115>);
mods.tconstruct.Melting.removeRecipe(<liquid:tungsten>,<gregtech:meta_dust_small:115>);
mods.tconstruct.Melting.removeRecipe(<liquid:tungsten>,<gregtech:meta_dust_tiny:115>);
mods.tconstruct.Melting.removeRecipe(<liquid:tungsten>,<gregtech:meta_nugget:115>);

mods.tconstruct.Melting.removeRecipe(<liquid:titanium>,<gregtech:meta_dust:113>);
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>,<gregtech:meta_dust_small:113>);
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>,<gregtech:meta_dust_tiny:113>);
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>,<gregtech:meta_nugget:113>);

mods.tconstruct.Melting.removeRecipe(<liquid:iridium>,<gregtech:meta_dust:50>);
mods.tconstruct.Melting.removeRecipe(<liquid:iridium>,<gregtech:meta_dust_small:50>);
mods.tconstruct.Melting.removeRecipe(<liquid:iridium>,<gregtech:meta_dust_tiny:50>);
mods.tconstruct.Melting.removeRecipe(<liquid:iridium>,<gregtech:meta_nugget:50>);

mods.tconstruct.Melting.removeRecipe(<liquid:zirconium>,<gregtech:meta_dust:123>);
mods.tconstruct.Melting.removeRecipe(<liquid:zirconium>,<gregtech:meta_dust_small:123>);
mods.tconstruct.Melting.removeRecipe(<liquid:zirconium>,<gregtech:meta_dust_tiny:123>);
mods.tconstruct.Melting.removeRecipe(<liquid:zirconium>,<gregtech:meta_nugget:123>);

mods.tconstruct.Melting.removeRecipe(<liquid:platinum>,<gregtech:meta_dust:80>);
mods.tconstruct.Melting.removeRecipe(<liquid:platinum>,<gregtech:meta_dust_small:80>);
mods.tconstruct.Melting.removeRecipe(<liquid:platinum>,<gregtech:meta_dust_tiny:80>);
mods.tconstruct.Melting.removeRecipe(<liquid:platinum>,<gregtech:meta_nugget:80>);

mods.tconstruct.Melting.removeRecipe(<liquid:glowstone>,<minecraft:glowstone>);
mods.tconstruct.Melting.removeRecipe(<liquid:glowstone>,<minecraft:glowstone_dust>);

mods.tconstruct.Casting.removeTableRecipe(<avaritia:resource:4>);
mods.tconstruct.Casting.removeTableRecipe(<avaritia:resource:3>);
mods.tconstruct.Casting.removeBasinRecipe(<avaritia:block_resource>);

recipes.remove(<tconstruct:casting:1>);
recipes.remove(<tconstruct:casting>);
recipes.remove(<tconstruct:seared:3>);
recipes.remove(<tconstruct:soil>);
recipes.addShaped(<tconstruct:soil> * 2, [[<ore:gravel>, <ore:sand>, <ore:gravel>], [<ore:sand>, <ore:blockClay>, <ore:sand>], [<ore:gravel>, <ore:sand>, <ore:gravel>]]);
recipes.addShaped(<tconstruct:casting:1>, [[<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.addShaped(<tconstruct:casting>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>]]);
recipes.addShaped(<tconstruct:seared:3>*2, [[<ore:ingotBrickSeared>, <ore:dustFlint>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000}), <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:dustFlint>, <ore:ingotBrickSeared>]]);
recipes.addShaped(<tconstruct:seared:3>*4, [[<ore:ingotBrickSeared>, <ore:dustFlint>, <ore:ingotBrickSeared>], [<ore:dustFlint>, <ore:frameGtSteel>, <ore:dustFlint>], [<ore:ingotBrickSeared>, <ore:dustFlint>, <ore:ingotBrickSeared>]]);

mods.tconstruct.Melting.addRecipe(<liquid:molten_netherite>*144,<futuremc:netherite_ingot>, 1800);
mods.tconstruct.Melting.addRecipe(<liquid:molten_coalescence_matrix>*144,<tconevo:material:0>, 2000);
mods.tconstruct.Melting.addRecipe(<liquid:molten_gaia>*144,<item:botania:manaresource:14>, 1600);
mods.tconstruct.Melting.removeRecipe(<liquid:draconium>,<draconicevolution:draconium_ore:2>);
mods.tconstruct.Melting.removeRecipe(<liquid:draconium>,<draconicevolution:draconium_ore:1>);
mods.tconstruct.Melting.removeRecipe(<liquid:draconium>,<draconicevolution:draconium_ore:0>);
mods.tconstruct.Melting.removeRecipe(<liquid:bronze>,<minecraft:minecart>);
mods.tconstruct.Melting.removeRecipe(<liquid:gold>,<minecraft:golden_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:detector_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:activator_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:rail>);
//删除其他模组的东西
mods.tconstruct.Casting.removeTableRecipe(<forestry:ingot_tin>);
mods.tconstruct.Casting.removeTableRecipe(<forestry:ingot_copper>);
mods.tconstruct.Casting.removeTableRecipe(<forestry:ingot_bronze>);
mods.tconstruct.Casting.removeBasinRecipe(<forestry:resource_storage:*>);
mods.tconstruct.Casting.removeTableRecipe(<forestry:gear_bronze>);
mods.tconstruct.Casting.removeTableRecipe(<forestry:gear_copper>);
mods.tconstruct.Casting.removeTableRecipe(<forestry:gear_tin>);
//注册到GT的浇筑配方（铜 锡 银 青铜  锭块各一 锭144 块144*9
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_ingot:100>,<tconstruct:cast_custom>,<liquid:silver>,144,false,60);
mods.tconstruct.Casting.addBasinRecipe(<gregtech:meta_block_compressed_6:4>,null, <liquid:silver>, 1296, true, 540);

mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_ingot:112>,<tconstruct:cast_custom>,<liquid:tin>,144,false,60);
mods.tconstruct.Casting.addBasinRecipe(<gregtech:meta_block_compressed_7>,null, <liquid:tin>, 1296, true, 540);


mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_ingot:25>,<tconstruct:cast_custom>,<liquid:copper>,144,false,60);
mods.tconstruct.Casting.addBasinRecipe(<gregtech:meta_block_compressed_1:9>,null, <liquid:copper>, 1296, true, 540);


mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_ingot:260>,<tconstruct:cast_custom>,<liquid:bronze>,144,false,60);
mods.tconstruct.Casting.addBasinRecipe(<gregtech:meta_block_compressed_16:4>,null, <liquid:bronze>, 1296, true, 540);


mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_ingot:55>,<tconstruct:cast_custom>,<liquid:lead>,144,false,60);
mods.tconstruct.Casting.addBasinRecipe(<gregtech:meta_block_compressed_3:7>,null, <liquid:lead>, 1296, true, 540);
//glowstone
mods.tconstruct.Melting.addRecipe(<liquid:glowstone>*576,<minecraft:glowstone>, 200);
//玻璃
mods.tconstruct.Melting.removeRecipe(<liquid:glass>);

mods.tconstruct.Melting.addRecipe(<liquid:glass>*576,<ore:sand>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:glass>*576,<ore:blockGlass>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:glass>*288,<ore:paneGlass>, 200);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:glass>,null, <liquid:glass>, 576, false, 20);
//燃料注册
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.argon> * 2, 900);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.adamantium> * 2, 900);
mods.tconstruct.Fuel.registerFuel(<liquid:orichalcum> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:molten.zeron_100> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.helium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:neutronium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:ultimet> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:naquadah_enriched> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:blaze> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:molten.hastelloy_x> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:molten.mercury_barium_calcium_cuprate> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:molten.naquadah_alloy> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:molten.indium_tin_barium_titanium_cuprate> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:molten.watertight_steel> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:molten.maraging_steel_300> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:molten.hsse> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:yttrium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:titanium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:iridium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:duranium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:rhodium_plated_palladium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:hsse> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:naquadah_alloy> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:titanium_tungsten_carbide> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:molybdenum> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.vibranium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.oxygen> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.nitrogen> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.nickel> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.iron> * 2, 300);