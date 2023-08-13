import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder()
    .inputs(<gregtech:meta_foil:25>*4,<gregtech:meta_plate:32012>)
	.outputs(<projectred-core:resource_item>*4)
	.duration(100).EUt(120).buildAndRegister();