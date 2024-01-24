#priority 203

import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;
import mods.tconstruct.Fuel;

recipes.remove(<tconstruct:casting:1>);
recipes.remove(<tconstruct:casting>);
recipes.remove(<tconstruct:smeltery_io>);
recipes.remove(<tconstruct:smeltery_controller>);
recipes.remove(<tconstruct:seared:3>);

recipes.addShaped(<tconstruct:casting:1>, [[<ore:blockSeared>, null, <ore:blockSeared>], [<ore:blockSeared>, null, <ore:blockSeared>], [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]]);
recipes.addShaped(<tconstruct:casting>, [[<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>], [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>], [<ore:blockSeared>, null, <ore:blockSeared>]]);
recipes.addShaped(<tconstruct:smeltery_io>, [[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <tconstruct:channel>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]]);
recipes.addShaped(<tconstruct:smeltery_controller>, [[<ore:blockSeared>, <ore:ingotBrickSeared>, <ore:blockSeared>], [<ore:ingotBrickSeared>, <morefurnaces:furnaceblock>, <ore:ingotBrickSeared>], [<ore:blockSeared>, <ore:ingotBrickSeared>, <ore:blockSeared>]]);
recipes.addShaped(<tconstruct:seared:3> * 2, [[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:listAllwater>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]]);
//铸模
recipes.addShaped(<tconstruct:cast_custom:4>, [[<ore:toolHammer>, null, null], [null, <tconstruct:cast>, null],[<ore:toolWireCutter>,null,null]]);
recipes.addShaped(<tconstruct:cast_custom:3>, [[<ore:toolHammer>, null, null], [null, <tconstruct:cast>, <ore:toolWireCutter>],[null,null,null]]);
recipes.addShaped(<tconstruct:cast_custom:2>, [[<ore:toolHammer>, null,null], [<ore:toolWireCutter>, <tconstruct:cast>,null],[null,null,null]]);
recipes.addShaped(<tconstruct:cast_custom:1>, [[<ore:toolHammer>, null, <ore:toolWireCutter>], [null, <tconstruct:cast>, null],[null,null,null]]);
recipes.addShaped(<tconstruct:cast_custom>, [[<ore:toolHammer>, <ore:toolWireCutter>,null], [null, <tconstruct:cast>,null],[null,null,null]]);

recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"}), [[null, null,null], [<ore:toolWireCutter>,<ore:cast>, <ore:toolHammer>], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}), [[null, null,<ore:toolWireCutter>], [null,<ore:cast>, <ore:toolHammer>], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:scythe_head"}), [[null,<ore:toolWireCutter>, null], [null,<ore:cast>, <ore:toolHammer>], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"}), [[<ore:toolWireCutter>, null, null], [null, <ore:cast>, <ore:toolHammer>], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}), [[null,null,null],[<ore:toolHammer>, <ore:cast>, null], [null, null, <ore:toolWireCutter>]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}), [[null,null,null],[<ore:toolHammer>, <ore:cast>,null], [null, <ore:toolWireCutter>,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:binding"}), [[null,null,null],[<ore:toolHammer>, <ore:cast>,null], [<ore:toolWireCutter>, null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), [[null,null,null],[<ore:toolHammer>, <ore:cast>, <ore:toolWireCutter>], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:sign_head"}), [[null, null, <ore:toolWireCutter>], [<ore:toolHammer>, <ore:cast>, null], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:bow_limb"}), [[null, <ore:toolWireCutter>,null], [<ore:toolHammer>, <ore:cast>,null], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"}), [[<ore:toolWireCutter>, null,null], [<ore:toolHammer>, <ore:cast>,null], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"}), [[null,null, <ore:toolHammer>], [null,<ore:cast>, null], [null,null ,<ore:toolWireCutter>]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}), [[null,null, <ore:toolHammer>], [null,<ore:cast>, null], [null,<ore:toolWireCutter>, null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:shard"}), [[null, null, <ore:toolHammer>], [null, <ore:cast>, null], [<ore:toolWireCutter>, null, null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:hand_guard"}), [[null, null, <ore:toolHammer>], [null,<ore:cast>, <ore:toolWireCutter>], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:cross_guard"}), [[null, null, <ore:toolHammer>], [<ore:toolWireCutter>, <ore:cast>, null], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:kama_head"}), [[null,<ore:toolWireCutter>, <ore:toolHammer>], [null,<ore:cast>, null], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}), [[<ore:toolWireCutter>, null, <ore:toolHammer>], [null, <ore:cast>, null], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"}), [[null,<ore:toolHammer>, null], [null,<ore:cast>, null], [null,null,<ore:toolWireCutter>]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"}), [[null,<ore:toolHammer>,null], [null,<ore:cast>,null], [null,<ore:toolWireCutter>,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"}), [[null, <ore:toolHammer>,null], [null, <ore:cast>,null], [<ore:toolWireCutter>,null, null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}), [[null,<ore:toolHammer>, null], [null,<ore:cast>, <ore:toolWireCutter>], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_head"}), [[null, <ore:toolHammer>,null], [<ore:toolWireCutter>, <ore:cast>,null], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:knife_blade"}), [[null,<ore:toolHammer>, <ore:toolWireCutter>], [null, <ore:cast>,null], [null,null,null]]);
recipes.addShaped(<tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}), [[<ore:toolWireCutter>, <ore:toolHammer>,null], [null, <ore:cast>,null], [null,null,null]]);



mods.tconstruct.Casting.removeTableRecipe(<minecraft:glass_pane>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:clear_glass>);
//删除铸模
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:0>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:1>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:2>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);

mods.tconstruct.Melting.addRecipe(<liquid:glass> * 1000,<tconstruct:clear_glass>);
//铸模
//铝
mods.tconstruct.Melting.addRecipe(<liquid:aluminium> * 72,<contenttweaker:lvkuangkuangsha>);
mods.tconstruct.Melting.addRecipe(<liquid:aluminium> * 144,<ore:ingotAluminium>);
//耐酸铝
mods.tconstruct.Alloy.addRecipe(<liquid:alumite> * 32,[<liquid:aluminium> * 80,<liquid:steel> * 32, <liquid:obsidian> * 32]);
//铝黄铜
mods.tconstruct.Alloy.addRecipe(<liquid:alubrassa> * 48,[<liquid:aluminium> * 48,<liquid:copper> * 16]);
//铝黄铜->铸模
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>,null,<liquid:alubrassa>, 288);
//偷鸡配方
mods.tconstruct.Melting.removeRecipe(<liquid:bronze>,<minecraft:minecart>);
mods.tconstruct.Melting.removeRecipe(<liquid:gold>,<minecraft:golden_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:detector_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:activator_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:rail>);

//燃料注册
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.argon> * 2, 900);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.helium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:neutronium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.vibranium> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.oxygen> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.nitrogen> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.nickel> * 2, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:plasma.iron> * 2, 300);