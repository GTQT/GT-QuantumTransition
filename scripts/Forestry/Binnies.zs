import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
// --- Vals ---
val display =<gregtech:meta_item_1:522>;
val machineCasingLv = <gregtech:machine_casing:1>;
val machineCasingMv = <gregtech:machine_casing:2>;
val machineCasingHv = <gregtech:machine_casing:3>;
val pistonLv = <gregtech:meta_item_1:172>;
val motorLv = <gregtech:meta_item_1:127>;
val motorMv = <gregtech:meta_item_1:128>;
val motorHv = <gregtech:meta_item_1:129>;
val conveyorLv = <gregtech:meta_item_1:142>;
val conveyorMv = <gregtech:meta_item_1:143>;
val circuitBoardElite = <gregtech:meta_item_1:405>;

// --- Removes ---
mods.jei.JEI.removeAndHide(<extratrees:machine:4>);
mods.jei.JEI.removeAndHide(<extratrees:machine:5>);
mods.jei.JEI.removeAndHide(<extratrees:machine:6>);
mods.jei.JEI.removeAndHide(<genetics:misc>);
mods.jei.JEI.removeAndHide(<genetics:misc:10>);


// --- Recipes ---

// Compartment
recipes.remove(<binniecore:storage>);
recipes.addShaped(<binniecore:storage>, 
	[[<ore:screwIron>, <ore:chestWood>, <ore:screwIron>], 
	[<ore:chestWood>, <ore:frameGtWood>, <ore:chestWood>], 
	[<ore:screwIron>, <ore:chestWood>, <ore:screwIron>]]);

// Copper Compartment
recipes.remove(<binniecore:storage:1>);
assembler.recipeBuilder()
	.inputs([<binniecore:storage>, <ore:plateCopper> *8])
	.outputs(<binniecore:storage:1>)
	.duration(200).EUt(30).buildAndRegister();	
	
// Bronze Compartment
recipes.remove(<binniecore:storage:2>);
assembler.recipeBuilder()
	.inputs([<binniecore:storage:1>, <ore:plateBronze> *8])
	.outputs(<binniecore:storage:2>)
	.duration(200).EUt(30).buildAndRegister();	
	
// Iron Compartment
recipes.remove(<binniecore:storage:3>);
assembler.recipeBuilder()
	.inputs([<binniecore:storage:2>, <ore:plateIron> *8])
	.outputs(<binniecore:storage:3>)
	.duration(200).EUt(30).buildAndRegister();	
	
// Gold Compartment
recipes.remove(<binniecore:storage:4>);
assembler.recipeBuilder()
	.inputs([<binniecore:storage:3>, <ore:plateGold> *8])
	.outputs(<binniecore:storage:4>)
	.duration(200).EUt(30).buildAndRegister();	
	
// Diamond Compartment
recipes.remove(<binniecore:storage:5>);
assembler.recipeBuilder()
	.inputs([<binniecore:storage:4>, <ore:plateDiamond> *8])
	.outputs(<binniecore:storage:5>)
	.duration(200).EUt(30).buildAndRegister();	
	
// Tileworker
recipes.remove(<botany:machine>);
recipes.addShaped(<botany:machine>, 
	[[<gregtech:machine:813>, <ore:plateSteel>, <gregtech:machine:813>], 
	[pistonLv, machineCasingLv, pistonLv], 
	[<ore:gearBronze>, motorLv, <ore:gearBronze>]]);

// Mutator
recipes.remove(<extrabees:alveary>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:12> *4, <ore:plateEnderPearl> *4, <extrabees:hive_frame.soul>])
	.outputs(<extrabees:alveary>)
	.fluidInputs([<liquid:for.honey> *7500])
	.duration(2000).EUt(120).buildAndRegister();	

// Frame Housing
recipes.remove(<extrabees:alveary:1>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:10> *4, <forestry:frame_proven> *4, <ore:frameGtWood>])
	.outputs(<extrabees:alveary:1>)
	.fluidInputs([<liquid:for.honey> *7500])
	.duration(2000).EUt(120).buildAndRegister();

// Rain Shield
recipes.remove(<extrabees:alveary:2>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:6> *4, <ore:plateRubber> *4, <ore:blockBrick>])
	.outputs(<extrabees:alveary:2>)
	.fluidInputs([<liquid:for.honey> *7500])
	.duration(2000).EUt(120).buildAndRegister();
	
// Alveary Lighting
recipes.remove(<extrabees:alveary:3>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:2> *4, <ore:blockGlass> *4, <minecraft:redstone_lamp>])
	.outputs(<extrabees:alveary:3>)
	.fluidInputs([<liquid:for.honey> *7500])
	.duration(2000).EUt(120).buildAndRegister();
	
// Electrical Stimulator
// Alveary Lighting
recipes.remove(<extrabees:alveary:4>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:1> *4, <ore:wireGtDoubleTin> *2, motorHv, <ore:circuitHv>])
	.outputs(<extrabees:alveary:4>)
	.fluidInputs([<liquid:for.honey> *7500])
	.duration(2000).EUt(500).buildAndRegister();

// Hatchery
recipes.remove(<extrabees:alveary:5>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:1> *4, conveyorMv *2, <ore:plateRedstone>, <forestry:bee_house>])
	.outputs(<extrabees:alveary:5>)
	.fluidInputs([<liquid:for.honey> *7500])
	.duration(2000).EUt(120).buildAndRegister();
	
// Alveary Transmission
recipes.remove(<extrabees:alveary:6>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes> *4, <ore:circuitHv>, <ore:cableGtDoubleAluminium> *3, machineCasingHv])
	.outputs(<extrabees:alveary:6>)
	.fluidInputs([<liquid:for.honey> *7500])
	.duration(2000).EUt(500).buildAndRegister();
	
// Woodworker
recipes.remove(<extratrees:machine:1>);
recipes.addShaped(<extratrees:machine:1>, 
	[[<ore:plateWood>, <ore:plankWood>, <ore:plateWood>], 
	[<forestry:worktable>, machineCasingLv, <forestry:worktable>], 
	[<extratrees:misc:2>, <ore:plankWood>, <extratrees:misc:2>]]);
	
// Panelworker
recipes.remove(<extratrees:machine:2>);
recipes.addShaped(<extratrees:machine:2>, 
	[[<ore:plateWood>, <ore:plankWood>, <ore:plateWood>], 
	[<forestry:worktable>, machineCasingLv, <forestry:worktable>], 
	[<extratrees:misc:2>, <ore:slabWood>, <extratrees:misc:2>]]);

// Glassworker
recipes.remove(<extratrees:machine:7>);
recipes.addShaped(<extratrees:machine:7>, 
	[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], 
	[<ore:blockGlass>, machineCasingLv, <ore:blockGlass>], 
	[<extratrees:misc:2>, <extratrees:misc:2>, <extratrees:misc:2>]]);
	