import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
// TODO - magicbees combs need gt centrifuge recipes
// --- Vals ---


// --- Removes ---
mods.jei.JEI.removeAndHide(<magicbees:manasteelgrafter>);
mods.jei.JEI.removeAndHide(<magicbees:manasteelscoop>);


// --- Recipes ---

//mods.thaumcraft.Crucible.registerRecipe("Knightslime", "BASEALCHEMY", <tconstruct:ingots:3>*2, <tconstruct:edible:2>, [<aspect:terra> * 10, <aspect:metallum> *15, <aspect:perditio> *5, <aspect:aqua> *2]);
// Essence of False Life 
recipes.remove(<magicbees:resource:7>);
mods.thaumcraft.Crucible.registerRecipe("essence_of_false_life", "BASEALCHEMY", <magicbees:resource:7>, 
	<minecraft:red_flower>, [<aspect:metallum> *16, <aspect:permutatio> *16, <aspect:herba> *16, <aspect:terra> *16]);


// Essence of a Shallow Grave
recipes.remove(<magicbees:resource:8>);
mods.thaumcraft.Crucible.registerRecipe("essence_of_shallow_grave", "BASEALCHEMY", <magicbees:resource:8>, 
	<minecraft:rotten_flesh>, [<aspect:mortuus> *16, <aspect:perditio> *16, <aspect:spiritus> *16, <aspect:exanimis> *16]);
	
// Essence of Lost Time
recipes.remove(<magicbees:resource:9>);
mods.thaumcraft.Crucible.registerRecipe("essence_of_lost_time", "BASEALCHEMY", <magicbees:resource:9>, 
	<minecraft:clock>, [<aspect:ordo> *16, <aspect:vacuos> *16, <aspect:vinculum> *16, <aspect:alienis> *16]);
	
// Essence of Everlasting Durability
recipes.remove(<magicbees:resource:10>);
mods.thaumcraft.Crucible.registerRecipe("essence_of_everlasting_durability", "BASEALCHEMY", <magicbees:resource:10>, 
	<minecraft:iron_chestplate>, [<aspect:praemunio> *16, <aspect:praecantatio> *16, <aspect:metallum> *16, <aspect:fabrico> *16]);
	
// Essence of Scornful Oblivion
recipes.remove(<magicbees:resource:11>);
mods.thaumcraft.Infusion.registerRecipe("essence_of_scornful_oblivion", "", <magicbees:resource:11>, 10, 
	[<aspect:alienis> *100, <aspect:praecantatio> *100, <aspect:desiderium> *75, <aspect:bestia> *75], 
	<minecraft:dragon_egg>, [<magicbees:resource:13>, <magicbees:resource:13>, <magicbees:resource:13>]);
	
// Essence of Fickle Permanence
recipes.remove(<magicbees:resource:12>);
mods.thaumcraft.Crucible.registerRecipe("essence_of_fickle_permanence", "BASEALCHEMY", <magicbees:resource:12>, 
	<magicbees:propolis>, [<aspect:perditio> *16, <aspect:permutatio> *16, <aspect:alkimia> *16, <aspect:potentia> *16]);
	
// Dimensional Singularity
recipes.remove(<magicbees:resource:13>);
mods.thaumcraft.Infusion.registerRecipe("dimensional_singularity", "", <magicbees:resource:13>, 8, 
	[<aspect:praecantatio> *24, <aspect:permutatio> *24, <aspect:alienis> *16, <aspect:tenebrae> *16], 
	<ore:blockGold>, [<magicbees:propolis>, <ore:gemEnderEye>, <magicbees:propolis>, <ore:gemEnderEye>, <magicbees:propolis>, <ore:gemEnderEye>]);
	
// Mysterious Magnet
// Level 0
recipes.remove(<magicbees:mysteriousmagnet:*>);
recipes.addShaped(<magicbees:mysteriousmagnet>, 
	[[<ore:gregToolWrench>, <ore:plateIron>, <ore:screwSteelMagnetic>], 
	[<minecraft:compass>, <magicbees:resource:13>, <minecraft:compass>], 
	[<ore:screwSteelMagnetic>, <ore:gemExquisiteDiamond>, <ore:gregToolScrewdriver>]]);
