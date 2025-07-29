import mods.gregtech.recipe.RecipeMap;
val forming_press = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
compressor.recipeBuilder() 
    .inputs(<tconstruct:materials>*3) 
    .outputs(<tconstruct:seared:3>) 
    .duration(300)
    .EUt(16)
    .buildAndRegister();
	
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"})) 
    .duration(5)
	.circuit(1)
    .EUt(16)
    .buildAndRegister();

forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"})) 
    .duration(5)
	.circuit(2)
    .EUt(16)
    .buildAndRegister();

forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"})) 
    .duration(5)
	.circuit(3)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"})) 
    .duration(5)
	.circuit(4)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:shard"})) 
    .duration(5)
	.circuit(5)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:kama_head"})) 
    .duration(5)
	.circuit(6)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:binding"})) 
    .duration(5)
	.circuit(7)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"})) 
    .duration(5)
	.circuit(8)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:bow_string"})) 
    .duration(5)
	.circuit(9)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"})) 
    .duration(5)
	.circuit(10)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"})) 
    .duration(5)
	.circuit(11)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"})) 
    .duration(5)
	.circuit(12)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:bow_limb"})) 
    .duration(5)
	.circuit(13)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:scythe_head"})) 
    .duration(5)
	.circuit(14)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"})) 
    .duration(5)
	.circuit(15)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_head"})) 
    .duration(5)
	.circuit(16)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:hand_guard"})) 
    .duration(5)
	.circuit(17)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:fletching"})) 
    .duration(5)
	.circuit(18)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"})) 
    .duration(5)
	.circuit(19)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"})) 
    .duration(5)
	.circuit(20)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"})) 
    .duration(5)
	.circuit(21)
    .EUt(16)
    .buildAndRegister();
	
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"})) 
    .duration(5)
	.circuit(22)
    .EUt(16)
    .buildAndRegister();
	
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"})) 
    .duration(5)
	.circuit(23)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:cross_guard"})) 
    .duration(5)
	.circuit(24)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"})) 
    .duration(5)
	.circuit(25)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:sign_head"})) 
    .duration(5)
	.circuit(26)
    .EUt(16)
    .buildAndRegister();
	
forming_press.recipeBuilder() 
    .inputs(<tconstruct:cast>) 
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:knife_blade"})) 
    .duration(5)
	.circuit(27)
    .EUt(16)
    .buildAndRegister();
	