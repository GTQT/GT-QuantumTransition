//Barrel
recipes.removeShaped(<yabba:item_barrel>);
recipes.addShaped(<yabba:item_barrel>, [[<ore:logWood>, <ore:slabWood>, <ore:logWood>],[<ore:logWood>, <minecraft:chest>, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
assembler.recipeBuilder()
    .inputs(<ore:plankWood> * 8)
    .circuit(9)
    .inputs(<minecraft:chest>)
    .outputs(<yabba:item_barrel>)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

//BlankUpgrade
recipes.remove(<yabba:upgrade_blank>);
recipes.addShaped(<yabba:upgrade_blank> * 2, [[<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],[<ore:stickWood>, <minecraft:chest>, <ore:stickWood>], [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateWood> * 3)
    .inputs(<minecraft:chest>)
    .circuit(4)
    .outputs(<yabba:upgrade_blank> * 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

//IronUpgrade
recipes.remove(<yabba:upgrade_iron_tier>);
recipes.addShaped(<yabba:upgrade_iron_tier> * 2, [[<ore:screwIron>, <ore:plateIron>, <ore:screwIron>],[<ore:plateIron>, <yabba:upgrade_blank>, <ore:plateIron>], [<ore:screwIron>, <ore:plateIron>, <ore:screwIron>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateIron> * 3)
    .inputs(<yabba:upgrade_blank>)
    .outputs(<yabba:upgrade_iron_tier> * 2)
    .duration(400)
    .EUt(30)
    .buildAndRegister();

//GoldUpgrade
recipes.remove(<yabba:upgrade_gold_tier>);
recipes.addShaped(<yabba:upgrade_gold_tier> * 2, [[<ore:screwGold>, <ore:plateGold>, <ore:screwGold>],[<ore:plateGold>, <yabba:upgrade_blank>, <ore:plateGold>], [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateGold> * 3)
    .inputs(<yabba:upgrade_blank>)
    .outputs(<yabba:upgrade_gold_tier> * 2)
    .duration(500)
    .EUt(64)
    .buildAndRegister();
    
//DiamondUpgrade
recipes.removeShaped(<yabba:upgrade_diamond_tier> * 2);
recipes.addShaped(<yabba:upgrade_diamond_tier>, [[<ore:screwDiamond>, <ore:plateDiamond>, <ore:screwDiamond>],[<ore:plateDiamond>, <yabba:upgrade_blank>, <ore:plateDiamond>], [<ore:screwDiamond>, <ore:plateDiamond>, <ore:screwDiamond>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateDiamond> * 3)
    .inputs(<yabba:upgrade_blank>)
    .outputs(<yabba:upgrade_diamond_tier> * 2)
    .duration(600)
    .EUt(120)
    .buildAndRegister();
    
//InfiniteUpgrade
recipes.remove(<yabba:upgrade_star_tier>);