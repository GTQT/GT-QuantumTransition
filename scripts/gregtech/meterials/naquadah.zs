import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val large_chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val electric_blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("electric_blast_furnace");
// 三氟化钛粉 * 4
<recipemap:large_chemical_reactor>.findRecipe(30720, [<metaitem:dustNaquadah> * 6], [<liquid:fluoroantimonic_acid> * 1000]).remove();
large_chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:ethylhexanol>*2000,<liquid:bio.ethanol>*4000,<liquid:phosphoric_acid>*1000)
	.inputs(<ore:dustSodiumHydroxide>*16)
    .fluidOutputs(<liquid:pwlq> * 1000)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<ore:dustNaquadahMix>)
	.fluidInputs(<liquid:fluoroantimonic_acid>*1500)
    .outputs(<gregtech:meta_dust:439>*2) 
	.fluidOutputs(<liquid:complicated_light_naquadah>*1000)
	.circuit(1) 
    .property("temperature", 4500)
    .duration(200)
    .EUt(7960)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<ore:dustSodiumHydroxide>*27)
	.fluidInputs(<liquid:complicated_light_naquadah>*10000)
	.fluidOutputs(<liquid:complicated_light_enriched_naquadah>*9000)
    .outputs(<gregtech:meta_dust:4>*15,<gregtech:meta_dust:32211>*70)
    .duration(100)
    .EUt(128)
    .buildAndRegister();

large_chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:complicated_light_enriched_naquadah>*36000,<liquid:pwlq>*4000)
    .fluidOutputs(<liquid:complicated_heavy_enriched_naquadah>*30000,<liquid:feifu>*10000)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
	
large_chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:feifu>*1500)
	.inputs(<gregtech:meta_dust:360>*40)
    .fluidOutputs(<liquid:feiye>*1000)
	.outputs(<gregtech:meta_dust:3536>*60)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
//dn	
large_chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:complicated_heavy_enriched_naquadah>*3000)
    .fluidOutputs(<liquid:clear_naquadah>*2000)
	.outputs(<gregtech:meta_dust:32214>*1,<gregtech:meta_dust:32215>*2)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
	
large_chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:clear_naquadah>*5000)
	.inputs(<ore:dustSodiumHydroxide>*27)
    .fluidOutputs(<liquid:pwlq>*1000,<liquid:clear_enriched_naquadah>*3000)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
	
autoclave.recipeBuilder() 
	.fluidInputs(<liquid:clear_enriched_naquadah>*2000)
    .outputs(<gregtech:meta_dust:32104>*1)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillation_tower");
distillation_tower.recipeBuilder() 
    .fluidInputs(<liquid:complicated_heavy_enriched_naquadah>* 1000)
    .fluidOutputs(<liquid:complicated_enriched_naquadah>*100)
    .duration(1200)
    .EUt(7960)
    .buildAndRegister();
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");	
electrolyzer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32104>*5)
    .outputs(<gregtech:meta_dust:124>*2)
	.fluidOutputs(<liquid:oxygen>*3000)
    .duration(120)
    .EUt(120)
    .buildAndRegister();
	
	
large_chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:pwlq>*1000,<liquid:sulfuric_acid>*18000)
	.inputs(<gregtech:meta_dust:32215>*4)
    .fluidOutputs(<liquid:gaochunfujiguiy>*4000,<liquid:feiye>*1000)
	.outputs(<gregtech:meta_dust:3005>,<gregtech:meta_dust:32104>)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
	
large_chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:gaochunfujiguiy>*2500)
	.inputs(<ore:dustSodiumHydroxide>*15)
    .fluidOutputs(<liquid:pwlq>*625)
	.outputs(<gregtech:meta_dust:32214>)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
//dn
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32214>*8)
    .outputs(<gregtech:meta_dust:32217>*70,<gregtech:meta_dust:32218>*1)
	.fluidOutputs(<liquid:impure_enriched_naquadah_solution>*8000)
    .duration(100)
    .EUt(128)
    .buildAndRegister();

// 磷化铟粉 * 1
<recipemap:centrifuge>.findRecipe(1920, null, [<liquid:impure_naquadria_solution> * 2000]).remove();
large_chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32218>*3) 
    .fluidInputs(<liquid:pwlq>*500,<liquid:water>*3000)	
	.fluidOutputs(<liquid:impure_naquadria_solution>*3500)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
	
large_chemical_reactor.recipeBuilder()  
    .fluidInputs(<liquid:impure_naquadria_solution>*7000)	
	.outputs(<gregtech:meta_dust:125>)
	.fluidOutputs(<liquid:naquadria_solution>*5400,<liquid:diluted_sulfuric_acid>*12000,<liquid:pwlq>*1000)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
	
large_chemical_reactor.recipeBuilder()  
    .fluidInputs(<liquid:complicated_enriched_naquadah>*1000,<liquid:phosphoric_acid>*2000)	
	.outputs(<gregtech:meta_dust:32219>*2)
	.chancedOutput(<gregtech:meta_dust:441>, 5000, 200)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
	
large_chemical_reactor.recipeBuilder()  
    .inputs(<gregtech:meta_dust:32219>*10)
    .fluidInputs(<liquid:sulfuric_acid>*30000)	
	.outputs(<gregtech:meta_dust:387>*1)
    .fluidOutputs(<liquid:gaochunchaonengguiyan>*9000)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
	
//dongn
large_chemical_reactor.recipeBuilder()  
    .fluidInputs(<liquid:gaochunchaonengguiyan>*30000)	
	.outputs(<gregtech:meta_dust:448>*44,<gregtech:meta_dust:32218>*6)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .fluidInputs(<liquid:feiye>*10000)	
    .fluidOutputs(<liquid:salt_water>*3000,<liquid:phenol>*2000,<liquid:diluted_hydrochloric_acid>*5000)
	.outputs(<gregtech:meta_dust:22>*3)
    .duration(100)
    .EUt(128)
    .buildAndRegister();