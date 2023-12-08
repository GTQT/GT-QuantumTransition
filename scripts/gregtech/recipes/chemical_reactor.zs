import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val large_chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:hot_coolant> * 125)
    .fluidOutputs(<liquid:coolant> * 125)
    .duration(20)
    .EUt(16)
    .buildAndRegister();

chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:99> * 1)
    .fluidInputs(<liquid:hydrochloric_acid> * 1000)
    .fluidOutputs(<liquid:silicon_tetrachloride> * 1000,<liquid:hydrogen> * 1000)
    .duration(20)
	.circuit(1)
    .EUt(32)
    .buildAndRegister();

chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:silicon_tetrachloride> * 1000,<liquid:hydrogen> * 1000)
	.outputs(<contenttweaker:silicon_item> * 1)
    .fluidOutputs(<liquid:hydrochloric_acid> * 1000)
    .duration(20)
    .EUt(32)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:ammonia> * 1000,<liquid:chlorobenzene>*1000)
    .notConsumable(<gregtech:meta_dust:371>*16)
    .fluidOutputs(<liquid:aniline> * 1000)
    .duration(600)
    .EUt(122880)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:blaze> * 1000,<liquid:lava>*1000)
    .fluidOutputs(<liquid:fire_water> * 1000)
    .duration(600)
    .EUt(480)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:3519>*5)
    .fluidInputs(<liquid:sulfuric_acid>*3000)
    .fluidOutputs(<liquid:nitric_acid>* 3000,<liquid:sodium_bisulfate>*3024)
    .duration(200)
    .EUt(32)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtechfoodoption:gtfo_meta_item:50>)
    .fluidInputs(<liquid:sulfuric_acid>*144)
	.outputs(<buildinggadgets:constructionpaste>)
    .duration(20)
    .EUt(16)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:83> * 2,<gregtech:meta_dust:15052> * 4)
    .fluidInputs(<liquid:acetone> * 400)
	.chancedOutput(<gregtech:meta_dust:15045>, 3000, 500)
	.chancedOutput(<gregtech:meta_dust:15045>, 2000, 500)
    .duration(200)
    .EUt(7600)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:crystalized> * 2880,<liquid:epoxy>*144)
	.fluidOutputs(<liquid:menrilresin> * 288)
    .duration(20)
    .EUt(480)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:581>,<gregtech:meta_dust:354>*16)
    .fluidInputs(<liquid:naquadria> * 100)
    .outputs(<gcys:meta_item_1:356>)
	.property("cleanroom", "cleanroom")
    .duration(1200)
    .EUt(32768)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gcys:meta_item_1:356>,<gregtech:meta_dust:354>*32)
    .fluidInputs(<liquid:ruthenium_trinium_americium_neutronate> * 100)
    .outputs(<gcys:meta_item_1:357>)
    .duration(1200)
	.property("cleanroom", "cleanroom")
    .EUt(131072)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gcys:meta_item_1:357>,<gregtech:meta_dust:354>*64)
    .fluidInputs(<liquid:naquadah_enriched> * 100)
    .outputs(<gcys:meta_item_1:358>)
	.property("cleanroom", "cleanroom")
    .duration(1200)
    .EUt(8388608)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:286>,<nuclearcraft:compound:3>)
    .fluidInputs(<liquid:gtfo_sodium_carbonate_solution>*144)
	.outputs(<gregtech:meta_dust:32035>*2)
    .duration(20)
    .EUt(16)
    .buildAndRegister();
	
	large_chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:83>,<gregtech:meta_dust:103>)
    .fluidInputs(<liquid:sulfuric_acid>*144)
	.outputs(<gregtech:meta_dust:32039>*1)
	.circuit(1)
    .duration(20)
    .EUt(16)
    .buildAndRegister();

chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:diborane>*250,<liquid:water>*1500)
    .fluidOutputs(<liquid:boric_acid>*500,<liquid:hydrogen>*1500)
    .duration(20)
    .EUt(16)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:boric_acid>*500,<liquid:ammonia>*500)
    .fluidOutputs(<liquid:boron_nitride_solution>*333,<liquid:water>*1000)
    .duration(20)
    .EUt(16)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:methane_fluid>*500)
    .fluidOutputs(<liquid:methane>*5000)
    .duration(20)
    .EUt(16)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:glowstone_fluid>*500)
    .fluidOutputs(<liquid:glowstone>*500)
    .duration(20)
    .EUt(16)
    .buildAndRegister();
	
// 聚二甲基硅氧烷粉 * 3
<recipemap:chemical_reactor>.findRecipe(96, [<metaitem:dustSilicon>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:water> * 1000, <liquid:chlorine> * 4000, <liquid:methane> * 2000]).remove();
// 聚二甲基硅氧烷粉 * 3
<recipemap:large_chemical_reactor>.findRecipe(96, [<metaitem:dustSilicon>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:water> * 1000, <liquid:chlorine> * 4000, <liquid:methane> * 2000]).remove();

chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:water> * 1000, <liquid:chlorine> * 4000, <liquid:methane> * 2000)
	.inputs(<metaitem:dustSilicon>)
	.outputs(<gregtech:meta_dust:1011>*3)
    .fluidOutputs(<liquid:hydrochloric_acid>*2000,<liquid:diluted_hydrochloric_acid>*2000)
    .duration(480)
    .EUt(96)
	.circuit(5)
    .buildAndRegister();
	
// 乙酸 * 1000
<recipemap:chemical_reactor>.findRecipe(30, null, [<liquid:carbon_monoxide> * 1000, <liquid:methanol> * 1000]).remove();
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:carbon_monoxide> * 1000, <liquid:methanol> * 1000)
    .fluidOutputs(<liquid:acetic_acid>*1000)
    .duration(900)
    .EUt(30)
	.circuit(5)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:chlorine>* 4000)
	.inputs(<gregtech:meta_dust:32349>,<gregtech:meta_dust:18>*2)
	.outputs(<gregtech:meta_dust:32350>)
    .fluidOutputs(<liquid:carbon_monoxide>*2000)
    .duration(900)
    .EUt(960)
    .buildAndRegister();

chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:phosphorus_trichloride>*1000)
	.inputs(<gregtech:meta_dust:32149>)
	.outputs(<gregtech:meta_dust:3591>)
    .duration(900)
    .EUt(960)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:hydrofluoric_acid>*1000)
	.inputs(<contenttweaker:poor_thorium_rod>)
	.fluidOutputs(<liquid:depleted_leu_233_fluoride>*144)
    .duration(900)
    .EUt(960)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:hydrofluoric_acid>*2000)
	.inputs(<contenttweaker:poor_thorium_rod_dual>)
	.fluidOutputs(<liquid:depleted_leu_233_fluoride>*288,<liquid:tungsten_steel>*144)
    .duration(900)
    .EUt(960)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:hydrofluoric_acid>*4000)
	.inputs(<contenttweaker:poor_thorium_rod_quad>)
	.fluidOutputs(<liquid:depleted_leu_233_fluoride>*576,<liquid:tungsten_steel>*288)
    .duration(900)
    .EUt(960)
    .buildAndRegister();
	
