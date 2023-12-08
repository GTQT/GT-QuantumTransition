import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");

chemical_reactor.recipeBuilder()
    .inputs([<ore:dustSulfur> * 4])
    .fluidInputs([<liquid:coal_gas> * 1000])
    .fluidOutputs([<liquid:carbon_disulfide> * 2000])
    .EUt(16)
    .duration(200)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs([<liquid:carbon_disulfide> * 2000])
    .outputs([<gregtech:meta_dust:103> * 4])
    .fluidOutputs([<liquid:coal_gas> * 1000])
    .EUt(16)
    .duration(200)
    .buildAndRegister();

chemical_reactor.recipeBuilder()
    .inputs([<ore:dustSodium>])
    .fluidInputs([<liquid:bio.ethanol> * 1000])
    .outputs([<gregtech:meta_dust:32268> * 9])
    .EUt(120)
    .duration(400)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs([<ore:dustSodiumEthylate> * 9])
    .outputs([<gregtech:meta_dust:101>])
    .fluidOutputs([<liquid:bio.ethanol> * 1000])
    .EUt(120)
    .duration(400)
    .buildAndRegister();

chemical_reactor.recipeBuilder()
    .inputs([<ore:dustSodiumEthylate> * 9])
    .fluidInputs([<liquid:bio.ethanol> * 1000,
                  <liquid:carbon_disulfide> * 1000])
    .outputs([<gregtech:meta_dust:32269> * 12])
    .fluidOutputs([<liquid:water> * 1000])
    .EUt(120)
    .duration(400)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs([<ore:dustSodiumEthylxanthate> * 12])
    .outputs([<gregtech:meta_dust:32268> * 9])
    .fluidOutputs([<liquid:bio.ethanol> * 1000,
                   <liquid:carbon_disulfide> * 1000])
    .EUt(120)
    .duration(400)
    .buildAndRegister();

chemical_reactor.recipeBuilder()
    .inputs([<ore:dustPotassium>])
    .fluidInputs([<liquid:bio.ethanol> * 1000])
    .outputs([<gregtech:meta_dust:32270> * 9])
    .EUt(120)
    .duration(400)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs([<ore:dustPotassiumEthylate> * 9])
    .outputs([<gregtech:meta_dust:83>])
    .fluidOutputs([<liquid:bio.ethanol> * 1000])
    .EUt(120)
    .duration(400)
    .buildAndRegister();

chemical_reactor.recipeBuilder()
    .inputs([<ore:dustPotassiumEthylate> * 9])
    .fluidInputs([<liquid:bio.ethanol> * 1000,
                  <liquid:carbon_disulfide> * 1000])
    .outputs([<gregtech:meta_dust:32271> * 12])
    .fluidOutputs([<liquid:water> * 1000])
    .EUt(120)
    .duration(400)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs([<ore:dustPotassiumEthylxanthate> * 12])
    .outputs([<gregtech:meta_dust:32270> * 9])
    .fluidOutputs([<liquid:bio.ethanol> * 1000,
                   <liquid:carbon_disulfide> * 1000])
    .EUt(120)
    .duration(400)
    .buildAndRegister();