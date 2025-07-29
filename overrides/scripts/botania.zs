import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.thaumcraft.Infusion;

//待移除数组
var items as IItemStack[] = [
    <botania:elementiumboots>,
    <botania:elementiumlegs>,
    <botania:elementiumchest>,
    <botania:elementiumhelm>,
    <botania:elementiumsword>,
    <botania:elementiumshears>,
    <botania:elementiumpick>,
    <botania:elementiumaxe>,
    <botania:elementiumshovel>,
    <botania:manasteelboots>,
    <botania:manasteellegs>,
    <botania:manasteelchest>,
    <botania:manasteelhelm>,
    <botania:manasteelsword>,
    <botania:manasteelshears>,
    <botania:manasteelpick>,
    <botania:manasteelaxe>,
    <botania:manasteelshovel>,
    <botania:terrasteelhelm>,
    <botania:terrasteelchest>,
    <botania:terrasteellegs>,
    <botania:terrasteelboots>,
	<botania:terrasteelhelmreveal>
];


//循环移除
for i, item in items {
    recipes.remove(item);
}
//植物魔法系列护甲与工具
recipes.addShaped(<botania:elementiumboots>, [[<ore:plateElvenElementium>, null, <ore:plateElvenElementium>], [<ore:plateElvenElementium>, <ore:gtceHardHammers>, <ore:plateElvenElementium>]]);
recipes.addShaped(<botania:elementiumlegs>, [[<ore:plateElvenElementium>, <ore:plateElvenElementium>, <ore:plateElvenElementium>],[<ore:plateElvenElementium>, <ore:gtceHardHammers>, <ore:plateElvenElementium>], [<ore:plateElvenElementium>, null, <ore:plateElvenElementium>]]);
recipes.addShaped(<botania:elementiumchest>, [[<ore:plateElvenElementium>, <ore:gtceHardHammers>, <ore:plateElvenElementium>],[<ore:plateElvenElementium>, <ore:plateElvenElementium>, <ore:plateElvenElementium>], [<ore:plateElvenElementium>, <ore:plateElvenElementium>, <ore:plateElvenElementium>]]);
recipes.addShaped(<botania:elementiumhelm>, [[<ore:plateElvenElementium>, <ore:plateElvenElementium>, <ore:plateElvenElementium>],[<ore:plateElvenElementium>, <ore:gtceHardHammers>, <ore:plateElvenElementium>]]);
recipes.addShaped(<botania:manasteelboots>, [[<ore:plateManasteel>, null, <ore:plateManasteel>], [<ore:plateManasteel>, <ore:gtceHardHammers>, <ore:plateManasteel>]]);
recipes.addShaped(<botania:manasteellegs>, [[<ore:plateManasteel>, <ore:plateManasteel>, <ore:plateManasteel>],[<ore:plateManasteel>, <ore:gtceHardHammers>, <ore:plateManasteel>], [<ore:plateManasteel>, null, <ore:plateManasteel>]]);
recipes.addShaped(<botania:manasteelhelm>, [[<ore:plateManasteel>, <ore:plateManasteel>, <ore:plateManasteel>],[<ore:plateManasteel>, <ore:gtceHardHammers>, <ore:plateManasteel>]]);
recipes.addShaped(<botania:manasteelchest>, [[<ore:plateManasteel>, <ore:gtceHardHammers>, <ore:plateManasteel>],[<ore:plateManasteel>, <ore:plateManasteel>, <ore:plateManasteel>], [<ore:plateManasteel>, <ore:plateManasteel>, <ore:plateManasteel>]]);
recipes.addShaped(<botania:manasteelshears>, [[<ore:plateManasteel>, <ore:screwManasteel>, <ore:plateManasteel>],[<ore:gtceHardHammers>, <ore:ringManasteel>, <ore:gtceFiles>], [<ore:livingwoodTwig>, <ore:gtceScrewdrivers>, <ore:livingwoodTwig>]]);
recipes.addShaped(<botania:manasteelshovel>, [[<ore:gtceFiles>, <ore:plateManasteel>, <ore:gtceHardHammers>],[null, <ore:livingwoodTwig>, null], [null, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:manasteelaxe>, [[<ore:plateManasteel>, <ore:ingotManasteel>, <ore:gtceHardHammers>],[<ore:plateManasteel>, <ore:livingwoodTwig>, null], [<ore:gtceFiles>, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:manasteelpick>, [[<ore:ingotManasteel>, <ore:plateManasteel>, <ore:plateManasteel>],[<ore:gtceFiles>, <ore:livingwoodTwig>, <ore:gtceHardHammers>], [null, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:manasteelsword>, [[null, <ore:plateManasteel>, null],[<ore:gtceFiles>, <ore:plateManasteel>, <ore:gtceHardHammers>], [null, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:elementiumshears>, [[<ore:plateElvenElementium>, <ore:screwElvenElementium>, <ore:plateElvenElementium>],[<ore:gtceHardHammers>, <ore:ringElvenElementium>, <ore:gtceFiles>], [<ore:dreamwoodTwig>, <ore:gtceScrewdrivers>, <ore:dreamwoodTwig>]]);
recipes.addShaped(<botania:elementiumshovel>, [[<ore:gtceFiles>, <ore:plateElvenElementium>, <ore:gtceHardHammers>],[null, <ore:livingwoodTwig>, null], [null, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:elementiumaxe>, [[<ore:plateElvenElementium>, <ore:ingotElvenElementium>, <ore:gtceHardHammers>],[<ore:plateElvenElementium>, <ore:livingwoodTwig>, null], [<ore:gtceFiles>, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:elementiumpick>, [[<ore:ingotElvenElementium>, <ore:plateElvenElementium>, <ore:plateElvenElementium>],[<ore:gtceFiles>, <ore:livingwoodTwig>, <ore:gtceHardHammers>], [null, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:elementiumsword>, [[null, <ore:plateElvenElementium>, null],[<ore:gtceFiles>, <ore:plateElvenElementium>, <ore:gtceHardHammers>], [null, <ore:livingwoodTwig>, null]]);
Infusion.registerRecipe("terrasteelhelm", "", <botania:terrasteelhelm>, 8,
    [<aspect:herba> * 50, <aspect:terra> * 35, <aspect:praemunio> * 20, <aspect:motus> * 15, <aspect:sensus> * 15], <botania:manasteelhelm>,
    [<thaumcraft:salis_mundus>, <ore:runeSpringB>, <thaumcraft:salis_mundus>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>]);
Infusion.registerRecipe("terrasteelchest", "", <botania:terrasteelchest>, 8,
    [<aspect:herba> * 65, <aspect:terra> * 50, <aspect:praemunio> * 40, <aspect:motus> * 40], <botania:manasteelchest>,
    [<thaumcraft:salis_mundus>, <ore:runeSummerB>, <thaumcraft:salis_mundus>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>]);
Infusion.registerRecipe("terrasteellegs", "", <botania:terrasteellegs>, 8,
    [<aspect:herba> * 60, <aspect:terra> * 40, <aspect:praemunio> * 35, <aspect:motus> * 30], <botania:manasteellegs>,
    [<thaumcraft:salis_mundus>, <ore:runeAutumnB>, <thaumcraft:salis_mundus>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>]);
Infusion.registerRecipe("terrasteelboots", "", <botania:terrasteelboots>, 8,
    [<aspect:herba> * 40, <aspect:terra> * 25, <aspect:praemunio> * 15, <aspect:motus> * 15], <botania:manasteelboots>,
    [<thaumcraft:salis_mundus>, <ore:runeWinterB>, <thaumcraft:salis_mundus>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>]);
Infusion.registerRecipe("<botania:terrasteelhelmreveal>", "", <botania:terrasteelhelmreveal>, 8,
    [<aspect:herba> * 50, <aspect:terra> * 35, <aspect:praemunio> * 20, <aspect:motus> * 15, <aspect:sensus> * 15], <botania:manasteelhelmreveal>,
    [<thaumcraft:salis_mundus>, <ore:runeSpringB>, <thaumcraft:salis_mundus>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>]);
