//remove
recipes.remove(<gregtech:meta_item_1:347>);
recipes.remove(<tconstruct:pattern>);
//活塞
recipes.remove(<gregtech:machine:2027>);
//熔炉
recipes.remove(<morefurnaces:furnaceblock:3>);
recipes.remove(<morefurnaces:furnaceblock:2>);
recipes.remove(<morefurnaces:furnaceblock:1>);
recipes.remove(<morefurnaces:furnaceblock>);
//蒸汽机
recipes.remove(<gregtech:machine:1>);
//土高炉
recipes.remove(<gregtech:machine:1000>);
//水泥
recipes.remove(<tconstruct:soil>);
//泵
recipes.remove(<gregtech:machine:1597>);
recipes.remove(<gregtech:steam_casing:4>);
recipes.remove(<gregtech:steam_casing:5>);
recipes.remove(<gregtech:machine:1599>);

//add
//泵
recipes.addShaped(<gregtech:machine:1597>, [[<ore:springIron>, <gregtech:steam_casing:5>, <ore:springIron>], [<ore:ringIron>, <ore:toolHammer>, <ore:ringIron>], [<ore:springIron>, <gregtech:steam_casing:5>, <ore:springIron>]]);
recipes.addShaped(<gregtech:steam_casing:5>, [[<ore:plateIron>, <ore:plankTreatedWood>, <ore:plateIron>], [<ore:screwIron>, <ore:toolHammer>, <ore:screwIron>], [<ore:plateIron>, <ore:plankTreatedWood>, <ore:plateIron>]]);
recipes.addShaped(<gregtech:steam_casing:4>, [[<ore:plankTreatedWood>, <ore:toolScrewdriver>, <ore:plankTreatedWood>], [<ore:screwIron>, <gregtech:meta_item_1:438>, <ore:screwIron>], [<ore:plankTreatedWood>, <ore:toolHammer>,<ore:plankTreatedWood>]]);
recipes.addShaped(<gregtech:machine:1599>, [[<gregtech:meta_spring:324>, <gregtech:metal_casing:4>, <gregtech:meta_spring:324>], [<ore:screwSteel>, <ore:toolHammer>, <ore:screwSteel>], [<ore:springSteel>, <gregtech:metal_casing:4>, <gregtech:meta_spring:324>]]);

//水泥
recipes.addShaped(<tconstruct:soil> * 4, [[<ore:sand>, <ore:sand>, <ore:sand>], [<ore:dustClay>, <ore:listAllwater>, <ore:dustClay>], [<ore:gravel>, <ore:gravel>, <ore:gravel>]]);
//土高炉
recipes.addShaped(<gregtech:machine:1000>, [[<gregtech:metal_casing:1>, <morefurnaces:furnaceblock>, <gregtech:metal_casing:1>], [<morefurnaces:furnaceblock>, <ore:toolHammer>, <morefurnaces:furnaceblock>], [<gregtech:metal_casing:1>, <morefurnaces:furnaceblock>, <gregtech:metal_casing:1>]]);

//砖模具
recipes.addShaped(<gregtech:meta_item_1:347>, [[null, <tconstruct:pattern>, null], [<ore:toolKnife>,<tconstruct:pattern>, <ore:toolMallet>], [null, <tconstruct:pattern>, null]]);
//匠魂模具
recipes.addShaped(<tconstruct:pattern> * 2, [[<ore:paper>, <ore:stickWood>, <ore:paper>], [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], [<ore:paper>, <ore:stickWood>, <ore:paper>]]);
//木浆
recipes.addShaped(<gregtech:meta_dust:1617>, [[<ore:toolMortar>, <ore:logWood>]]);
//熔炉
recipes.addShaped(<morefurnaces:furnaceblock>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <minecraft:furnace>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.addShaped(<morefurnaces:furnaceblock:1>, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], [<ore:plateGold>, <morefurnaces:furnaceblock>, <ore:plateGold>], [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);
recipes.addShaped(<morefurnaces:furnaceblock:2>, [[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], [<ore:plateDiamond>, <morefurnaces:furnaceblock:1>, <ore:plateDiamond>], [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]]);
recipes.addShaped(<morefurnaces:furnaceblock:3>, [[<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>], [<ore:plateObsidian>, <morefurnaces:furnaceblock:2>, <ore:plateObsidian>], [<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>]]);
//蒸汽机
recipes.addShaped(<gregtech:machine:1>, [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [<ore:plateBronze>, <ore:toolWrench>, <ore:plateBronze>], [<ore:blockBrick>, <morefurnaces:furnaceblock>, <ore:blockBrick>]]);
//铁粒
recipes.addShapeless(<minecraft:iron_nugget> * 9, [<ore:ingotIron>]);

//无中生有
recipes.addShaped(<gregtech:meta_dust_tiny:41>, [[<gtqtcore:gtqt_meta_item_1:205>], [<ore:toolMortar>]]);
recipes.addShaped(<gregtech:meta_dust_tiny:271>, [[<gtqtcore:gtqt_meta_item_1:204>], [<ore:toolMortar>]]);
recipes.addShaped(<gregtech:meta_dust_tiny:260>, [[<gtqtcore:gtqt_meta_item_1:203>], [<ore:toolMortar>]]);
recipes.addShaped(<gregtech:meta_dust_tiny:112>, [[<gtqtcore:gtqt_meta_item_1:202>], [<ore:toolMortar>]]);
recipes.addShaped(<gregtech:meta_dust_tiny:51>, [[<gtqtcore:gtqt_meta_item_1:201>], [<ore:toolMortar>]]);
recipes.addShaped(<gregtech:meta_dust_tiny:25>, [[<gtqtcore:gtqt_meta_item_1:200>], [<ore:toolMortar>]]);

