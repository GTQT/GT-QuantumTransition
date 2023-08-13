import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:128>,<gregtech:meta_rotor:323>,<gregtech:meta_plate:25>*4,<gregtech:meta_plate:51>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:heat_vent>.withTag({advDmg: 0}))
	.circuit(15) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<ic2:heat_vent>.withTag({advDmg: 0}),<gregtech:meta_stick:276>*4,<gregtech:fluid_pipe_tiny:2>)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:advanced_heat_vent>.withTag({advDmg: 0}))
	.circuit(1) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ic2:heat_vent>,<gregtech:meta_plate:55>*4,<gregtech:fluid_pipe_tiny:2>)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:reactor_heat_vent>.withTag({advDmg: 0}))
	.circuit(2) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:144>,<gregtech:meta_rotor:323>,<gregtech:meta_plate:25>*4,<gregtech:meta_plate:51>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:heat_exchanger>.withTag({advDmg: 0}))
	.circuit(15) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<ic2:heat_exchanger>.withTag({advDmg: 0}),<gregtech:meta_stick:276>*4,<gregtech:fluid_pipe_tiny:2>)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:advanced_heat_exchanger>.withTag({advDmg: 0}))
	.circuit(1) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ic2:heat_exchanger>.withTag({advDmg: 0}),<gregtech:meta_plate:55>*4,<gregtech:fluid_pipe_tiny:2>)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:reactor_heat_exchanger>.withTag({advDmg: 0}))
	.circuit(2) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ic2:heat_exchanger>.withTag({advDmg: 0}),<gregtech:meta_stick:2007>*4,<gregtech:meta_plate:2007>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:lzh_condensator>.withTag({advDmg: 0}))
	.circuit(3) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ic2:heat_exchanger>.withTag({advDmg: 0}),<gregtech:meta_stick:32025>*4,<gregtech:meta_plate:32025>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:rsh_condensator>.withTag({advDmg: 0}))
	.circuit(4) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ic2:heat_vent>.withTag({advDmg: 0}),<gregtech:meta_stick:323>*4,<gregtech:fluid_pipe_tiny:2>)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:component_heat_vent>.withTag({advDmg: 0}))
	.circuit(5) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder() 
    .inputs(<ic2:component_heat_vent>.withTag({advDmg: 0}),<nuclearcraft:ingot_block:8>*2,<gregtech:meta_stick:323>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:neutron_reflector>.withTag({advDmg: 0}))
	.circuit(5) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
	
assembler.recipeBuilder() 
    .inputs(<ic2:neutron_reflector>.withTag({advDmg: 0})*2,<ic2:component_heat_vent>.withTag({advDmg: 0}),<gregtech:meta_stick:323>*4)
    .fluidInputs(<liquid:polytetrafluoroethylene>* 144)
    .outputs(<ic2:thick_neutron_reflector>.withTag({advDmg: 0}))
	.circuit(5) 
    .duration(120)
    .EUt(16)
    .buildAndRegister();
	
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:307>)
    .inputs(<ore:circuitMv>)
    .outputs(<ic2:cropnalyzer>.withTag({charge: 100000.0}))
    .duration(1200)
    .EUt(16)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<ic2:crop_res:8>)
    .outputs(<gregtech:meta_dust_small:278>)
    .duration(2)
    .EUt(8)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<minecraft:spider_eye>)
    .outputs(<ic2:crop_res:3>)
    .duration(400)
    .EUt(20)
    .buildAndRegister();

extractor.recipeBuilder()
    .inputs(<ic2:crop_res:7>)
    .fluidOutputs(<liquid:oil> * 100)
    .duration(1600)
    .EUt(80)
    .buildAndRegister();

extractor.recipeBuilder()
    .inputs(<ic2:crop_res:6>)
    .fluidOutputs(<liquid:milk> * 100)
    .duration(150)
    .EUt(2)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<ic2:crop_res:5> * 32)
    .outputs(<gregtech:meta_item_1:439>)
    .duration(300)
    .EUt(2)
    .buildAndRegister();

mixer.recipeBuilder()
.inputs(<ic2:crop_res:3>)
.inputs(<ore:dustRedstone>)
    .fluidInputs(<liquid:water> * 1000)
    .fluidOutputs(<liquid:ic2weed_ex> * 500)
    .duration(100)
    .EUt(7)
    .buildAndRegister();

mixer.recipeBuilder()
.inputs(<ore:dustSodiumChlorate>)
.inputs(<ore:dustRedstone>)
    .fluidInputs(<liquid:water> * 1000)
    .fluidOutputs(<liquid:ic2weed_ex> * 1000)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

recipes.addShaped(<ic2:te:58>, 
[[<gregtech:meta_item_1:189>, <gregtech:meta_item_1:625>, <gregtech:meta_item_1:189>],
[<gregtech:meta_item_1:174>, <gregtech:machine_casing:3>, <gregtech:meta_item_1:234>], 
[<tconstruct:scythe_head>.withTag({Material: "stainless_steel"}), <gregtech:meta_item_1:159>, <tconstruct:scythe_head>.withTag({Material: "stainless_steel"})]]);

recipes.addShaped(<ic2:te:59>, 
[[<gregtech:meta_item_1:189>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:189>],
[<tconstruct:scythe_head>.withTag({Material: "stainless_steel"}), <gregtech:machine_casing:3>, <tconstruct:scythe_head>.withTag({Material: "stainless_steel"})],
[<ore:circuitHv>, <gregtech:machine:1183>, <ore:circuitHv>]]);