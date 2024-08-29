//凝胶
furnace.addRecipe(<minecraft:slime_ball>, <thebetweenlands:sap_ball>);

furnace.addRecipe(<biomesoplenty:seaweed>,<gregtech:meta_dust:20076>);
//天然碱
furnace.remove(<gregtech:meta_dust:2031>);
furnace.addRecipe(<gregtech:meta_dust:2031>, <ore:oreTrona>);
furnace.addRecipe(<gregtech:meta_dust:2031>, <ore:oreNetherrackTrona>);
furnace.addRecipe(<gregtech:meta_dust:2031>, <ore:oreEndstoneTrona>);
//红石
furnace.remove(<minecraft:redstone>);
furnace.addRecipe(<minecraft:redstone>, <ore:oreRedstone>);
furnace.addRecipe(<minecraft:redstone>, <ore:oreNetherrackRedstone>);
furnace.addRecipe(<minecraft:redstone>, <ore:oreEndstoneRedstone>);
//青金石
furnace.remove(<minecraft:dye:4>);
furnace.addRecipe(<minecraft:dye:4>, <ore:oreLapis>);
furnace.addRecipe(<minecraft:dye:4>, <ore:oreNetherrackLapis>);
furnace.addRecipe(<minecraft:dye:4>, <ore:oreEndstoneLapis>);
//蓝晶石
furnace.remove(<gregtech:meta_gem:289>);
furnace.addRecipe(<gregtech:meta_gem:289>, <ore:oreLazurite>);
furnace.addRecipe(<gregtech:meta_gem:289>, <ore:oreNetherrackLazurite>);
furnace.addRecipe(<gregtech:meta_gem:289>, <ore:oreEndstoneLazurite>);
//方钠石
furnace.remove(<gregtech:meta_gem:316>);
furnace.addRecipe(<gregtech:meta_gem:316>, <ore:oreSodalite>);
furnace.addRecipe(<gregtech:meta_gem:316>, <ore:oreNetherrackSodalite>);
furnace.addRecipe(<gregtech:meta_gem:316>, <ore:oreEndstoneSodalite>);
//赛特斯
furnace.remove(<gregtech:meta_gem:214>);
furnace.addRecipe(<gregtech:meta_gem:214>, <ore:oreCertusQuartz>);
furnace.addRecipe(<gregtech:meta_gem:214>, <ore:oreNetherrackCertusQuartz>);
furnace.addRecipe(<gregtech:meta_gem:214>, <ore:oreEndstoneCertusQuartz>);


furnace.remove(<minecraft:coal:1>);
furnace.remove(<projectred-core:resource_item:103>);
//钻石做燃料
furnace.setFuel(<minecraft:diamond>, 102400);
furnace.setFuel(<minecraft:diamond_block>, 1024000);

furnace.remove(<minecraft:glass>);