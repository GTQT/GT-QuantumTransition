import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:262>*3)
    .fluidInputs(<liquid:fujihaidai>*144)
    .fluidOutputs(<liquid:fujidian>*144)
    .duration(20)
    .EUt(32)
    .buildAndRegister();

chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:377>*3)
    .fluidInputs(<liquid:fujidian>*144,<liquid:benzene>*72)
    .fluidOutputs(<liquid:iodine>*144)
    .duration(20)
    .EUt(32)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .fluidInputs(<liquid:iodine>*288)
    .chancedOutput(<gregtech:meta_dust:32041>, 8000, 100)
    .chancedOutput(<gregtech:meta_dust:32041>, 4000, 100)
    .chancedOutput(<gregtech:meta_dust:32041>, 2000, 100)
    .duration(100)
    .EUt(128)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<contenttweaker:haidai_item>*3,<gregtech:meta_dust:3519>)
    .fluidInputs(<liquid:hydrochloric_acid>*144)
    .fluidOutputs(<liquid:fujihaidai>*144)
    .duration(20)
    .EUt(32)
    .buildAndRegister();

chemical_reactor.recipeBuilder() 
    .notConsumable(<gregtech:meta_dust:3519>)
    .fluidInputs(<liquid:fujihaidai>*144,<liquid:carbon_tetrachloride>*144)
    .fluidOutputs(<liquid:fujidian>*144)
    .duration(20)
    .EUt(32)
    .buildAndRegister();

chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:377>)
    .fluidInputs(<liquid:nitric_acid>*144)
    .outputs(<gregtech:meta_dust:3519>)
    .duration(20)
    .EUt(16)
    .buildAndRegister();