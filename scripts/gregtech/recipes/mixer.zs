import mods.gregtech.recipe.RecipeMap;
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:2007> * 9)
    .fluidInputs(<liquid:distilled_water> * 1000)
    .fluidOutputs(<liquid:coolant> * 1000)
    .duration(100)
    .EUt(16)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<ore:dustNetherQuartz>* 4,<gregtech:meta_dust:277> * 1,<appliedenergistics2:material:1> * 3)
    .outputs(<appliedenergistics2:material:7> * 8)
    .duration(100)
    .EUt(32)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<biomesoplenty:fleshchunk>*2)
    .outputs(<gregtechfoodoption:gtfo_meta_item:134>)
    .duration(100)
    .EUt(32)
    .buildAndRegister();
	
//mixer.recipeBuilder() 
//    .inputs(<gregtech:meta_dust:116> * 1,<gregtech:meta_dust:117> * 3)
//   .outputs(<ic2:nuclear> * 1)
//   .duration(100)
//    .EUt(32)
//    .buildAndRegister();
	
//mixer.recipeBuilder() 
//    .inputs(<gregtech:meta_dust:82> * 3,<gregtech:meta_dust:117> * 1)
//    .outputs(<ic2:nuclear:3> * 1)
//    .duration(100)
//    .EUt(32)
//    .buildAndRegister();
	
mixer.recipeBuilder() 
    .fluidInputs(<liquid:liquid_oxygen> * 1000)
    .fluidOutputs(<liquid:liquidoxygen> * 1000)
    .duration(40)
    .EUt(32)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .fluidInputs(<liquid:liquidoxygen> * 1000)
    .fluidOutputs(<liquid:liquid_oxygen> * 1000)
    .duration(40)
    .EUt(32)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:1598> * 1,<gregtech:meta_dust:377> * 3) 
    .fluidInputs(<liquid:water> * 1000)
	.fluidOutputs(<liquid:rare_earth_hydroxides_solution> * 1000)
    .duration(120)
    .EUt(480)
	.circuit(2) 
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:98> * 3,<gregtech:meta_dust:39>* 2,<gregtech:meta_dust:100> * 1) 
	.outputs(<gregtech:meta_dust:25076> * 6)
    .duration(120)
    .EUt(960)
	.circuit(2) 
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:125> * 4,<gregtech:meta_dust:130>* 3,<gregtech:meta_dust:33> * 2,<gregtech:meta_dust:129>) 
	.outputs(<gregtech:meta_dust:431> * 10)
    .duration(9600)
    .EUt(122880)
	.circuit(4) 
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:2010>*2,<forestry:mulch>* 6,<minecraft:dye:15>*4) 
	.outputs(<botania:fertilizer> * 8)
    .duration(120)
    .EUt(960)
	.circuit(2) 
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:99> * 2,<gregtech:meta_dust:271> * 5,<appliedenergistics2:material:8>*2) 
	.outputs(<threng:material:1> * 5)
    .duration(120)
    .EUt(960)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32033>*2) 
	.fluidInputs(<liquid:epoxy> * 288)
	.outputs(<gregtech:meta_dust:32034>)
    .duration(120)
    .EUt(32)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:1001>*6,<minecraft:dye:15>) 
	.outputs(<forestry:fertilizer_compound>*6)
    .duration(120)
    .EUt(16)
    .buildAndRegister();

mixer.recipeBuilder() 
	.fluidOutputs(<liquid:sodium_hydroxide_solution> * 1000)
    .inputs(<gregtech:meta_dust:377>)
	.fluidInputs(<liquid:water> * 1000)
    .duration(100)
	.circuit(10)
    .EUt(128)
    .buildAndRegister();

mixer.recipeBuilder() 
	.fluidOutputs(<liquid:potassium_fluoride_solution> * 1000)
    .inputs(<nuclearcraft:compound:4>)
    .fluidInputs(<liquid:water> * 1000)
    .duration(100)
	.circuit(10)
    .EUt(128)
    .buildAndRegister();

mixer.recipeBuilder() 
	.fluidOutputs(<liquid:sodium_fluoride_solution> * 1000)
    .inputs(<nuclearcraft:compound:3>)
	.fluidInputs(<liquid:water> * 1000)
    .duration(100)
	.circuit(10)
    .EUt(128)
    .buildAndRegister();

mixer.recipeBuilder() 
	.fluidOutputs(<liquid:calcium_sulfate_solution> * 1000)
    .inputs(<nuclearcraft:compound:0>)
	.fluidInputs(<liquid:water> * 1000)
    .duration(100)
	.circuit(10)
    .EUt(128)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:324>*4,<gregtech:meta_dust:122>) 
	.outputs(<gregtech:meta_dust:32046>*5)
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:341>,<gregtech:meta_dust:99>) 
	.outputs(<gregtech:meta_dust:3621>*2)
    .duration(120)
	.circuit(10)
    .EUt(16)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<appliedenergistics2:material:8>*16,<gregtech:meta_dust:3558>) 
	.outputs(<appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200})*16)
    .duration(120)
	.circuit(11)
    .EUt(16)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:214>*16,<gregtech:meta_dust:3558>) 
	.outputs(<appliedenergistics2:crystal_seed>.withTag({progress: 0})*16)
    .duration(120)
	.circuit(11)
    .EUt(16)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:210>)
    .fluidInputs(<liquid:edot>*576,<liquid:polystyrene_sulfonate>*1000)
	.fluidOutputs(<liquid:pedot_pss>*576)
    .duration(1200)
    .EUt(1966080)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:209>)
    .fluidInputs(<liquid:edot>*576,<liquid:polystyrene_sulfonate>*1000)
	.fluidOutputs(<liquid:pedot_pss>*144)
    .duration(1200)
    .EUt(1966080)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32354>) 
	.fluidInputs(<liquid:water>*1000)
	.fluidOutputs(<liquid:chunjingchulixitu>*1000)
    .duration(120)
	.circuit(11)
    .EUt(16)
    .buildAndRegister();