import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.world.IFacing;
val plasma_cvd_recipes = mods.gregtech.recipe.RecipeMap.getByName("plasma_cvd_recipes");
plasma_cvd_recipes.recipeBuilder() 
    .notConsumable(<gregtech:meta_plate:89>)
	.fluidInputs(<liquid:plasma.nitrogen>*10000,<liquid:cycloparaphenylene>*7000,<liquid:acetylene>*3000)
    .fluidOutputs(<liquid:ammonia>*10000)
	.outputs(<gregtech:meta_ingot:25046>)
	.EUt(1966080)
    .duration(1200) 
    .buildAndRegister(); 

plasma_cvd_recipes.recipeBuilder() 
    .inputs(<ore:dustPlutonium241>)
	.fluidInputs(<liquid:hydrogen>*30000,<liquid:plasma.argon>*3000)
    .fluidOutputs(<liquid:argon>*3000)
	.outputs(<gregtech:meta_dust:32149>)
	.EUt(1966080)
    .duration(1200) 
    .buildAndRegister(); 
	
plasma_cvd_recipes.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_2012>*16)
	.fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*16000,<liquid:plasma.argon>*3000)
	.outputs(<draconicevolution:fusion_crafting_core>)
	.EUt(1966080)
    .duration(12000) 
    .buildAndRegister(); 
	
plasma_cvd_recipes.recipeBuilder()
    .notConsumable(<gregtech:meta_plate:89>)
    .inputs(<gregtech:meta_plate:15057>)
    .fluidInputs(<liquid:plasma.nickel>*576)
	.outputs(<gcys:meta_item_1:424>*16)
    .duration(160).EUt(122880).buildAndRegister();
	
plasma_cvd_recipes.recipeBuilder()
    .notConsumable(<gregtech:meta_plate:89>)
	.notConsumable(<contenttweaker:protonated_fullerene_sieving_matrix>)
    .fluidInputs(<liquid:yuchulixitu>*1000)
	.fluidOutputs(<liquid:chunjingchulixitu>*1000)
    .duration(160).EUt(491520).buildAndRegister();
	
plasma_cvd_recipes.recipeBuilder() 
    .notConsumable(<gregtech:meta_plate:89>)
	.inputs(<gregtech:meta_dust:32368>,<gregtech:meta_dust:41>)
	.outputs(<gregtech:meta_dust:32369>)
    .duration(1600)
    .EUt(491520)
    .buildAndRegister();
	
plasma_cvd_recipes.recipeBuilder()
    .notConsumable(<gregtech:meta_plate:89>)
	.notConsumable(<contenttweaker:protonated_fullerene_sieving_matrix>)
    .fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*1000)
    .outputs(<avaritia:resource:2>)
    .duration(160).EUt(491520).buildAndRegister();
	
plasma_cvd_recipes.recipeBuilder()
    .notConsumable(<gregtech:meta_plate:89>)
	.notConsumable(<contenttweaker:protonated_fullerene_sieving_matrix>)
	.inputs(<gregtech:meta_stick:89>*1)
    .fluidInputs(<liquid:plutonium_phosphide>*1000)
    .fluidOutputs(<liquid:lai>*144)
    .duration(160).EUt(491520).buildAndRegister();
	
plasma_cvd_recipes.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:211>)
	.notConsumable(<qmd:waste_spallation:9>*32)
    .fluidInputs(<liquid:dragon_essence>*576,<liquid:positronium>*10)
    .fluidOutputs(<liquid:sunnarium>*100)
    .duration(1600).EUt(491520*16).buildAndRegister();
	
plasma_cvd_recipes.recipeBuilder()
    .notConsumable(<gregtech:meta_plate:89>)
	.notConsumable(<contenttweaker:protonated_fullerene_sieving_matrix>)
	.inputs(<avaritia:resource>)
    .fluidInputs(<liquid:dragon_essence>*576)
    .fluidOutputs(<liquid:crystal_matrix>*36)
    .duration(1600).EUt(491520*16).buildAndRegister();
	
plasma_cvd_recipes.recipeBuilder()
    .notConsumable(<gregtech:meta_plate:89>)
	.notConsumable(<contenttweaker:protonated_fullerene_sieving_matrix>)
	.inputs(<gregtech:meta_dust:32>)
    .fluidInputs(<liquid:zblan_glass>*1584)
    .outputs(<gregtech:meta_dust:6021>)
    .duration(1600).EUt(491520*16).buildAndRegister();
	
plasma_cvd_recipes.recipeBuilder()
    .notConsumable(<gregtech:meta_plate:89>)
	.notConsumable(<contenttweaker:protonated_fullerene_sieving_matrix>)
	.inputs(<gregtech:meta_dust:84>)
    .fluidInputs(<liquid:zblan_glass>*1584)
    .outputs(<gregtech:meta_dust:6022>)
    .duration(16000).EUt(491520*16).buildAndRegister();
	
plasma_cvd_recipes.recipeBuilder()
    .notConsumable(<gregtech:meta_plate:89>)
	.notConsumable(<contenttweaker:protonated_fullerene_sieving_matrix>)
	.inputs(<gregtech:meta_dust:432>)
    .fluidInputs(<liquid:positronium>*1584)
    .outputs(<gregtech:meta_dust:32160>)
    .duration(16000).EUt(491520*64).buildAndRegister();
	
plasma_cvd_recipes.recipeBuilder()
    .notConsumable(<gregtech:meta_plate:89>)
	.inputs(<gregtech:meta_dust:6023>*5,<gregtech:meta_dust:3605>*2)
    .outputs(<gregtech:meta_dust:32239>)
    .duration(16000).EUt(491520*16).buildAndRegister();