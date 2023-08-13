import mods.gregtech.recipe.RecipeMap;
// 铱粉 * 1
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustIridiumChloride> * 4], [<liquid:hydrogen> * 3000]).remove();
// 铱粉 * 1
<recipemap:large_chemical_reactor>.findRecipe(30, [<metaitem:dustIridiumChloride> * 4], [<liquid:hydrogen> * 3000]).remove();

val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:16> * 1,<gregtech:meta_dust:437>*4)
    .fluidInputs(<liquid:hydrogen> * 1000)
	.outputs(<gregtech:meta_dust:50>*1,<gregtech:meta_dust:346>*3)
	.fluidOutputs(<liquid:hydrochloric_acid>*1000)
    .duration(20)
    .EUt(512)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:2060>*3)
    .fluidInputs(<liquid:ircl3>*144)
	.outputs(<gregtech:meta_dust:437>)
	.fluidOutputs(<liquid:ammonia>*3*576)	
    .duration(20)
    .EUt(512)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<contenttweaker:iro2_item>)
    .fluidInputs(<liquid:hydrochloric_acid>*1000)
	.fluidOutputs(<liquid:ircl3>*144)
    .duration(20)
    .EUt(512)
    .buildAndRegister();
