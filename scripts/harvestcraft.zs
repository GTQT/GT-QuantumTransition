recipes.remove(<harvestcraft:grinder>);
recipes.remove(<harvestcraft:well>);
recipes.remove(<harvestcraft:beeswaxitem>);
recipes.remove(<harvestcraft:hardenedleatheritem>);
recipes.remove(<harvestcraft:shippingbin>);
recipes.remove(<harvestcraft:market>);
recipes.remove(<harvestcraft:grinder>);
recipes.remove(<harvestcraft:well>);
recipes.remove(<harvestcraft:beeswaxitem>);
recipes.remove(<harvestcraft:hardenedleatheritem>);
recipes.remove(<harvestcraft:shippingbin>);
recipes.remove(<harvestcraft:market>);
recipes.remove(<cookingforblockheads:milk_jar>);
recipes.remove(<harvestcraft:presser>);
recipes.remove(<harvestcraft:apiary>);

recipes.remove(<harvestcraft:hardenedleatherbootsitem>);
recipes.addShaped(<harvestcraft:hardenedleatherbootsitem>, [[<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>], [<harvestcraft:hardenedleatheritem>, <ore:gtceHardHammers>, <harvestcraft:hardenedleatheritem>]]);

recipes.remove(<harvestcraft:hardenedleatherleggingsitem>);
recipes.addShaped(<harvestcraft:hardenedleatherchestitem>, [[<harvestcraft:hardenedleatheritem>, <ore:gtceHardHammers>, <harvestcraft:hardenedleatheritem>],[<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>], [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>]]);

recipes.remove(<harvestcraft:hardenedleatherhelmitem>);
recipes.addShaped(<harvestcraft:hardenedleatherleggingsitem>, [[<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>],[<harvestcraft:hardenedleatheritem>, <ore:gtceHardHammers>, <harvestcraft:hardenedleatheritem>], [<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>]]);

recipes.remove(<harvestcraft:hardenedleatherchestitem>);
recipes.addShaped(<harvestcraft:hardenedleatherhelmitem>, [[<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>],[<harvestcraft:hardenedleatheritem>, <ore:gtceHardHammers>, <harvestcraft:hardenedleatheritem>]]);

recipes.remove(<harvestcraft:wovencottonitem>);
recipes.addShaped(<harvestcraft:wovencottonitem>, [[<ore:string>, <ore:cropCotton>, <ore:string>],[<ore:cropCotton>, <ore:string>, <ore:cropCotton>], [<ore:string>, <ore:cropCotton>, <ore:string>]]);

recipes.remove(<harvestcraft:cuttingboarditem>);
recipes.addShapeless(<harvestcraft:cuttingboarditem>, [<gregtech:butchery_knife>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1024, AttackDamage: 6.5 as float, Durability: 0, Material: "stainless_steel", AttackSpeed: -1.3 as float}}).noReturn()]);

recipes.remove(<harvestcraft:bakewareitem>);
recipes.addShaped(<harvestcraft:bakewareitem>, [[<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],[<ore:plateStainlessSteel>, <ore:gtceHardHammers>, <ore:plateStainlessSteel>], [<ore:boltStainlessSteel>, <ore:plateStainlessSteel>, <ore:boltStainlessSteel>]]);

recipes.remove(<harvestcraft:potitem>);
recipes.addShaped(<harvestcraft:potitem>, [[<ore:gtceHardHammers>, <ore:plateIron>, <ore:gtceFiles>],[<ore:ringIron>, <minecraft:bucket>, <ore:ringIron>], [<ore:screwIron>, <ore:plateIron>, <ore:screwIron>]]);

recipes.remove(<harvestcraft:saucepanitem>);
recipes.addShaped(<harvestcraft:saucepanitem>, [[<ore:stickWood>, <ore:gtceHardHammers>, <ore:screwIron>],[<ore:stickIron>, <minecraft:bucket>, <ore:plateIron>], [<ore:stickWood>, <ore:gtceFiles>, <ore:plateIron>]]);

recipes.remove(<harvestcraft:skilletitem>);
recipes.addShaped(<harvestcraft:skilletitem>, [[<ore:stickWood>, <ore:stickIron>, <ore:gtceHardHammers>],[<ore:stickIron>, <minecraft:bucket>, <ore:plateIron>], [<ore:stickWood>, <ore:gtceFiles>, <ore:plateIron>]]);

