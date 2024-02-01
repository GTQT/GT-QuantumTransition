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
	
// Analyst
recipes.remove(<genetics:analyst>);
assembler.recipeBuilder()
	.inputs([<forestry:portable_alyzer>, <genetics:misc:8> *4, display, <ore:plateDiamond> *4])
	.outputs(<genetics:analyst>)
	.fluidInputs([<liquid:redstone> *4320])
	.duration(2000).EUt(500).buildAndRegister();
	
// Registry
recipes.remove(<genetics:registry>);
assembler.recipeBuilder()
	.inputs([<forestry:portable_alyzer>, <genetics:misc:9> *4, display, <ore:plateDiamond> *4])
	.outputs(<genetics:registry>)
	.fluidInputs([<liquid:redstone> *4320])
	.duration(2000).EUt(500).buildAndRegister();

// DNA Dye
recipes.remove(<genetics:misc:1>);
mixer.recipeBuilder()
	.inputs([<ore:dustSmallRedstone> *4, <ore:dustSmallGlowstone> *4, <ore:dyeBlue>, <ore:dyePurple>])
	.outputs(<genetics:misc:1>)
	.fluidInputs([<liquid:blaze> *144])
	.duration(200).EUt(30).buildAndRegister();
	
	
// Fluorescent Dye
recipes.remove(<genetics:misc:2>);
mixer.recipeBuilder()
	.inputs([<ore:dustSmallRedstone> *4, <ore:dustSmallGlowstone> *4, <ore:dyeOrange>, <ore:dyeYellow>])
	.outputs(<genetics:misc:2>)
	.fluidInputs([<liquid:blaze> *144])
	.duration(200).EUt(30).buildAndRegister();

// Growth Medium
recipes.remove(<genetics:misc:4>);
mixer.recipeBuilder()
	.inputs([<ore:dustSugar>, <ore:stickBone>, <forestry:mulch>, <ore:dustAsh>])
	.outputs(<genetics:misc:4>)
	.fluidInputs([<liquid:water> *1000])
	.duration(400).EUt(16).buildAndRegister();
	
// Blank Sequence
recipes.remove(<genetics:misc:5>);
assembler.recipeBuilder()
	.inputs([<ore:paneGlass> *2])
	.outputs(<genetics:misc:5>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.fluidInputs([<liquid:glowstone> *288])
	.duration(200).EUt(30).buildAndRegister();
	
// Empty Serum Vial
recipes.remove(<genetics:misc:6>);
assembler.recipeBuilder()
	.inputs([<ore:paneGlass> *4])
	.outputs(<genetics:misc:6>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 4}))
	.fluidInputs([<liquid:glowstone> *144])
	.duration(200).EUt(48).buildAndRegister();
	
// Serum Array
recipes.remove(<genetics:misc:7>);
assembler.recipeBuilder()
	.inputs([<genetics:misc:6> *10])
	.outputs(<genetics:misc:7>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 10}))
	.fluidInputs([<liquid:glowstone> *576])
	.duration(200).EUt(96).buildAndRegister();
	
// Integrated Circuit Board
recipes.remove(<genetics:misc:8>);
recipes.addShaped(<genetics:misc:8>,
	[[<ore:screwStainlessSteel>, <ore:gregToolScrewdriver>, <ore:screwStainlessSteel>],
	[<ore:circuitHv>, <forestry:chipsets:1>,<ore:circuitHv>],
	[<ore:screwStainlessSteel>, <ore:gregToolWrench>, <ore:screwStainlessSteel>]]);
assembler.recipeBuilder()
	.inputs([<ore:circuitHv> *2, <forestry:chipsets:1>])
	.outputs(<genetics:misc:8>)
	.fluidInputs([<liquid:stainless_steel> *64])
	.duration(400).EUt(64).buildAndRegister();
	
// Integrated CPU
recipes.remove(<genetics:misc:9>);
assembler.recipeBuilder()
	.inputs([<genetics:misc:8> *8, circuitBoardElite])
	.outputs(<genetics:misc:9>)
	.fluidInputs([<liquid:glowstone> *144])
	.duration(400).EUt(64).buildAndRegister();
	
// Isolator
recipes.remove(<genetics:machine>);
recipes.addShaped(<genetics:machine>, 
	[[<genetics:misc:3>, <ore:circuitMv>, <genetics:misc:3>], 
	[<genetics:misc:8>, machineCasingMv, <genetics:misc:8>], 
	[<ore:gearSmallStainlessSteel>, motorMv, <ore:gearSmallStainlessSteel>]]);

// Sequencer
recipes.remove(<genetics:machine:1>);
recipes.addShaped(<genetics:machine:1>, 
	[[<genetics:misc:2>, <ore:circuitMv>, <genetics:misc:2>], 
	[<genetics:misc:8>, machineCasingMv, <genetics:misc:8>], 
	[<ore:gearSmallStainlessSteel>, motorMv, <ore:gearSmallStainlessSteel>]]);
	
// Polymeriser
recipes.remove(<genetics:machine:2>);
recipes.addShaped(<genetics:machine:2>, 
	[[<genetics:misc:7>, <ore:circuitMv>, <genetics:misc:7>], 
	[<genetics:misc:8>, machineCasingMv, <genetics:misc:8>], 
	[<ore:gearSmallStainlessSteel>, motorMv, <ore:gearSmallStainlessSteel>]]);
	
