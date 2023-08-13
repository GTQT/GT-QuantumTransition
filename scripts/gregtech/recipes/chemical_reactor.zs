import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val large_chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:ic2hot_coolant> * 125)
    .fluidOutputs(<liquid:ic2coolant> * 125)
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
	.inputs(<contenttweaker:zroo_item>,<gregtech:meta_dust:18>*2)
	.outputs(<contenttweaker:zrcl_item>)
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