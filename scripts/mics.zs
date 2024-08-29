//#MARKER REMOVE

recipes.removeByMod("avaritia");
recipes.removeByMod("draconicevolution");

recipes.remove(<travelersbackpack:backpack_tank>);
recipes.remove(<appliedenergistics2:energy_cell>);

recipes.addShaped(<thebetweenlands:bl_bucket>, [[null, <ore:stickWood>, null], [<ore:dustClay>, null, <ore:dustClay>], [<ore:plankWood>, <ore:dustClay>, <ore:plankWood>]]);
recipes.addShaped(<travelersbackpack:backpack_tank>, [[<ore:leather>, <ore:ingotIron>, <ore:leather>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:leather>, <ore:ingotIron>, <ore:leather>]]);
recipes.addShaped(<thebetweenlands:sulfur_torch> * 4, [[<ore:dustSulfur>], [<ore:stickWood>]]);
recipes.addShaped(<thebetweenlands:bl_bucket>.withTag({Fluid: {}}), [[null, <ore:stickWood>, null], [<ore:dustClay>, null, <ore:dustClay>], [<ore:plankWood>, <ore:dustClay>, <ore:plankWood>]]);
