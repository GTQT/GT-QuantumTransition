import mods.gregtech.recipe.RecipeMap;
val circuit_assembler = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val canner = mods.gregtech.recipe.RecipeMap.getByName("canner");
// --- Vals ---
val display = <gregtech:meta_item_1:520>;
val circuitBoardBasic =<gregtech:meta_item_1:401>;
val circuitBoardGood = <gregtech:meta_item_1:402>;
val machineCasingLv = <gregtech:machine_casing:1>;
val machineCasingMv = <gregtech:machine_casing:2>;
val machineCasingHv = <gregtech:machine_casing:3>;
val emitterMv = <gregtech:meta_item_1:173>;
val sensorMv = <gregtech:meta_item_1:188>;
val pistonMv = <gregtech:meta_item_1:233>;
val motorLv = <gregtech:meta_item_1:127>;
val motorMv = <gregtech:meta_item_1:128>;
val conveyorLv = <gregtech:meta_item_1:217>;
val pumpLv = <gregtech:meta_item_1:142>;


// --- Hides ---
mods.jei.JEI.hide(<forestry:can:*>);
mods.jei.JEI.hide(<forestry:capsule:*>);
mods.jei.JEI.hide(<forestry:refractory:*>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse:*>);
mods.jei.JEI.removeAndHide(<forestry:climatiser:*>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse.window>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse.window_up>);
mods.jei.JEI.removeAndHide(<forestry:wrench>);

mods.jei.JEI.removeAndHide(<forestry:sturdy_machine>);
mods.jei.JEI.removeAndHide(<forestry:hardened_machine>);
mods.jei.JEI.removeAndHide(<forestry:impregnated_casing>);
mods.jei.JEI.removeAndHide(<forestry:flexible_casing>);
mods.jei.JEI.removeAndHide(<forestry:crafting_material:7>);
mods.jei.JEI.removeAndHide(<forestry:gear_copper>);
mods.jei.JEI.removeAndHide(<forestry:gear_tin>);
mods.jei.JEI.removeAndHide(<forestry:carton>);
mods.jei.JEI.removeAndHide(<forestry:kit_shovel>);
mods.jei.JEI.removeAndHide(<forestry:kit_pickaxe>);
mods.jei.JEI.removeAndHide(<forestry:mouldy_wheat>);
mods.jei.JEI.removeAndHide(<forestry:decaying_wheat>);
mods.jei.JEI.removeAndHide(<forestry:resources>);
mods.jei.JEI.removeAndHide(<forestry:resources:1>);
mods.jei.JEI.removeAndHide(<forestry:resources:2>);
mods.jei.JEI.removeAndHide(<forestry:resource_storage>);
mods.jei.JEI.removeAndHide(<forestry:resource_storage:1>);
mods.jei.JEI.removeAndHide(<forestry:resource_storage:2>);
mods.jei.JEI.removeAndHide(<forestry:resource_storage:3>);
mods.jei.JEI.removeAndHide(<forestry:arboretum>);
mods.jei.JEI.removeAndHide(<forestry:arboretum:1>);
mods.jei.JEI.removeAndHide(<forestry:farm_crops>);
mods.jei.JEI.removeAndHide(<forestry:farm_crops:1>);
mods.jei.JEI.removeAndHide(<forestry:farm_mushroom>);
mods.jei.JEI.removeAndHide(<forestry:farm_mushroom:1>);
mods.jei.JEI.removeAndHide(<forestry:farm_gourd>);
mods.jei.JEI.removeAndHide(<forestry:farm_gourd:1>);
mods.jei.JEI.removeAndHide(<forestry:farm_nether>);
mods.jei.JEI.removeAndHide(<forestry:farm_nether:1>);
mods.jei.JEI.removeAndHide(<forestry:farm_ender>);
mods.jei.JEI.removeAndHide(<forestry:farm_ender:1>);
mods.jei.JEI.removeAndHide(<forestry:peat_bog>);
mods.jei.JEI.removeAndHide(<forestry:peat_bog:1>);
mods.jei.JEI.removeAndHide(<forestry:crate>);

// Minecart with Bee House
recipes.remove(<forestry:cart.beehouse>);
recipes.addShaped(<forestry:cart.beehouse>,
	[[null, <ore:gregToolScrewdriver>, null],
	[<ore:screwSteel>, <forestry:bee_house>, <ore:screwSteel>],
	[<ore:screwSteel>, <minecraft:minecart>, <ore:screwSteel>]]);
