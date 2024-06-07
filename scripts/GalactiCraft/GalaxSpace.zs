import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
val implosion_compressor = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
	
//这里魔改的是星系的致密板 致密-》致密+4TNT即可
//产物
var logs as IItemStack[] = [
<galacticraftcore:basic_item:6>,
<galacticraftcore:basic_item:7>,
<galacticraftcore:basic_item:8>,
<galacticraftcore:basic_item:9>,
<galacticraftcore:basic_item:10>,
<galacticraftcore:basic_item:11>,
<galacticraftplanets:item_basic_asteroids:6>,
<galaxyspace:compressed_plates>,
<galaxyspace:compressed_plates:1>,
<galaxyspace:compressed_plates:2>,
<galaxyspace:compressed_plates:3>,
<galacticraftcore:heavy_plating>,
<galacticraftplanets:item_basic_mars:3>,
<galacticraftplanets:item_basic_asteroids:5>,
<galaxyspace:hdp>,
<galaxyspace:hdp:1>,
<galaxyspace:hdp:2>,
<galacticraftcore:item_basic_moon:1>,
<galacticraftplanets:item_basic_mars:5>
];  //定义一个IItemStack类数组
//var局部变量的 `as 类型名` 可以省略，但定义数组时决不能省略，中括号表示数组。
//原料
var planks as IItemStack[] = [
<gregtech:meta_plate_dense:25>,
<gregtech:meta_plate_dense:112>,
<gregtech:meta_plate_dense:2>,
<gregtech:meta_plate_dense:324>,
<gregtech:meta_plate_dense:260>,
<gregtech:meta_plate_dense:51>,
<gregtech:meta_plate_dense:113>,
<gregtech:meta_plate_dense:271>,
<gregtech:meta_plate_dense:23>,
<gregtech:meta_plate_dense:59>,
<gregtech:meta_plate_dense:69>,
<gtqtspace:gtqt_space_meta_item_1:20>,
<gtqtspace:gtqt_space_meta_item_1:21>,
<gtqtspace:gtqt_space_meta_item_1:22>,
<gtqtspace:gtqt_space_meta_item_1:23>,
<gtqtspace:gtqt_space_meta_item_1:24>,
<gtqtspace:gtqt_space_meta_item_1:25>,
<gregtech:meta_plate_dense:18500>,
<gregtech:meta_plate_dense:18501>
]; //两个数组要一一对应
for i, log in logs {   
//一个for循环，准确的说是foreach循环，遍历数组，i为一个变量，表示循环了几次（程序员数数是从0开始数的，第一次循环i=0，第二次为1....）
//log in logs 表示在logs数组中循环，并把log变量用来存储logs数组的每一个物品。
    var plank = planks[i]; //将 plank 赋值为 planks 中 i 对应的物品
	implosion_compressor.recipeBuilder()
		.inputs(plank)
		.property("explosives", <gregtech:powderbarrel> * 8)
		.outputs(log,<gregtech:meta_dust_small:275>)
		.duration(20)
		.EUt(120)
		.buildAndRegister();
		
    implosion_compressor.recipeBuilder()
		.inputs(plank)
		.property("explosives", <minecraft:tnt> * 4)
		.outputs(log,<gregtech:meta_dust_small:275>)
		.duration(20)
		.EUt(120)
		.buildAndRegister();

	implosion_compressor.recipeBuilder()
		.inputs(plank)
		.property("explosives", <gregtech:meta_item_1:460> * 2)
		.outputs(log,<gregtech:meta_dust_small:275>)
		.duration(20)
		.EUt(120)
		.buildAndRegister();

}