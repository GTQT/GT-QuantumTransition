import mods.gregtech.recipe.RecipeMap;
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32050>*6)
    .fluidOutputs(<liquid:helium>*36)
    .chancedOutput(<gregtech:meta_dust_impure:51>, 1000, 100)
    .chancedOutput(<gregtech:meta_dust_impure:41>, 1200, 100)
	.chancedOutput(<gregtech:meta_dust_impure:100>, 1400, 100)
	.chancedOutput(<gregtech:meta_dust_impure:55>, 1600, 100)
	.chancedOutput(<gregtech:meta_dust_impure:322>, 1200, 100)
	.chancedOutput(<gregtech:meta_dust_impure:25>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<galacticraftcore:basic_block_moon:3>)
    .outputs(<gregtech:meta_dust:32050>)
	.chancedOutput(<gregtech:meta_dust_impure:100>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:55>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:322>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<galacticraftcore:basic_block_moon:5>)
    .outputs(<gregtech:meta_dust:32050>)
	.chancedOutput(<gregtech:meta_dust_impure:100>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:55>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:322>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32042>)
	.chancedOutput(<thaumcraft:crystal_vitium>, 1000, 100)
	.chancedOutput(<thaumcraft:crystal_aer>, 1000, 100)
	.chancedOutput(<thaumcraft:crystal_ignis>, 1000, 100)
	.chancedOutput(<thaumcraft:crystal_aqua>, 1000, 100)
	.chancedOutput(<thaumcraft:crystal_terra>, 1000, 100)
	.chancedOutput(<thaumcraft:crystal_ordo>, 1000, 100)
    .duration(100)
    .EUt(32)
    .buildAndRegister();
	