// Inoculator
recipes.remove(<genetics:machine:3>);
recipes.addShaped(<genetics:machine:3>, 
	[[<ore:plateEmerald>, <ore:circuitMv>, <ore:plateEmerald>], 
	[<genetics:misc:8>, machineCasingMv, <genetics:misc:8>], 
	[<ore:gearSmallStainlessSteel>, motorMv, <ore:gearSmallStainlessSteel>]]);
	
// Lab Stand
recipes.remove(<genetics:lab_machine>);
recipes.addShaped(<genetics:lab_machine>, 
	[[<ore:plateStainlessSteel>, <ore:paneGlass>, <ore:plateStainlessSteel>], 
	[<ore:paneGlass>, machineCasingMv, <ore:paneGlass>], 
	[<ore:plateStainlessSteel>, <ore:paneGlass>, <ore:plateStainlessSteel>]]);
	
// Analyzer
recipes.remove(<genetics:lab_machine:1>);
recipes.addShaped(<genetics:lab_machine:1>, 
	[[<genetics:misc:1>, <ore:circuitMv>, <genetics:misc:1>], 
	[<genetics:misc:8>, machineCasingMv, <genetics:misc:8>], 
	[<ore:gearSmallStainlessSteel>, motorMv, <ore:gearSmallStainlessSteel>]]);
	
// Incubator
recipes.remove(<genetics:lab_machine:2>);
recipes.addShaped(<genetics:lab_machine:2>, 
	[[<ore:circuitHv>, <ore:craftingFurnace>, <ore:circuitHv>], 
	[<genetics:misc:8>, machineCasingMv, <genetics:misc:8>], 
	[<ore:gearSmallStainlessSteel>, motorMv, <ore:gearSmallStainlessSteel>]]);

// Genepool
recipes.remove(<genetics:lab_machine:3>);
recipes.addShaped(<genetics:lab_machine:3>, 
	[[<ore:circuitHv>, <ore:circuitMv>, <ore:circuitHv>], 
	[<genetics:misc:8>, machineCasingMv, <genetics:misc:8>], 
	[<ore:gearSmallStainlessSteel>, motorMv, <ore:gearSmallStainlessSteel>]]);
	
// Acclimatiser
recipes.remove(<genetics:lab_machine:4>);
recipes.addShaped(<genetics:lab_machine:4>, 
	[[<minecraft:water_bucket>, <minecraft:lava_bucket>, <minecraft:water_bucket>], 
	[<genetics:misc:8>, machineCasingMv, <genetics:misc:8>], 
	[<ore:gearSmallStainlessSteel>, motorMv, <ore:gearSmallStainlessSteel>]]);
	

// Splicer
recipes.remove(<genetics:adv_machine>);
recipes.addShaped(<genetics:adv_machine>, 
	[[<ore:plateKanthal>, <binniecore:storage:5>, <ore:plateKanthal>], 
	[<genetics:misc:9>, machineCasingHv, <genetics:misc:9>], 
	[<ore:gearDiamond>, motorHv, <ore:gearDiamond>]]);

recipes.remove(<gendustry:env_processor>);
recipes.remove(<gendustry:genetics_processor>);
recipes.remove(<gendustry:power_module>);
recipes.remove(<gendustry:bee_receptacle>);
recipes.remove(<gendustry:mutagen_tank>);
recipes.remove(<gendustry:upgrade_frame>);

recipes.addShaped(<gendustry:env_processor>, [[<ore:gemLapis>], [<ore:circuitEv>]]);
recipes.addShaped(<gendustry:genetics_processor>, [[<ore:dustRedstone>], [<ore:circuitEv>]]);
recipes.addShaped(<gendustry:power_module>, [[<ore:platePlastic>, <gregtech:meta_block_frame_16:4>, <ore:platePlastic>], [<gregtech:meta_block_frame_16:4>, <gregtech:meta_item_1:720>, <gregtech:meta_block_frame_16:4>], [<ore:platePlastic>, <gregtech:meta_block_frame_16:4>, <ore:platePlastic>]]);
recipes.addShaped(<gendustry:bee_receptacle>, [[<ore:platePlastic>, <gregtech:meta_block_frame_16:4>, <ore:platePlastic>], [<gregtech:meta_block_frame_16:4>, <minecraft:glass_pane>, <gregtech:meta_block_frame_16:4>], [<ore:platePlastic>, <gregtech:meta_block_frame_16:4>, <ore:platePlastic>]]);
recipes.addShaped(<gendustry:mutagen_tank>, [[<ore:platePlastic>, <gregtech:meta_item_1:78>, <ore:platePlastic>], [<gregtech:meta_item_1:78>, <gregtech:meta_item_1:78>, <gregtech:meta_item_1:78>], [<ore:platePlastic>, <gregtech:meta_item_1:78>, <ore:platePlastic>]]);
recipes.addShaped(<gendustry:upgrade_frame>, [[<ore:platePlastic>, <ore:pipeLargeFluidPlastic>, <ore:platePlastic>], [<gregtech:meta_item_1:78>, <ore:frameGtGalvanizedSteel>, <gregtech:meta_item_1:78>], [<ore:platePlastic>, <ore:pipeLargeFluidPlastic>, <ore:platePlastic>]]);