assembler.recipeBuilder()
	.inputs([<forestry:bee_house>, <minecraft:minecart>])
	.outputs(<forestry:cart.beehouse>)
	.duration(200).EUt(16).buildAndRegister();
	
// Minecart with Apiary
recipes.remove(<forestry:cart.beehouse:1>);
recipes.addShaped(<forestry:cart.beehouse:1>,
	[[null, <ore:gregToolScrewdriver>, null],
	[<ore:screwSteel>, <forestry:apiary>, <ore:screwSteel>],
	[<ore:screwSteel>, <minecraft:minecart>, <ore:screwSteel>]]);
assembler.recipeBuilder()
	.inputs([<forestry:apiary>, <minecraft:minecart>])
	.outputs(<forestry:cart.beehouse:1>)
	.duration(200).EUt(16).buildAndRegister();
	
// Compost
recipes.remove(<forestry:fertilizer_bio>);
mixer.recipeBuilder()
	.inputs([<ore:cropWheat> *4, <ore:dirt>])
	.outputs(<forestry:fertilizer_bio>)
	.fluidInputs([<liquid:water> *100])
	.duration(200).EUt(16).buildAndRegister();
	
// Fertilizer
recipes.remove(<forestry:fertilizer_compound>);
mixer.recipeBuilder()
	.inputs([<ore:dustAsh> *8, <ore:dustApatite>])
	.outputs(<forestry:fertilizer_compound> *10)
	.fluidInputs([<liquid:water> *100])
	.duration(100).EUt(16).buildAndRegister();
mixer.recipeBuilder()
	.inputs([<ore:sand> *1, <ore:dustApatite>])
	.outputs(<forestry:fertilizer_compound> *5)
	.fluidInputs([<liquid:water> *100])
	.duration(100).EUt(16).buildAndRegister();
	
// Portable Analyzer
recipes.remove(<forestry:portable_alyzer>);
assembler.recipeBuilder()
	.inputs([<ore:plateTin> *4, <ore:circuitMv>, display])
	.outputs(<forestry:portable_alyzer>)
	.fluidInputs([<liquid:redstone> *576])
	.duration(500).EUt(16).buildAndRegister();
	
// Pipette
recipes.remove(<forestry:pipette>);
recipes.addShaped(<forestry:pipette>, 
	[[null, <ore:plateRubber>, <ore:plateRubber>], 
	[null, <gregtech:meta_item_1:32762>, <ore:plateRubber>], 
	[<ore:boltIron>, null, null]]);

// Woven Silk
recipes.remove(<forestry:crafting_material:3>);
recipes.addShaped(<forestry:crafting_material:3>, 
    [[<forestry:crafting_material:2>, <forestry:crafting_material:2>, <forestry:crafting_material:2>],
    [<forestry:crafting_material:2>, <forestry:crafting_material:2>, <forestry:crafting_material:2>],
    [<forestry:crafting_material:2>, <forestry:crafting_material:2>, <forestry:crafting_material:2>]]);

// Scented Paneling
recipes.remove(<forestry:crafting_material:6>);
assembler.recipeBuilder()
	.inputs([<ore:wireFineGold> *2, <forestry:oak_stick> *3, <ore:itemPollen>, <ore:itemBeeswax> *2])
	.outputs(<forestry:crafting_material:6>)
	.fluidInputs([<liquid:for.honey> *1000])
	.duration(1000).EUt(120).buildAndRegister();
	
// Spectacles
recipes.remove(<forestry:naturalist_helmet>);
recipes.addShaped(<forestry:naturalist_helmet>, 
	[[<ore:screwIron>, <ore:ringIron>, <ore:screwIron>], 
	[<ore:lensGlass>, null, <ore:lensGlass>], 
	[null, null, null]]);

// Basic Circuit Board
recipes.remove(<forestry:chipsets>);
circuit_assembler.recipeBuilder()
	.inputs([circuitBoardBasic, <ore:circuitLv> *2, <ore:foilTin> *2, <ore:screwTin> *4, <ore:wireFineTin>])
	.outputs(<forestry:chipsets>.withTag({T: 0 as short}))
	.fluidInputs([<liquid:soldering_alloy> *576])
	.circuit(10)
	.duration(200).EUt(30).buildAndRegister();
