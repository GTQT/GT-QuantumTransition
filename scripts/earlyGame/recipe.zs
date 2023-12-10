//remove
recipes.remove(<gregtech:meta_item_1:347>);
recipes.remove(<tconstruct:pattern>);
recipes.remove(<claybucket:unfiredclaybucket>);

//熔炉
recipes.remove(<morefurnaces:furnaceblock:3>);
recipes.remove(<morefurnaces:furnaceblock:2>);
recipes.remove(<morefurnaces:furnaceblock:1>);
recipes.remove(<morefurnaces:furnaceblock>);
//蒸汽机
recipes.remove(<gregtech:machine:1>);
//add
//砖模具
recipes.addShaped(<gregtech:meta_item_1:347>, [[null, <tconstruct:pattern>, null], [<ore:toolKnife>,<tconstruct:pattern>, <ore:toolMallet>], [null, <tconstruct:pattern>, null]]);
//匠魂模具
recipes.addShaped(<tconstruct:pattern> * 2, [[<ore:paper>, <ore:stickWood>, <ore:paper>], [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], [<ore:paper>, <ore:stickWood>, <ore:paper>]]);
//纸
recipes.addShaped(<minecraft:paper> * 2, [[<ore:dustWood>, <ore:dustWood>, <ore:dustWood>], [<ore:dustWood>, <claybucket:claybucket:1>, <ore:dustWood>], [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>]]);
//木浆
recipes.addShaped(<gregtech:meta_dust:1617>, [[<ore:toolMortar>, <ore:logWood>]]);
//粘土桶
recipes.addShaped(<claybucket:unfiredclaybucket>, [[<ore:dustClay>, null, <ore:dustClay>], [null, <ore:dustClay>, null]]);

//熔炉
recipes.addShaped(<morefurnaces:furnaceblock>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <minecraft:furnace>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.addShaped(<morefurnaces:furnaceblock:1>, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], [<ore:plateGold>, <morefurnaces:furnaceblock>, <ore:plateGold>], [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);
recipes.addShaped(<morefurnaces:furnaceblock:2>, [[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], [<ore:plateDiamond>, <morefurnaces:furnaceblock:1>, <ore:plateDiamond>], [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]]);
recipes.addShaped(<morefurnaces:furnaceblock:3>, [[<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>], [<ore:plateObsidian>, <morefurnaces:furnaceblock:2>, <ore:plateObsidian>], [<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>]]);
//蒸汽机
recipes.addShaped(<gregtech:machine:1>, [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [<ore:plateBronze>, <ore:toolWrench>, <ore:plateBronze>], [<ore:blockBrick>, <morefurnaces:furnaceblock>, <ore:blockBrick>]]);

