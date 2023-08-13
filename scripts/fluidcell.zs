import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
// 单元 - 空 * 1
<recipemap:extruder>.findRecipe(30, [<metaitem:ingotTin> * 2, <metaitem:shape.extruder.cell>], null).remove();
// 单元 - 空 * 1
<recipemap:extruder>.findRecipe(30, [<metaitem:ingotSteel>, <metaitem:shape.extruder.cell>], null).remove();
// 单元 - 空 * 16
<recipemap:extruder>.findRecipe(30, [<metaitem:ingotPolybenzimidazole>, <metaitem:shape.extruder.cell>], null).remove();
// 单元 - 空 * 4
<recipemap:extruder>.findRecipe(30, [<metaitem:ingotPolytetrafluoroethylene>, <metaitem:shape.extruder.cell>], null).remove();
// 单元 - 空 * 1
<recipemap:bender>.findRecipe(7, [<metaitem:plateSteel>, <metaitem:circuit.integrated>.withTag({Configuration: 12})], null).remove();
// 单元 - 空 * 16
<recipemap:bender>.findRecipe(7, [<metaitem:platePolybenzimidazole>, <metaitem:circuit.integrated>.withTag({Configuration: 12})], null).remove();
// 单元 - 空 * 4
<recipemap:bender>.findRecipe(7, [<metaitem:platePolytetrafluoroethylene>, <metaitem:circuit.integrated>.withTag({Configuration: 12})], null).remove();
// 单元 - 空 * 1
<recipemap:bender>.findRecipe(7, [<metaitem:plateTin> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 12})], null).remove();

mods.jei.JEI.removeAndHide(<gregtech:meta_item_1:78>);
recipes.remove(<gregtech:meta_item_1:78>);

extruder.recipeBuilder() 
    .inputs(<metaitem:ingotTin> * 2)
	.notConsumable(<metaitem:shape.extruder.cell>)
    .outputs(<ic2:fluid_cell> * 1)
    .duration(144)
    .EUt(30)
    .buildAndRegister();
	
extruder.recipeBuilder() 
    .inputs(<metaitem:ingotSteel>)
	.notConsumable(<metaitem:shape.extruder.cell>)
    .outputs(<ic2:fluid_cell> * 1)
    .duration(144)
    .EUt(30)
    .buildAndRegister();
	
extruder.recipeBuilder() 
    .inputs(<metaitem:ingotPolybenzimidazole>)
	.notConsumable(<metaitem:shape.extruder.cell>)
    .outputs(<ic2:fluid_cell> * 16)
    .duration(144)
    .EUt(30)
    .buildAndRegister();
	
extruder.recipeBuilder() 
    .inputs(<metaitem:ingotPolytetrafluoroethylene>)
	.notConsumable(<metaitem:shape.extruder.cell>)
    .outputs(<ic2:fluid_cell> * 4)
    .duration(144)
    .EUt(30)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:plateTin> * 2)
	.circuit(12)
    .outputs(<ic2:fluid_cell> * 1)
    .duration(100)
    .EUt(7)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:plateSteel>)
	.circuit(12)
    .outputs(<ic2:fluid_cell> * 1)
    .duration(7)
    .EUt(100)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:platePolybenzimidazole>)
	.circuit(12)
    .outputs(<ic2:fluid_cell> * 16)
    .duration(100)
    .EUt(7)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<metaitem:platePolytetrafluoroethylene>)
	.circuit(12)
    .outputs(<ic2:fluid_cell> * 4)
    .duration(100)
    .EUt(7)
    .buildAndRegister();