recipes.remove(<harvestcraft:juiceritem>);
recipes.addShaped(<harvestcraft:juiceritem>, [[<ore:plateStainlessSteel>, <ore:gtceHardHammers>, <ore:plateStainlessSteel>],[<ore:plateStainlessSteel>, <ore:toolHeadDrillStainlessSteel>, <ore:plateStainlessSteel>], [<ore:boltStainlessSteel>, <ore:plateStainlessSteel>, <ore:boltStainlessSteel>]]);

recipes.remove(<harvestcraft:mortarandpestleitem>);
recipes.addShaped(<harvestcraft:mortarandpestleitem>, [[<ore:gtceHardHammers>, <ore:stickStainlessSteel>, <ore:gtceFiles>],[<ore:stoneSmooth>, <ore:stickStainlessSteel>, <ore:stoneSmooth>], [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]]);

recipes.remove(<harvestcraft:mixingbowlitem>);
recipes.addShaped(<harvestcraft:mixingbowlitem>, [[<ore:screwIron>, <ore:gtceFiles>, <ore:screwIron>],[<ore:plateIron>, <minecraft:bucket>, <ore:plateIron>], [<ore:screwIron>, <ore:gtceHardHammers>, <ore:screwIron>]]);

recipes.addShapeless(<gregtech:meta_dust:1615>, [<harvestcraft:flouritem>]);
recipes.replaceAllOccurences(<harvestcraft:flouritem>, <gregtech:meta_dust:1615>);

recipes.removeByRecipeName("harvestcraft:freshwateritem_listallwater");

<ore:blockCheese>.add(<harvestcraft:cheeseitem>);
<ore:blockCheese>.add(<gregtechfoodoption:gtfo_meta_item:96>);
<ore:foodCheese>.remove(<harvestcraft:cheeseitem>);

recipes.remove(<harvestcraft:hardenedleatherbootsitem>);
recipes.addShaped(<harvestcraft:hardenedleatherbootsitem>, [[<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>], [<harvestcraft:hardenedleatheritem>, <ore:gtceHardHammers>, <harvestcraft:hardenedleatheritem>]]);

recipes.remove(<harvestcraft:hardenedleatherleggingsitem>);
recipes.addShaped(<harvestcraft:hardenedleatherchestitem>, [[<harvestcraft:hardenedleatheritem>, <ore:gtceHardHammers>, <harvestcraft:hardenedleatheritem>],[<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>], [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>]]);

recipes.remove(<harvestcraft:hardenedleatherhelmitem>);
recipes.addShaped(<harvestcraft:hardenedleatherleggingsitem>, [[<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>],[<harvestcraft:hardenedleatheritem>, <ore:gtceHardHammers>, <harvestcraft:hardenedleatheritem>], [<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>]]);

recipes.remove(<harvestcraft:hardenedleatherchestitem>);
recipes.addShaped(<harvestcraft:hardenedleatherhelmitem>, [[<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>],[<harvestcraft:hardenedleatheritem>, <ore:gtceHardHammers>, <harvestcraft:hardenedleatheritem>]]);

recipes.remove(<harvestcraft:wovencottonitem>);
recipes.addShaped(<harvestcraft:wovencottonitem>, [[<ore:string>, <ore:cropCotton>, <ore:string>],[<ore:cropCotton>, <ore:string>, <ore:cropCotton>], [<ore:string>, <ore:cropCotton>, <ore:string>]]);

recipes.remove(<harvestcraft:cuttingboarditem>);
recipes.addShapeless(<harvestcraft:cuttingboarditem>, [<gregtech:butchery_knife>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1024, AttackDamage: 6.5 as float, Durability: 0, Material: "stainless_steel", AttackSpeed: -1.3 as float}}).noReturn()]);

recipes.remove(<harvestcraft:bakewareitem>);
recipes.addShaped(<harvestcraft:bakewareitem>, [[<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],[<ore:plateStainlessSteel>, <ore:gtceHardHammers>, <ore:plateStainlessSteel>], [<ore:boltStainlessSteel>, <ore:plateStainlessSteel>, <ore:boltStainlessSteel>]]);

recipes.remove(<harvestcraft:potitem>);
recipes.addShaped(<harvestcraft:potitem>, [[<ore:gtceHardHammers>, <ore:plateIron>, <ore:gtceFiles>],[<ore:ringIron>, <minecraft:bucket>, <ore:ringIron>], [<ore:screwIron>, <ore:plateIron>, <ore:screwIron>]]);

recipes.remove(<harvestcraft:saucepanitem>);
recipes.addShaped(<harvestcraft:saucepanitem>, [[<ore:stickWood>, <ore:gtceHardHammers>, <ore:screwIron>],[<ore:stickIron>, <minecraft:bucket>, <ore:plateIron>], [<ore:stickWood>, <ore:gtceFiles>, <ore:plateIron>]]);