circuit_assembler.recipeBuilder()
	.inputs([circuitBoardBasic, <ore:circuitLv> *2, <ore:foilTin> *2, <ore:screwTin> *4, <ore:wireFineTin>])
	.outputs(<forestry:chipsets>.withTag({T: 0 as short}))
	.fluidInputs([<liquid:lead> *2304])
	.circuit(10)
	.duration(200).EUt(30).buildAndRegister();
	
// Enhanced Circuit Board
recipes.remove(<forestry:chipsets:1>);
circuit_assembler.recipeBuilder()
	.inputs([circuitBoardBasic, <ore:circuitMv> *2, <ore:foilSteel> *2, <ore:screwSteel> *4, <ore:wireFineSteel>])
	.outputs(<forestry:chipsets:1>.withTag({T: 1 as short}))
	.fluidInputs([<liquid:soldering_alloy> *576])
	.circuit(10)
	.duration(200).EUt(30).buildAndRegister();
circuit_assembler.recipeBuilder()
	.inputs([circuitBoardBasic, <ore:circuitMv> *2, <ore:foilSteel> *2, <ore:screwSteel> *4, <ore:wireFineSteel>])
	.outputs(<forestry:chipsets:1>.withTag({T: 1 as short}))
	.fluidInputs([<liquid:lead> *2304])
	.circuit(10)
	.duration(200).EUt(30).buildAndRegister();
	
// Refined Circuit Board
recipes.remove(<forestry:chipsets:2>);
circuit_assembler.recipeBuilder()
	.inputs([circuitBoardGood, <ore:circuitLv> *2, <ore:foilSteel> *2, <ore:screwSteel> *4, <ore:wireFineSteel>])
	.outputs(<forestry:chipsets:2>.withTag({T: 2 as short}))
	.fluidInputs([<liquid:soldering_alloy> *576])
	.circuit(10)
	.duration(200).EUt(30).buildAndRegister();
circuit_assembler.recipeBuilder()
	.inputs([circuitBoardGood, <ore:circuitLv> *2, <ore:foilSteel> *2, <ore:screwSteel> *4, <ore:wireFineSteel>])
	.outputs(<forestry:chipsets:2>.withTag({T: 2 as short}))
	.fluidInputs([<liquid:lead> *2304])
	.circuit(10)
	.duration(200).EUt(30).buildAndRegister();
	
// Intricate Circuit Board
recipes.remove(<forestry:chipsets:3>);
circuit_assembler.recipeBuilder()
	.inputs([circuitBoardGood, <ore:circuitHv> *2, <ore:foilElectrum> *2, <ore:screwElectrum> *4, <ore:wireFineElectrum>])
	.outputs(<forestry:chipsets:3>.withTag({T: 3 as short}))
	.fluidInputs([<liquid:soldering_alloy> *576])
	.circuit(10)
	.duration(200).EUt(30).buildAndRegister();
// Soldering Iron
recipes.remove(<forestry:soldering_iron>);
circuit_assembler.recipeBuilder()
	.inputs([<gregtech:wire_single:25>, <ore:stickSteel> *2, <ore:boltSteel>])
	.outputs(<forestry:soldering_iron>)
	.fluidInputs([<liquid:redstone> *576])
	.duration(3000).EUt(30).buildAndRegister();

// Iodine Capsule
canner.recipeBuilder()
	.inputs([<gregtech:meta_dust:41>, <gregtech:meta_item_1:32762>])
	.outputs(<forestry:iodine_capsule>)
	.duration(200).EUt(16).buildAndRegister();

// Escritoire
recipes.remove(<forestry:escritoire>);
recipes.addShaped(<forestry:escritoire>,
	[[<ore:plankWood>, <ore:screwSteel>, <ore:screwSteel>],
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[<ore:fenceWood>, null, <ore:fenceWood>]]);
	
// Bog Earth
recipes.remove(<forestry:bog_earth>);
mixer.recipeBuilder()
	.inputs([<ore:sand>, <ore:dirt>])
	.outputs(<forestry:bog_earth> *2)
	.fluidInputs([<liquid:water> *250])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.duration(16).EUt(16).buildAndRegister();
	
