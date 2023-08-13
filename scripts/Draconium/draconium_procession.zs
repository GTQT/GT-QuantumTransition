import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val fluid_heater = mods.gregtech.recipe.RecipeMap.getByName("fluid_heater");
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val vacuum_freezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val electric_blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("electric_blast_furnace");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
//龙心处理
// starry_universe_cultivation_cabin.recipeBuilder()
//     .inputs(<draconicevolution:dragon_heart>)
//     .fluidInputs([<liquid:sterilized_growth_medium> * 8000])
//     .outputs([
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64
//     ])
//     .fluidOutputs([<liquid:dragon_blood> * 128000])
//     .circuit(4)
//     .EUt(7680)
//     .duration(12000)
//     .buildAndRegister();

//龙息溶液
mixer.recipeBuilder()
    .inputs(<minecraft:dragon_breath> * 4)
    .fluidInputs([<liquid:water> * 1000])
    .fluidOutputs([<liquid:dragon_breath_solution> * 2000])
    .EUt(7680)
    .duration(160)
    .buildAndRegister();

//活性龙组织混合液
mixer.recipeBuilder()
    .inputs(<contenttweaker:dragon_cell> * 8)
    .fluidInputs([<liquid:dragon_breath_solution> * 1000,<liquid:dragon_blood> * 1000])
    .fluidOutputs([<liquid:activated_dragon_tissue_mixture> * 1000])
    .EUt(7680)
    .duration(40)
    .buildAndRegister();

//突变龙组织混合液
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustTinyPlutonium241>)
    .fluidInputs([<liquid:radon> *250,<liquid:activated_dragon_tissue_mixture> * 1000])
    .fluidOutputs([<liquid:mutated_dragon_tissue_mixture>*2000])
    .EUt(7680)
    .duration(250)
    .buildAndRegister();

//突变龙组织混合液(激发态)
fluid_heater.recipeBuilder()
    .fluidInputs([<liquid:mutated_dragon_tissue_mixture> * 1500])
    .fluidOutputs([<liquid:excited_mutated_dragon_tissue_mixture> * 750])
    .EUt(7680)
    .circuit(1)
    .duration(200)
    .buildAndRegister();

//氢氧化超能硅岩
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustNaquadria>,<ore:dustSodiumHydroxide>*9)
    .outputs(<gregtech:meta_dust:32197>*7,<gregtech:meta_dust:101>*3)
    .EUt(480)
    .duration(480)
    .buildAndRegister();

//超能硅岩酸
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustNaquadriaHydroxide>*3,<ore:dustTinyPotassiumDichromate>)
    .fluidInputs([<liquid:hydrogen_peroxide>*1000,<liquid:aqua_regia>*4000])
    .fluidOutputs([<liquid:water>*1000,<liquid:nquadriaic_acid>*1000])
    .EUt(30720)
    .duration(90)
    .buildAndRegister();

//酸性龙素溶液
chemical_bath.recipeBuilder()
    .inputs(<ore:dustDragonEssence>*15)
    .fluidInputs([<liquid:nquadriaic_acid>*5000])
    .fluidOutputs([<liquid:acidic_draconium_solution>*5000])
    .outputs(<metaitem:dustEnderEye>*5)
    .duration(1400)
    .EUt(480)
    .buildAndRegister();

//富集&枯竭龙素溶液
centrifuge.recipeBuilder()
    .fluidInputs([<liquid:acidic_draconium_solution>*5000])
    .notConsumable(<gregtech:meta_item_1:207>*2)
    .fluidOutputs([<liquid:enriched_draconium_solution>*750,<liquid:depleted_draconium_solution>*4250])
    .duration(300)
    .EUt(7680)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs([<liquid:depleted_draconium_solution>*2000])
    .notConsumable(<gregtech:meta_item_1:207>*2)
    .fluidOutputs([<liquid:nquadriaic_acid>*1900])
    .outputs([<gregtech:meta_dust:32182>*4,<gregtech:meta_dust:329>*8,<gregtech:meta_dust:372>*5,<gregtech:meta_dust:280>*4])
    .chancedOutput(<gregtech:meta_dust:3105>,5000,250)
    .duration(420)
    .EUt(1920)
    .buildAndRegister();

distillery.recipeBuilder()
    .fluidInputs([<liquid:enriched_draconium_solution>*1000])
    .fluidOutputs([<liquid:nquadriaic_acid>*800])
    .circuit(1)
    .outputs(<gregtech:meta_dust:32194>*6)
    .duration(800)
    .EUt(480)
    .buildAndRegister();

//龙素粉
autoclave.recipeBuilder()
    .fluidInputs([<liquid:excited_mutated_dragon_tissue_mixture> * 250])
    .inputs([<gregtech:meta_dust:32194>*3,<ore:dustCalcium>])
    .outputs([<gregtech:meta_dust:32192>,<gregtech:meta_dust:346>*3])
    .duration(40)
    .EUt(7680)
    .buildAndRegister();

//充能龙素粉
chemical_bath.recipeBuilder()
    .fluidInputs([<liquid:plasma.helium>*7200])
    .fluidOutputs([<liquid:helium>*6000])
    .inputs([<ore:dustDraconium>*36])
    .outputs([<gregtech:meta_dust:32195>*36])
    .duration(1050)
    .EUt(122880)
    .buildAndRegister();

//觉醒龙素粉
mixer.recipeBuilder()
    .fluidInputs([<liquid:americium>*576,<liquid:xenon>*4000])
    .inputs([<ore:dustEmpoweredDraconium>*8,<ore:dustNaquadria>,<ore:dustRutheniumTriniumAmericiumNeutronate>,<ore:dustVibrantAlloy>,<ore:dustEnergeticAlloy>])
    .outputs([<gregtech:meta_dust:32193>*4])
    .duration(320)
    .EUt(122880)
    .buildAndRegister();


