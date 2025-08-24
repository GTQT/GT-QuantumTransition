import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
//Iron, Gold, Diamond, Copper, Silver, Obsidian, Glass and Dirt Chest
recipes.remove(<ironchest:iron_chest:*>);

//Iron Chest
recipes.addShaped(<ironchest:iron_chest>, [[<ore:screwIron>, <ore:plateIron>, <ore:screwIron>],[<ore:plateIron>, <minecraft:chest>, <ore:plateIron>], [<ore:toolHammer>, <ore:plateIron>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<minecraft:chest>)
    .inputs(<ore:plateIron> * 3)
    .outputs(<ironchest:iron_chest>)
    .duration(150)
    .circuit(15)
    .EUt(16)
    .buildAndRegister();

//GoldChest
recipes.addShaped(<ironchest:iron_chest:1>, [[<ore:screwGold>, <ore:plateDoubleGold>, <ore:screwGold>],[<ore:plateDoubleGold>, <minecraft:chest>, <ore:plateDoubleGold>], [<ore:toolHammer>, <ore:plateDoubleGold>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<minecraft:chest>)
    .inputs(<ore:plateDoubleGold> * 3)
    .outputs(<ironchest:iron_chest:1>)
    .duration(250)
    .circuit(15)
    .EUt(64)
    .buildAndRegister();

//DiamondChest
recipes.addShaped(<ironchest:iron_chest:2>, [[<ore:screwDiamond>, <ore:plateDiamond>, <ore:screwDiamond>],[<ore:plateDiamond>, <minecraft:chest>, <ore:plateDiamond>], [<ore:toolHammer>, <ore:plateDiamond>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<minecraft:chest>)
    .inputs(<ore:plateDiamond> * 3)
    .outputs(<ironchest:iron_chest:2>)
    .duration(300)
    .circuit(15)
    .EUt(120)
    .buildAndRegister();

//CopperChest
recipes.addShaped(<ironchest:iron_chest:3>, [[<ore:screwCopper>, <ore:plateDoubleCopper>, <ore:screwCopper>],[<ore:plateDoubleCopper>, <minecraft:chest>, <ore:plateDoubleCopper>], [<ore:toolHammer>, <ore:plateDoubleCopper>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<minecraft:chest>)
    .inputs(<ore:plateDoubleCopper> * 3)
    .outputs(<ironchest:iron_chest:3>)
    .duration(100)
    .circuit(15)
    .EUt(7)
    .buildAndRegister();

//SilverChest
recipes.addShaped(<ironchest:iron_chest:4>, [[<ore:screwSilver>, <ore:plateDoubleSilver>, <ore:screwSilver>],[<ore:plateDoubleSilver>, <minecraft:chest>, <ore:plateDoubleSilver>], [<ore:toolHammer>, <ore:plateDoubleSilver>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<minecraft:chest>)
    .inputs(<ore:plateDoubleSilver> * 3)
    .outputs(<ironchest:iron_chest:4>)
    .duration(200)
    .circuit(15)
    .EUt(30)
    .buildAndRegister();

//GlassChest
recipes.addShaped(<ironchest:iron_chest:5>, [[<ore:screwDiamond>, <ore:plateGlass>, <ore:screwDiamond>],[<ore:plateGlass>, <ironchest:iron_chest:2>, <ore:plateGlass>], [<ore:toolHammer>, <ore:plateGlass>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ironchest:iron_chest:2>)
    .inputs(<ore:plateGlass> * 4)
    .outputs(<ironchest:iron_chest:5>)
    .duration(350)
    .circuit(15)
    .EUt(256)
    .buildAndRegister();

//ObsidianChest
recipes.addShaped(<ironchest:iron_chest:6>, [[<ore:screwDiamond>, <ore:plateObsidian>, <ore:screwDiamond>],[<ore:plateObsidian>, <ironchest:iron_chest:2>, <ore:plateObsidian>], [<ore:toolHammer>, <ore:plateObsidian>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ironchest:iron_chest:2>)
    .inputs(<ore:plateObsidian> * 3)
    .circuit(15)
    .outputs(<ironchest:iron_chest:6>)
    .duration(400)
    .EUt(256)
    .buildAndRegister();

//DirtChest
assembler.recipeBuilder()
    .inputs(<minecraft:chest>)
    .inputs(<minecraft:dirt> * 8)
    .outputs(<ironchest:iron_chest:7>)
    .duration(80)
    .EUt(1)
    .buildAndRegister();

//Upgrades
recipes.remove(<ironchest:wood_iron_chest_upgrade>);
recipes.addShaped(<ironchest:wood_iron_chest_upgrade>, [[<ore:screwIron>, <ore:plateIron>, <ore:screwIron>],[<ore:plateIron>, <ore:plateWood>, <ore:plateIron>], [<ore:toolHammer>, <ore:plateIron>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateWood>)
    .inputs(<ore:plateIron> * 2)
    .outputs(<ironchest:wood_iron_chest_upgrade>)
    .duration(150)
    .circuit(16)
    .EUt(16)
    .buildAndRegister();

recipes.remove(<ironchest:wood_copper_chest_upgrade>);
recipes.addShaped(<ironchest:wood_copper_chest_upgrade>, [[<ore:screwCopper>, <ore:plateCopper>, <ore:screwCopper>],[<ore:plateCopper>, <ore:plateWood>, <ore:plateCopper>], [<ore:toolHammer>, <ore:plateCopper>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateWood>)
    .inputs(<ore:plateCopper> * 2)
    .outputs(<ironchest:wood_copper_chest_upgrade>)
    .duration(150)
    .circuit(16)
    .EUt(16)
    .buildAndRegister();

recipes.remove(<ironchest:copper_iron_chest_upgrade>);
recipes.addShaped(<ironchest:copper_iron_chest_upgrade>, [[<ore:screwIron>, <ore:plateIron>, <ore:screwIron>],[<ore:plateIron>, <ore:plateCopper>, <ore:plateIron>], [<ore:toolHammer>, <ore:plateIron>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateCopper>)
    .inputs(<ore:plateIron> * 2)
    .outputs(<ironchest:copper_iron_chest_upgrade>)
    .duration(400)
    .circuit(16)
    .EUt(30)
    .buildAndRegister();
    
recipes.remove(<ironchest:copper_silver_chest_upgrade>);
recipes.addShaped(<ironchest:copper_silver_chest_upgrade>, [[<ore:screwSilver>, <ore:plateSilver>, <ore:screwSilver>],[<ore:plateSilver>, <ore:plateCopper>, <ore:plateSilver>], [<ore:toolHammer>, <ore:plateSilver>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateCopper>)
    .inputs(<ore:plateSilver> * 2)
    .outputs(<ironchest:copper_silver_chest_upgrade>)
    .duration(400)
    .circuit(16)
    .EUt(30)
    .buildAndRegister();

recipes.remove(<ironchest:iron_gold_chest_upgrade>);
recipes.addShaped(<ironchest:iron_gold_chest_upgrade>, [[<ore:screwGold>, <ore:plateGold>, <ore:screwGold>],[<ore:plateGold>, <ore:plateIron>, <ore:plateGold>], [<ore:toolHammer>, <ore:plateGold>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateIron>)
    .inputs(<ore:plateGold> * 2)
    .outputs(<ironchest:iron_gold_chest_upgrade>)
    .duration(500)
    .circuit(16)
    .EUt(64)
    .buildAndRegister();

recipes.remove(<ironchest:silver_gold_chest_upgrade>);
recipes.addShaped(<ironchest:silver_gold_chest_upgrade>, [[<ore:screwGold>, <ore:plateGold>, <ore:screwGold>],[<ore:plateGold>, <ore:plateSilver>, <ore:plateGold>], [<ore:toolHammer>, <ore:plateGold>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateSilver>)
    .inputs(<ore:plateGold> * 2)
    .outputs(<ironchest:silver_gold_chest_upgrade>)
    .duration(500)
    .circuit(16)
    .EUt(64)
    .buildAndRegister();

recipes.remove(<ironchest:gold_diamond_chest_upgrade>);
recipes.addShaped(<ironchest:gold_diamond_chest_upgrade>, [[<ore:screwDiamond>, <ore:plateDiamond>, <ore:screwDiamond>],[null, <ore:plateGold>, null], [<ore:toolHammer>, <ore:plateDiamond>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateGold>)
    .inputs(<ore:plateDiamond> * 2)
    .outputs(<ironchest:gold_diamond_chest_upgrade>)
    .duration(600)
    .circuit(16)
    .EUt(120)
    .buildAndRegister();

recipes.remove(<ironchest:diamond_crystal_chest_upgrade>);
recipes.addShaped(<ironchest:diamond_crystal_chest_upgrade>, [[<ore:screwDiamond>, <ore:plateGlass>, <ore:screwDiamond>],[<ore:plateGlass>, <ore:plateDiamond>, <ore:plateGlass>], [<ore:toolHammer>, <ore:plateGlass>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateDiamond>)
    .inputs(<ore:plateGlass> * 2)
    .outputs(<ironchest:diamond_crystal_chest_upgrade>)
    .duration(800)
    .circuit(16)
    .EUt(256)
    .buildAndRegister();

recipes.remove(<ironchest:diamond_obsidian_chest_upgrade>);
recipes.addShaped(<ironchest:diamond_obsidian_chest_upgrade>, [[<ore:screwDiamond>, <ore:plateObsidian>, <ore:screwDiamond>],[<ore:plateObsidian>, <ore:plateDiamond>, <ore:plateObsidian>], [<ore:toolHammer>, <ore:plateObsidian>, <ore:toolScrewdriver>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateDiamond>)
    .inputs(<ore:plateObsidian> * 2)
    .outputs(<ironchest:diamond_obsidian_chest_upgrade>)
    .circuit(16)
    .duration(800)
    .EUt(256)
    .buildAndRegister();