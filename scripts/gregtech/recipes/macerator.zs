import mods.gregtech.recipe.RecipeMap;
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
macerator.recipeBuilder() 
    .inputs(<appliedenergistics2:material:7> * 1)
    .outputs(<appliedenergistics2:material:8> * 1)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
// 粘土粉 * 4
<recipemap:macerator>.findRecipe(2, [<minecraft:stained_hardened_clay:0>], null).remove();
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:0> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:1> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();

macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:2> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();

macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:3> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();

macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:4> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();

macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:5> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:6> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:7> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:8> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:9> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:10> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:11> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:12> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:13> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:14> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<minecraft:stained_hardened_clay:15> * 1)
    .outputs(<gregtech:meta_dust:2063> * 4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<galacticraftcore:basic_block_moon:4>)
    .outputs(<gregtech:meta_dust:32050>)
	.chancedOutput(<gregtech:meta_dust:32050>, 1000, 10)
    .duration(160)
    .EUt(128)
    .buildAndRegister();
	
//
macerator.recipeBuilder() 
    .inputs(<thaumcraft:crystal_aer>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}))
	.chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), 1000, 10)
    .duration(60)
    .EUt(2)
    .buildAndRegister();

macerator.recipeBuilder() 
    .inputs(<thaumcraft:crystal_ignis>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}))
	.chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), 1000, 10)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<thaumcraft:crystal_aqua>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}))
	.chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), 1000, 10)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<thaumcraft:crystal_ordo>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}))
	.chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), 1000, 10)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<thaumcraft:crystal_vitium>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]}))
	.chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), 1000, 10)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<thaumcraft:crystal_terra>)
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}))
	.chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), 1000, 10)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
// 铝粒 * 3
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:gemRuby>], null).remove();
// 铝粒 * 3
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:gemSapphire>], null).remove();
// 铝粒 * 3
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:gemGreenSapphire>], null).remove();
// 铝粒 * 3
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:dustRuby>], null).remove();
// 铝粒 * 3
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:dustSapphire>], null).remove();
// 铝粒 * 3
<recipemap:electric_blast_furnace>.findRecipe(100, [<metaitem:dustGreenSapphire>], null).remove();


macerator.recipeBuilder() 
    .inputs(<galacticraftplanets:venus>)
    .outputs(<gregtech:meta_dust:32052>)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<galacticraftplanets:venus:1>)
    .outputs(<gregtech:meta_dust:32052>)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<galacticraftplanets:venus:2>)
    .outputs(<gregtech:meta_dust:32052>)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<galacticraftplanets:venus_rock_scorched>)
    .outputs(<gregtech:meta_dust:32052>)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	

	
macerator.recipeBuilder() 
    .inputs(<galacticraftplanets:asteroids_block>)
    .outputs(<gregtech:meta_dust:32053>)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<contenttweaker:poor_naquadah_rod>)
	.chancedOutput(<gregtech:meta_dust:124>, 1000, 10)
    .outputs(<gregtech:meta_dust:55>*2)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<contenttweaker:poor_naquadah_rod_dual>)
	.chancedOutput(<gregtech:meta_dust:124>, 2000, 40)
    .outputs(<gregtech:meta_dust:55>*4)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<contenttweaker:poor_naquadah_rod_quad>)
	.chancedOutput(<gregtech:meta_dust:124>, 4000, 80)
    .outputs(<gregtech:meta_dust:55>*8)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	