import mods.gregtech.recipe.RecipeMap;
chemical_reactor.recipeBuilder()
    .inputs(<gregtech:meta_ingot:32036> * 6)
    .fluidInputs([<liquid:nitric_acid>*250])
    .outputs(<gregtech:meta_dust:32037>*1)
    .fluidOutputs([<liquid:nitrogen_dioxide>*500])
    .EUt(30)
    .duration(300)
    .buildAndRegister();

chemical_reactor.recipeBuilder()
    .inputs(<gregtech:meta_dust:32037>*4)
    .fluidInputs([<liquid:hydrochloric_acid>*125])
    .outputs(<gregtech:meta_dust:32038>*4)
    .fluidOutputs([<liquid:goldcl>*125])
    .EUt(30)
    .duration(300)
    .buildAndRegister();

chemical_reactor.recipeBuilder()
    .fluidInputs([<liquid:goldcl>*250])
    .notConsumable(<gregtech:meta_dust:32039> * 16)
    .outputs(<metaitem:dustGold>*2,<gregtech:meta_dust:364>)
    .fluidOutputs([<liquid:chlorine>*1000,<liquid:water>*250])
    .EUt(30)
    .duration(300)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_dust:32038>*4)
    .outputs(<metaitem:dustCopper>*3)
    .chancedOutput(<metaitem:dustSilver>, 2500, 0)
    .chancedOutput(<metaitem:dustLead>, 2500, 0)
    .chancedOutput(<metaitem:dustIron>, 2500, 0)
    .chancedOutput(<metaitem:dustNickel>, 2500, 0)
    .EUt(30)
    .duration(300)
    .buildAndRegister();
	
	