// Analyzer
recipes.remove(<forestry:analyzer>);
recipes.addShaped(<forestry:analyzer>, 
	[[<ore:plateBronze>, <forestry:portable_alyzer:*>, <ore:plateBronze>], 
	[<ore:circuitLv>, machineCasingMv, <ore:circuitLv>], 
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]]);


// Database
recipes.remove(<forestry:database>);
recipes.addShaped(<forestry:database>, 
	[[<ore:ingotBronze>, <forestry:portable_alyzer:*>, <ore:ingotBronze>], 
	[<forestry:bee_chest>, machineCasingMv, <forestry:tree_chest>], 
	[<ore:plankWood>, <ore:dropRoyalJelly>, <ore:plankWood>]]);


// Habitat Former
recipes.remove(<forestry:habitat_former>);
recipes.addShaped(<forestry:habitat_former>, 
	[[<ore:blockGlass>, <ore:dustRedstone>, <ore:blockGlass>], 
	[<forestry:thermionic_tubes:3>, machineCasingHv, <forestry:thermionic_tubes:3>], 
	[<ore:gearBronze>, <forestry:chipsets>, <ore:gearBronze>]]);

// Habitat Screen
recipes.remove(<forestry:habitat_screen>);
recipes.addShapeless(<forestry:habitat_screen>, 
	[display, <forestry:habitat_locator>, <ore:circuitLv>]);
	
// Peat-Fired Engine
recipes.remove(<forestry:engine_peat>);
recipes.addShaped(<forestry:engine_peat>, 
	[[<ore:plateIron>, <ore:plateLapis>, <ore:plateIron>], 
	[<gregtech:meta_item_1:401>, <ore:craftingPiston>, <gregtech:meta_item_1:401>], 
	[<ore:gearIron>, machineCasingLv, <ore:gearIron>]]);

// Biogas Engine
recipes.remove(<forestry:engine_biogas>);
recipes.addShaped(<forestry:engine_biogas>, 
	[[<ore:plateBronze>, <ore:plateLapis>, <ore:plateBronze>], 
	[<gregtech:meta_item_1:401>, <ore:craftingPiston>, <gregtech:meta_item_1:401>], 
	[<ore:plateBronze>, machineCasingLv, <ore:plateBronze>]]);
	
// Clockwork Engine
recipes.remove(<forestry:engine_clockwork>);
recipes.addShaped(<forestry:engine_clockwork>, 
	[[<ore:plateGold>, <ore:plateLapis>, <ore:plateGold>], 
	[<gregtech:meta_item_1:401>, <ore:craftingPiston>, <gregtech:meta_item_1:401>], 
	[<ore:plateGold>, machineCasingLv, <ore:plateGold>]]);

// Mailbox
recipes.remove(<forestry:mailbox>);
recipes.addShaped(<forestry:mailbox>, 
	[[null, <ore:plateTin>, null], 
	[<ore:plateTin>, machineCasingLv, <ore:plateTin>], 
	[<ore:chestWood>, <ore:chestWood>, <ore:chestWood>]]);
	
// Trade Station
recipes.remove(<forestry:trade_station>);
recipes.addShaped(<forestry:trade_station>, 
	[[<forestry:thermionic_tubes:3>, <forestry:thermionic_tubes:2>, <forestry:thermionic_tubes:3>], 
	[<forestry:thermionic_tubes:2>, machineCasingMv, <forestry:thermionic_tubes:2>], 
	[<ore:chestWood>, <ore:circuitLv>, <ore:chestWood>]]);


	
// --- Farm ---

// --- Stone Bricks
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 0}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:stonebrick>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 0}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 0}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 0})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 0}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 0}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 0})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 0}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 0}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 0})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 0}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 0}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 0})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 0}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// --- Mossy Stone Bricks
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 1}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:stonebrick:1>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 1}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 1}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 1})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 1}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 1}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 1})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 1}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 1}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 1})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 1}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 1}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 1})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 1}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// --- Cracked Stone Bricks
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 2}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:stonebrick:2>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 2}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 2}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 2})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 2}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 2}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 2})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 2}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 2}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 2})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 2}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 2}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 2})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 2}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// --- Brick
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 3}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:brick_block>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 3}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 3}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 3})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 3}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 3}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 3})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 3}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 3}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 3})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 3}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 3}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 3})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 3}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
	