recipes.remove(<harvestcraft:skilletitem>);
recipes.addShaped(<harvestcraft:skilletitem>, [[<ore:stickWood>, <ore:stickIron>, <ore:gtceHardHammers>],[<ore:stickIron>, <minecraft:bucket>, <ore:plateIron>], [<ore:stickWood>, <ore:gtceFiles>, <ore:plateIron>]]);

recipes.remove(<harvestcraft:juiceritem>);
recipes.addShaped(<harvestcraft:juiceritem>, [[<ore:plateStainlessSteel>, <ore:gtceHardHammers>, <ore:plateStainlessSteel>],[<ore:plateStainlessSteel>, <ore:toolHeadDrillStainlessSteel>, <ore:plateStainlessSteel>], [<ore:boltStainlessSteel>, <ore:plateStainlessSteel>, <ore:boltStainlessSteel>]]);

recipes.remove(<harvestcraft:mortarandpestleitem>);
recipes.addShaped(<harvestcraft:mortarandpestleitem>, [[<ore:gtceHardHammers>, <ore:stickStainlessSteel>, <ore:gtceFiles>],[<ore:stoneSmooth>, <ore:stickStainlessSteel>, <ore:stoneSmooth>], [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]]);

recipes.remove(<harvestcraft:mixingbowlitem>);
recipes.addShaped(<harvestcraft:mixingbowlitem>, [[<ore:screwIron>, <ore:gtceFiles>, <ore:screwIron>],[<ore:plateIron>, <minecraft:bucket>, <ore:plateIron>], [<ore:screwIron>, <ore:gtceHardHammers>, <ore:screwIron>]]);

recipes.addShapeless(<gregtech:meta_dust:1615>, [<harvestcraft:flouritem>]);
recipes.replaceAllOccurences(<harvestcraft:flouritem>, <gregtech:meta_dust:1615>);

recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:70>, [<gregtechfoodoption:gtfo_meta_item:86>,<ore:foodCheese>,<ore:foodCheese>,<ore:foodCheese>,<ore:foodCheese>,<ore:foodCheese>,<ore:foodCheese>,<ore:foodCheese>]);

recipes.remove(<gregtechfoodoption:gtfo_meta_item:89>);
recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:89>, [<gregtechfoodoption:gtfo_meta_item:84>,<ore:foodCheese>,<ore:foodCheese>,<ore:foodCheese>]);

recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:59>, [<gregtechfoodoption:gtfo_meta_item:99>,<ore:foodCheese>,<ore:foodCheese>,<ore:foodCheese>]);

recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:61>, [<gregtechfoodoption:gtfo_meta_item:99>,<ore:dustMeat>]);

recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:60>, [<gregtechfoodoption:gtfo_meta_item:99>, <ore:cropOlive>, <ore:foodCheese>, <gregtechfoodoption:gtfo_meta_item:75>]);
recipes.addShapeless(<harvestcraft:heartybreakfastitem>, [<ore:foodFriedegg>, <ore:listAllporkcooked>, <ore:foodPotatocakes>, <ore:foodToast>, <ore:foodApplejuice>]);

recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:97> * 4, [<ore:toolKnife>, <ore:blockCheese>]);

recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:71>, [<gregtechfoodoption:gtfo_meta_item:86>, <ore:listAllporkcooked>, <ore:listAllporkcooked>]);

recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:72>, [<gregtechfoodoption:gtfo_meta_item:86>, <ore:listAllbeefcooked>, <ore:listAllbeefcooked>]);

recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:69>, [<gregtechfoodoption:gtfo_meta_item:86>, <gregtechfoodoption:gtfo_meta_item:81>, <gregtechfoodoption:gtfo_meta_item:81>, <gregtechfoodoption:gtfo_meta_item:80>, <gregtechfoodoption:gtfo_meta_item:79>, <gregtechfoodoption:gtfo_meta_item:79>, <gregtechfoodoption:gtfo_meta_item:81>, <gregtechfoodoption:gtfo_meta_item:79>]);

recipes.remove(<gregtechfoodoption:gtfo_meta_item:65>);
recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:65>, [<gregtechfoodoption:gtfo_meta_item:85>, <gregtechfoodoption:gtfo_meta_item:81>, <gregtechfoodoption:gtfo_meta_item:81>, <gregtechfoodoption:gtfo_meta_item:80>, <gregtechfoodoption:gtfo_meta_item:79>, <gregtechfoodoption:gtfo_meta_item:79>]);