// Level 1
assembler.recipeBuilder()
	.inputs([<magicbees:resource:13>, <magicbees:mysteriousmagnet> *2])
	.outputs(<magicbees:mysteriousmagnet:2>)
	.fluidInputs([<liquid:redstone> *1296])
	.duration(200).EUt(64).buildAndRegister();
// Level 2
assembler.recipeBuilder()
	.inputs([<magicbees:resource:13>, <magicbees:mysteriousmagnet:2> *2])
	.outputs(<magicbees:mysteriousmagnet:4>)
	.fluidInputs([<liquid:redstone> *1296])
	.duration(400).EUt(120).buildAndRegister();
// Level 3
assembler.recipeBuilder()
	.inputs([<magicbees:resource:13>, <magicbees:mysteriousmagnet:4> *2])
	.outputs(<magicbees:mysteriousmagnet:6>)
	.fluidInputs([<liquid:redstone> *1296])
	.duration(600).EUt(256).buildAndRegister();
// Level 4
assembler.recipeBuilder()
	.inputs([<magicbees:resource:13>, <magicbees:mysteriousmagnet:6> *2])
	.outputs(<magicbees:mysteriousmagnet:8>)
	.fluidInputs([<liquid:redstone> *1296])
	.duration(800).EUt(480).buildAndRegister();
// Level 5
assembler.recipeBuilder()
	.inputs([<magicbees:resource:13>, <magicbees:mysteriousmagnet:8> *2])
	.outputs(<magicbees:mysteriousmagnet:10>)
	.fluidInputs([<liquid:redstone> *1296])
	.duration(1000).EUt(1024).buildAndRegister();
// Level 6
assembler.recipeBuilder()
	.inputs([<magicbees:resource:13>, <magicbees:mysteriousmagnet:10> *2])
	.outputs(<magicbees:mysteriousmagnet:12>)
	.fluidInputs([<liquid:redstone> *1296])
	.duration(1200).EUt(1920).buildAndRegister();
// Level 7
assembler.recipeBuilder()
	.inputs([<magicbees:resource:13>, <magicbees:mysteriousmagnet:12> *2])
	.outputs(<magicbees:mysteriousmagnet:14>)
	.fluidInputs([<liquid:redstone> *1296])
	.duration(1400).EUt(4096).buildAndRegister();
// Level 8
assembler.recipeBuilder()
	.inputs([<magicbees:resource:13>, <magicbees:mysteriousmagnet:14> *2])
	.outputs(<magicbees:mysteriousmagnet:16>)
	.fluidInputs([<liquid:redstone> *1296])
	.duration(1600).EUt(7680).buildAndRegister();
// Level 9
assembler.recipeBuilder()
	.inputs([<magicbees:resource:13>, <magicbees:mysteriousmagnet:16> *2])
	.outputs(<magicbees:mysteriousmagnet:18>)
	.fluidInputs([<liquid:redstone> *1296])
	.duration(1800).EUt(32768).buildAndRegister();
	
// Jade Moon Dial
recipes.remove(<magicbees:moondial>);
assembler.recipeBuilder()
	.inputs([<ore:gemExquisiteGreenSapphire>, <minecraft:clock>])
	.outputs(<magicbees:moondial>)
	.fluidInputs([<liquid:uranium> *576])
	.duration(200).EUt(30).buildAndRegister();
	