// 丁醇 * 1000
<recipemap:chemical_reactor>.findRecipe(480, null, [<liquid:butyraldehyde> * 1000, <liquid:hydrogen> * 2000]).remove();
// 丁醇 * 1000
<recipemap:large_chemical_reactor>.findRecipe(480, null, [<liquid:butyraldehyde> * 1000, <liquid:hydrogen> * 2000]).remove();
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:butyraldehyde>*1000)
	.fluidOutputs(<liquid:butanol>*1000)
	.circuit(1)
    .duration(1000)
    .EUt(480)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
	.fluidInputs(<liquid:dense_hydrazine_mixture_fuel>*2000)
    .fluidOutputs(<liquid:fuelgc>*1000)
    .duration(30)
    .EUt(16)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
	.fluidInputs(<liquid:methylhydrazine_nitrate_rocket_fuel>*1000)
    .fluidOutputs(<liquid:fuelgc>*1000)
    .duration(30)
    .EUt(16)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
	.fluidInputs(<liquid:rocket_fuel>*500)
    .fluidOutputs(<liquid:fuelgc>*1000)
    .duration(30)
    .EUt(16)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
	.fluidInputs(<liquid:lithium>*500,<liquid:fluorine>*500)
    .fluidOutputs(<liquid:lif>*1000)
    .duration(300)
    .EUt(7680)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
	.fluidInputs(<liquid:beryllium>*500,<liquid:fluorine>*500)
    .fluidOutputs(<liquid:bef2>*1000)
    .duration(300)
    .EUt(7680)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
	.fluidInputs(<liquid:lif>*500,<liquid:bef2>*500)
    .fluidOutputs(<liquid:flibe>*1000)
    .duration(300)
    .EUt(7680)
    .buildAndRegister();
	
//chemical_reactor.recipeBuilder() 
//    .inputs(<ic2:nuclear:11>) 
//	.fluidInputs(<liquid:fluorine>*500)
//   .fluidOutputs(<liquid:depleted_leu_235_fluoride>*500)
//    .duration(300)
//    .EUt(7680)
//    .buildAndRegister();
	
//chemical_reactor.recipeBuilder() 
//    .inputs(<ic2:nuclear:12>) 
//	.fluidInputs(<liquid:fluorine>*1000)
//    .fluidOutputs(<liquid:depleted_leu_235_fluoride>*1000)
//    .duration(300)
//    .EUt(7680)
//    .buildAndRegister();
	
//chemical_reactor.recipeBuilder() 
//    .inputs(<ic2:nuclear:13>) 
//	.fluidInputs(<liquid:fluorine>*2000)
//    .fluidOutputs(<liquid:depleted_leu_235_fluoride>*2000)
//    .duration(300)
//    .EUt(7680)
//    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:hydrogen>*4000,<liquid:butyraldehyde>*2000)
    .fluidOutputs(<liquid:ethylhexanol>*1000,<liquid:water>*1000)
    .duration(200)
	.circuit(2)
    .EUt(480)
    .buildAndRegister();

chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:101>*1)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:hydrogen>*1000,<liquid:sodium_hydroxide_solution>*1000)
    .duration(20)
	.circuit(10)
    .EUt(30)
    .buildAndRegister();

chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:plastic>*1000,<liquid:chlorine>*2000)
    .fluidOutputs(<liquid:polyvinyl_chloride>*1000,<liquid:hydrochloric_acid>*1000)
    .duration(20)
    .EUt(30)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:hydrochloric_acid>*2000)
    .fluidOutputs(<liquid:water>*5000,<liquid:boric_acid>*4000)
	.outputs(<gregtech:meta_dust:312>*4)
	.inputs(<ore:dustBorax>*23)
    .duration(150)
    .EUt(480)
    .buildAndRegister();

large_chemical_reactor.recipeBuilder() 
    .inputs(<ore:listAllfishfresh>*32)
    .fluidInputs(<liquid:chloroform>*4000,<liquid:methanol>*4000)
    .fluidOutputs(<liquid:gtfo_stearin>*3200,<liquid:gtfo_sludge>*12000,<liquid:chlorine>*12000)
	.outputs(<gregtech:meta_dust:1616>*40,<minecraft:dye:15>*16)
    .duration(20)
    .EUt(30)
    .buildAndRegister();

chemical_reactor.recipeBuilder() 
    .inputs(<minecraft:magma_cream>)
    .fluidInputs(<liquid:fire_water>*1000)
    .fluidOutputs(<liquid:pyrotheum>*1000)
    .duration(20)
    .EUt(30)
    .buildAndRegister();