recipes.remove(<gregtechfoodoption:gtfo_meta_item:88>);
recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:88>, [<gregtechfoodoption:gtfo_meta_item:84>, <gregtechfoodoption:gtfo_meta_item:81>, <gregtechfoodoption:gtfo_meta_item:80>, <gregtechfoodoption:gtfo_meta_item:79>]);

recipes.remove(<gregtechfoodoption:gtfo_meta_item:66>);
recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:66>, [<gregtechfoodoption:gtfo_meta_item:85>,<ore:foodCheese>,<ore:foodCheese>,<ore:foodCheese>,<ore:foodCheese>,<ore:foodCheese>]);

recipes.remove(<gregtechfoodoption:gtfo_meta_item:68>);
recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:68>, [<gregtechfoodoption:gtfo_meta_item:85>,<ore:listAllbeefcooked>]);

recipes.remove(<gregtechfoodoption:gtfo_meta_item:67>);
recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:67>, [<gregtechfoodoption:gtfo_meta_item:85>,<ore:listAllporkcooked>]);

recipes.remove(<gregtechfoodoption:gtfo_meta_item:50>);
recipes.addShapeless(<gregtechfoodoption:gtfo_meta_item:50>, [<ore:listAllwater>,<ore:dustWheat>]);

recipes.addShapeless(<gregtech:meta_dust:1616> * 2, [<ore:toolMortar>,<gregtechfoodoption:gtfo_meta_item:134>]);

recipes.remove(<cookingforblockheads:cooking_table>);
recipes.addShaped(<cookingforblockheads:cooking_table>, [[<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],[<ore:plateCrudeSteel>, <cookingforblockheads:recipe_book:2>, <ore:plateCrudeSteel>], [<ore:plateCrudeSteel>, <ore:plateCrudeSteel>, <ore:plateCrudeSteel>]]);

recipes.remove(<cookingforblockheads:fridge>);
recipes.addShaped(<cookingforblockheads:fridge>, [[<ore:plateCrudeSteel>, <ore:plateIron>, <ore:plateCrudeSteel>],[<ore:plateIron>, <minecraft:chest>, <ore:plateIron>], [<ore:plateCrudeSteel>, <ore:plateIron>, <ore:plateCrudeSteel>]]);

recipes.remove(<cookingforblockheads:toaster>);
recipes.addShaped(<cookingforblockheads:toaster>, [[<ore:plateStone>, <minecraft:iron_trapdoor>, <ore:plateStone>],[<ore:plateIron>, <ore:springIron>, <ore:plateIron>], [<ore:plateIron>, <minecraft:magma>, <ore:plateIron>]]);

recipes.remove(<cookingforblockheads:oven>);
recipes.addShaped(<cookingforblockheads:oven>, [[<ore:plateCrudeSteel>, <ore:plateCrudeSteel>, <ore:plateCrudeSteel>],[<ore:plateIron>, <ore:craftingFurnace>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

recipes.remove(<cookingforblockheads:sink>);
//recipes.addShaped(<cookingforblockheads:sink>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],[<ore:plateCrudeSteel>, <avaritia:singularity:2>, <ore:plateCrudeSteel>], [<ore:plateCrudeSteel>, <ore:plateCrudeSteel>, <ore:plateCrudeSteel>]]);

recipes.remove(<cookingforblockheads:corner>);
recipes.addShaped(<cookingforblockheads:corner>, [[<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],[<ore:plateCrudeSteel>, <ore:plateCrudeSteel>, <ore:plateCrudeSteel>], [<ore:plateCrudeSteel>, <ore:plateCrudeSteel>, <ore:plateCrudeSteel>]]);

recipes.remove(<cookingforblockheads:cabinet>);
recipes.addShaped(<cookingforblockheads:cabinet>, [[<ore:plateCrudeSteel>, <ore:plateCrudeSteel>, <ore:plateCrudeSteel>],[<ore:plateCrudeSteel>, <minecraft:chest>, <ore:plateCrudeSteel>], [null, null, null]]);

recipes.remove(<cookingforblockheads:counter>);
recipes.addShaped(<cookingforblockheads:counter>, [[<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],[<ore:plateCrudeSteel>, <minecraft:chest>, <ore:plateCrudeSteel>], [<ore:plateCrudeSteel>, <ore:plateCrudeSteel>, <ore:plateCrudeSteel>]]);

recipes.remove(<minecraft:bread>);
furnace.addRecipe(<harvestcraft:toastitem>, <ore:bread>);
recipes.removeByRecipeName("harvestcraft:freshwateritem_listallwater");