// Temporal Frame
recipes.remove(<magicbees:frames.temporal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("temporal_frame", "", 20, 
	[<aspect:aqua> *16, <aspect:aer> *16, <aspect:ordo> *16, <aspect:perditio> *16, <aspect:ignis> *16, <aspect:terra> *16], 
	<magicbees:frames.temporal>, 
	[[<ore:screwAluminium>, <magicbees:resource:10>, <ore:screwAluminium>], 
	[<minecraft:diamond>, <magicbees:frames.magic>,<minecraft:diamond>], 
	[<ore:screwAluminium>, <minecraft:diamond>, <ore:screwAluminium>]]);
	
// Metabolic Frame
recipes.remove(<magicbees:frames.metabolic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("metabolic_frame", "", 20, 
	[<aspect:aqua> *16, <aspect:aer> *16, <aspect:ordo> *16, <aspect:perditio> *16, <aspect:ignis> *16, <aspect:terra> *16], 
	<magicbees:frames.metabolic>, 
	[[<ore:screwAluminium>, <magicbees:resource:12>, <ore:screwAluminium>], 
	[<minecraft:diamond>, <magicbees:frames.magic>, <minecraft:diamond>], 
	[<ore:screwAluminium>, <minecraft:diamond>, <ore:screwAluminium>]]);

// Gentle Frame
recipes.remove(<magicbees:frames.gentle>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("gentle_frame", "", 20, 
	[<aspect:aqua> *16, <aspect:aer> *16, <aspect:ordo> *16, <aspect:perditio> *16, <aspect:ignis> *16, <aspect:terra> *16], 
	<magicbees:frames.gentle>, 
	[[<ore:screwAluminium>, <magicbees:resource:7>, <ore:screwAluminium>], 
	[<minecraft:diamond>, <magicbees:frames.magic>, <minecraft:diamond>], 
	[<ore:screwAluminium>,<minecraft:diamond>, <ore:screwAluminium>]]);
	
// Necrotic Frame
recipes.remove(<magicbees:frames.necrotic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("necrotic_frame", "", 20, 
	[<aspect:aqua> *16, <aspect:aer> *16, <aspect:ordo> *16, <aspect:perditio> *16, <aspect:ignis> *16, <aspect:terra> *16], 
	<magicbees:frames.necrotic>, 
	[[<ore:screwAluminium>, <magicbees:resource:8>, <ore:screwAluminium>], 
	[<minecraft:diamond>, <magicbees:frames.magic>, <minecraft:diamond>], 
	[<ore:screwAluminium>, <minecraft:diamond>, <ore:screwAluminium>]]);
	
	
// Magic Frame
recipes.remove(<magicbees:frames.magic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("magic_frame", "", 10, 
	[<aspect:aqua> *8, <aspect:aer> *8, <aspect:ordo> *8, <aspect:perditio> *8, <aspect:ignis> *8, <aspect:terra> *8], 
	<magicbees:frames.magic>, 
	[[<ore:screwSteel>, <magicbees:wax:1>, <ore:screwSteel>], 
	[<magicbees:wax>, <forestry:frame_impregnated>, <magicbees:wax:2>], 
	[<ore:screwSteel>, <thaumcraft:fabric>, <ore:screwSteel>]]);
	
// Oblivion Frame
recipes.remove(<magicbees:frames.oblivion>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("oblivion_frame", "", 100, 
	[<aspect:aqua> *32, <aspect:aer> *32, <aspect:ordo> *32, <aspect:perditio> *32, <aspect:ignis> *32, <aspect:terra> *32], 
	<magicbees:frames.oblivion>, 
	[[<ore:screwStainlessSteel>, <magicbees:resource:11>, <ore:screwStainlessSteel>], 
	[<minecraft:diamond>, <magicbees:frames.magic>, <minecraft:diamond>], 
	[<ore:screwStainlessSteel>,<minecraft:diamond>, <ore:screwStainlessSteel>]]);
	
// Resilient Frame
recipes.remove(<magicbees:frames.resilient>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("resilient_frame", "", 100, 
	[<aspect:aqua> *32, <aspect:aer> *32, <aspect:ordo> *32, <aspect:perditio> *32, <aspect:ignis> *32, <aspect:terra> *32], 
	<magicbees:frames.resilient>, 
	[[<ore:screwAluminium>, <magicbees:resource:10>, <ore:screwAluminium>], 
	[<minecraft:diamond>, <magicbees:frames.magic>, <minecraft:diamond>], 
	[<ore:screwAluminium>, <minecraft:diamond>, <ore:screwStainlessSteelscrewAluminium>]]);
	
// Bee Collectors Jar
recipes.remove(<magicbees:effectjar>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:quartz_glass> *5, <minecraft:nether_wart>])
	.outputs(<magicbees:effectjar>)
	.fluidInputs([<liquid:rubber> *144])
	.duration(600).EUt(120).buildAndRegister();
	
// Enchanted Earth
recipes.remove(<magicbees:enchanted_earth>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("enchanted_earth", "", 25, 
	[<aspect:aqua> *10, <aspect:ordo> *10, <aspect:terra> *10], 
	<magicbees:enchanted_earth>, 
	[[<minecraft:dirt>, null, <minecraft:dirt>], 
	[null, <magicbees:resource:7>, null], 
	[<minecraft:dirt>, null, <minecraft:dirt>]]);