// --- Smooth Sandstone
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 4}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:sandstone>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 4}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 4}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 4})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 4}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 4}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 4})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 4}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 4}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 4})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 4}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 4}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 4})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 4}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
	
// --- Chiseled Sandstone
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 5}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:sandstone:1>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 5}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 5}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 5})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 5}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 5}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 5})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 5}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 5}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 5})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 5}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 5}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 5})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 5}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
	
// --- Nether Brick
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 6}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:nether_brick>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 6}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 6}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 6})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 6}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 6}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 6})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 6}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 6}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 6})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 6}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 6}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 6})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 6}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();


// --- Chiseled Stone Bricks
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 7}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:stonebrick:3>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 7}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 7}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 7})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 7}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 7}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 7})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 7}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 7}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 7})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 7}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 7}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 7})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 7}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
	
// --- Quartz
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 8}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:quartz_block>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 8}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 8}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 8})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 8}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 8}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 8})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 8}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 8}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 8})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 8}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 8}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 8})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 8}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// --- Chiseled Quartz
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 9}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:quartz_block:1>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 9}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 9}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 9})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 9}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 9}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 9})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 9}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 9}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 9})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 9}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 9}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 9})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 9}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
	
// --- Pillar Quartz
// Farm Block
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 10}));
assembler.recipeBuilder()
	.inputs([<ore:screwSteel> *4, <ore:plateCopper> *4, <forestry:thermionic_tubes:10>, <minecraft:quartz_block:2>])
	.outputs(<forestry:ffarm>.withTag({FarmBlock: 10}))
	.fluidInputs([<liquid:creosote> *500])
	.duration(200).EUt(30).buildAndRegister();
	
// Farm Gearbox
recipes.remove(<forestry:ffarm:2>.withTag({FarmBlock: 10}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel> *4, <forestry:thermionic_tubes:4> *4, motorLv, <forestry:ffarm>.withTag({FarmBlock: 10})])
	.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 10}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 10}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:1> *4, conveyorLv *2, motorLv, <minecraft:hopper>, <forestry:ffarm>.withTag({FarmBlock: 10})])
	.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 10}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	
// Farm Valve
recipes.remove(<forestry:ffarm:4>.withTag({FarmBlock: 10}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:11> *4, pumpLv *2, motorLv, <ore:ringRubber>, <forestry:ffarm>.withTag({FarmBlock: 10})])
	.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 10}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();

// Farm Control
recipes.remove(<forestry:ffarm:5>.withTag({FarmBlock: 10}));
assembler.recipeBuilder()
	.inputs([<ore:gearSteel>, <forestry:thermionic_tubes:4>, <ore:circuitMv> *2, motorLv, <ore:cableGtSingleTin>, <forestry:ffarm>.withTag({FarmBlock: 10})])
	.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 10}) *2)
	.fluidInputs([<liquid:creosote> *1000])
	.duration(1000).EUt(30).buildAndRegister();
	

// Rainmaker
recipes.remove(<forestry:rainmaker>);
recipes.addShaped(<forestry:rainmaker>, 
	[[<ore:plateCupronickel>, sensorMv, <ore:plateCupronickel>], 
	[pistonMv, machineCasingMv, pistonMv], 
	[<ore:gearSmallAluminium>, emitterMv, <ore:gearSmallAluminium>]]);

// Rain Tank
recipes.remove(<forestry:raintank>);
recipes.addShaped(<forestry:raintank>, 
	[[<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>], 
	[<ore:ingotIron>, <gregtech:machine:813>, <ore:ingotIron>], 
	[<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>]]);
	
// Grafter
recipes.remove(<forestry:grafter>);
recipes.addShaped(<forestry:grafter>, 
	[[null, <ore:stickWood>, null], 
	[<gregtech:meta_gear_small:324>, <ore:stickWood>, null], 
	[<ore:plateBronze>, <ore:ingotBronze>, null]]);
	
// Habitat Locator
recipes.remove(<forestry:habitat_locator>);
recipes.addShaped(<forestry:habitat_locator>, 
	[[<ore:screwBronze>, <ore:plateBronze>, <ore:screwBronze>],
	[<ore:plateBronze>, <minecraft:compass>, <ore:plateBronze>],
	[<ore:screwBronze>, <ore:plateBronze>, <ore:screwBronze>]]);