// 氦 * 120
<recipemap:centrifuge>.findRecipe(20, [<metaitem:dustEndstone>], null).remove();
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:1603>*6)
    .fluidOutputs(<liquid:helium>*36)
	.chancedOutput(<gregtech:meta_dust_impure:113>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust_small:330>, 1000, 50)
    .chancedOutput(<gregtech:meta_dust_small:364>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust:55>, 1600, 100)
	.chancedOutput(<gregtech:meta_dust:322>, 1200, 100)
	.chancedOutput(<gregtech:meta_dust:25>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
//zeluo
centrifuge.recipeBuilder() 
    .fluidInputs(<liquid:star_inside_material>*1000)
	.chancedOutput(<gregtech:meta_dust:32160>, 5000, 50)
	.chancedOutput(<gregtech:meta_dust:32160>, 5000, 50)
    .duration(1200)
    .EUt(1966080)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .fluidInputs(<liquid:star_outside_material>*1000)
    .fluidOutputs(<liquid:plasma.helium>*600,<liquid:proton_flow>*400)
	.chancedOutput(<gregtech:meta_dust:32160>, 1000, 50)
    .duration(1200)
    .EUt(1966080)
    .buildAndRegister();

//火星
macerator.recipeBuilder() 
    .inputs(<galacticraftplanets:mars:9>)
	.chancedOutput(<gregtech:meta_dust:32051>, 1200, 100)
	.chancedOutput(<gregtech:meta_dust:32051>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();

macerator.recipeBuilder() 
    .inputs(<galacticraftplanets:mars:4>)
	.chancedOutput(<gregtech:meta_dust:32051>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust:32051>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<galacticraftplanets:mars:5>)
	.chancedOutput(<gregtech:meta_dust:32051>, 1600, 100)
	.chancedOutput(<gregtech:meta_dust:32051>, 1600, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
macerator.recipeBuilder() 
    .inputs(<galacticraftplanets:mars:6>)
	.chancedOutput(<gregtech:meta_dust:32051>, 2000, 100)
	.chancedOutput(<gregtech:meta_dust:32051>, 2000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32051>*6)
	.chancedOutput(<gregtech:meta_dust_impure:69>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust_impure:327>, 1000, 50)
    .chancedOutput(<gregtech:meta_dust_impure:4>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust_impure:103>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:315>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:109>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
// 小堆石英岩粉 * 1
<recipemap:centrifuge>.findRecipe(120, [<metaitem:dustStone>], null).remove();
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:1599>*6)
	.chancedOutput(<gregtech:meta_dust_tiny:316>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust_tiny:2018> * 2, 1000, 50)
    .chancedOutput(<gregtech:meta_dust_small:340>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust_small:417>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_tiny:304>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_tiny:32036>, 50, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32052>*6)
	.chancedOutput(<gregtech:meta_dust_impure:69>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust_impure:327>, 1000, 50)
    .chancedOutput(<gregtech:meta_dust_impure:4>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust_impure:103>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:315>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:109>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32053>*6)
	.chancedOutput(<gregtech:meta_dust_impure:4>, 1000, 50)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:315>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust_impure:81>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:124>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:284>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();	
	
//安山
// 石棉粉 * 4
<recipemap:centrifuge>.findRecipe(30, [<metaitem:dustAndesite> * 5], null).remove();
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:2039>*6)
	.chancedOutput(<gregtech:meta_dust:253>*4, 10000, 50)
	.chancedOutput(<gregtech:meta_dust:313> * 2, 10000, 50)
    .chancedOutput(<gregtech:meta_dust:6>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust:6>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust:6>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_gem:268>)
	.chancedOutput(<thaumcraft:quicksilver>, 8000, 500)
	.chancedOutput(<thaumcraft:quicksilver>, 8000, 500)
    .chancedOutput(<gregtech:meta_dust:103>, 1000, 50)
	.chancedOutput(<gregtech:meta_dust:103>, 1000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<minecraft:quartz>)
	.chancedOutput(<thaumcraft:nugget:9>, 8000, 500)
	.chancedOutput(<thaumcraft:nugget:9>, 8000, 500)
    .chancedOutput(<thaumcraft:nugget:9>, 1000, 500)
	.chancedOutput(<thaumcraft:nugget:9>, 1000, 100)
    .duration(100)
    .EUt(32)
    .buildAndRegister();
	
//木星
macerator.recipeBuilder() 
    .inputs(<extraplanets:jupiter:*>)
	.chancedOutput(<gregtech:meta_dust:32056>, 1200, 100)
	.chancedOutput(<gregtech:meta_dust:32056>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32056>*6)
	.chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:80>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:81>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:285>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();

//木星1
macerator.recipeBuilder() 
    .inputs(<extraplanets:io:*>)
	.chancedOutput(<gregtech:meta_dust:32073>, 1200, 100)
	.chancedOutput(<gregtech:meta_dust:32073>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32073>*6)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:80>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:81>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:285>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
//木星2
macerator.recipeBuilder() 
    .inputs(<extraplanets:europa:*>)
	.chancedOutput(<gregtech:meta_dust:32062>, 1200, 100)
	.chancedOutput(<gregtech:meta_dust:32062>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32062>*6)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:80>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:81>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:285>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
//木星3
macerator.recipeBuilder() 
    .inputs(<extraplanets:ganymede:*>)
	.chancedOutput(<gregtech:meta_dust:32068>, 1200, 100)
	.chancedOutput(<gregtech:meta_dust:32068>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32068>*6)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:80>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:81>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:285>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
//木星4
macerator.recipeBuilder() 
    .inputs(<extraplanets:callisto:*>)
	.chancedOutput(<gregtech:meta_dust:32069>, 1200, 100)
	.chancedOutput(<gregtech:meta_dust:32069>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32069>*6)
	.chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:32036>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:80>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:81>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:285>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
//火卫
macerator.recipeBuilder() 
    .inputs(<extraplanets:deimos:*>)
    .outputs(<gregtech:meta_dust:32072>)
    .duration(60)
    .EUt(2)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32072>*6)
	.chancedOutput(<gregtech:meta_dust_impure:6>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:103>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:100>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:315>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:4>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:382>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();

macerator.recipeBuilder() 
    .inputs(<extraplanets:phobos:*>)
    .outputs(<gregtech:meta_dust:32071>)
    .duration(60)
    .EUt(2)
    .buildAndRegister();	

centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32071>*6)
	.chancedOutput(<gregtech:meta_dust_impure:6>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:103>, 100, 50)
    .chancedOutput(<gregtech:meta_dust_impure:100>, 100, 50)
	.chancedOutput(<gregtech:meta_dust_impure:315>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:4>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust_impure:382>, 1000, 100)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32161>*6)
	.chancedOutput(<avaritia:resource:2>, 100, 50)
	.chancedOutput(<avaritia:resource:2>, 100, 50)
    .chancedOutput(<avaritia:resource:2>, 100, 50)
	.chancedOutput(<gregtech:meta_dust:81>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust:81>, 1000, 100)
	.chancedOutput(<gregtech:meta_dust:81>, 1000, 100)
    .duration(100)
    .EUt(122088)
    .buildAndRegister();
	
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32180>*3)
    .outputs(<gregtech:meta_dust:6>)
    .outputs(<gregtech:meta_dust:103>)
	.outputs(<gregtech:meta_dust:51>)
    .duration(100)
    .EUt(8)
    .buildAndRegister();