// Impregnated Frame
recipes.remove(<forestry:frame_impregnated>);
assembler.recipeBuilder()
	.inputs([<forestry:oak_stick> *5, <ore:slabWood> *3, <ore:wool>])
	.outputs(<forestry:frame_impregnated>)
	.fluidInputs([<liquid:seed.oil> *250])
	.duration(200).EUt(120).buildAndRegister();
	
// Proven Frame
recipes.remove(<forestry:frame_proven>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("proven_frame", "", 25, 
	[<aspect:aqua> *15, <aspect:aer> *15, <aspect:ordo> *15, <aspect:perditio> *15, <aspect:ignis> *15, <aspect:terra> *15], 
	<forestry:frame_proven>, 
	[[<ore:screwSteel>, <ore:dropHoneydew>, <ore:screwSteel>], 
	[<forestry:propolis>, <forestry:frame_impregnated>, <forestry:propolis:3>], 
	[<ore:screwSteel>, <ore:dropRoyalJelly>, <ore:screwSteel>]]);
	
// Apiary
recipes.remove(<forestry:apiary>);
chemical_bath.recipeBuilder()
	.inputs([<forestry:bee_house>])
	.outputs(<forestry:apiary>)
	.fluidInputs([<liquid:seed.oil> *1000])
	.duration(200).EUt(30).buildAndRegister();
	
// Bee House
recipes.remove(<forestry:bee_house>);
recipes.addShaped(<forestry:bee_house>,
	[[<ore:screwSteel>, <ore:slabWood>, <ore:screwSteel>],
	[<forestry:frame_untreated>, machineCasingLv,<forestry:frame_untreated>],
	[<ore:fenceWood>, <ore:slabWood>, <ore:fenceWood>]]);
	
// Alveary
recipes.remove(<forestry:alveary.plain>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, <forestry:crafting_material:6> *8])
	.outputs(<forestry:alveary.plain>)
	.duration(1200).EUt(120).buildAndRegister();

// Alveary Swarmer
recipes.remove(<forestry:alveary.swarmer>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:5> *4, <ore:plateSteel> *2, <forestry:frame_impregnated>, <ore:dropRoyalJelly>])
	.outputs(<forestry:alveary.swarmer>)
	.fluidInputs([<liquid:for.honey> *7500])
	.duration(2000).EUt(500).buildAndRegister();	
	
// Alveary Fan
recipes.remove(<forestry:alveary.fan>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:11> *4, <ore:plateSteel> *3, <ore:rotorBronze>, motorMv])
	.outputs(<forestry:alveary.fan>)
	.fluidInputs([<liquid:for.honey> *5000])
	.duration(2000).EUt(120).buildAndRegister();
	
// Alveary Heater
recipes.remove(<forestry:alveary.heater>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:7> *4, <ore:plateSteel>, <gregtech:meta_item_1:407> *3, motorMv])
	.outputs(<forestry:alveary.heater>)
	.fluidInputs([<liquid:for.honey> *5000])
	.duration(2000).EUt(120).buildAndRegister();
	
// Alveary Hydroregulator
recipes.remove(<forestry:alveary.hygro>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:6> *4, <ore:circuitLv>, <gregtech:machine:813> *2, <ore:plateRedAlloy>, <gregtech:fluid_pipe_large:1012>])
	.outputs(<forestry:alveary.hygro>)
	.fluidInputs([<liquid:for.honey> *5000])
	.duration(2000).EUt(120).buildAndRegister();

// Alveary Stabiliser
recipes.remove(<forestry:alveary.stabiliser>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:4> *4, <forestry:portable_alyzer>, <gregtech:meta_stick:1012> *4, <ore:plateCertusQuartz> *2])
	.outputs(<forestry:alveary.stabiliser>)
	.fluidInputs([<liquid:for.honey> *5000])
	.duration(2000).EUt(120).buildAndRegister();
	
// Alveary Stabiliser
recipes.remove(<forestry:alveary.sieve>);
assembler.recipeBuilder()
	.inputs([<forestry:alveary.plain>, <forestry:thermionic_tubes:9> *4, <forestry:crafting_material:3> *4, <ore:itemPollen>])
	.outputs(<forestry:alveary.sieve>)
	.fluidInputs([<liquid:for.honey> *5000])
	.duration(2000).EUt(120).buildAndRegister();