import mods.gregtech.recipe.RecipeMap;
val vacuum_freezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
vacuum_freezer.recipeBuilder() 
    .inputs(<contenttweaker:hotsilicon_item> * 1)
    .outputs(<gregtech:meta_ingot:99> * 1)
    .duration(25)
    .EUt(120)
    .buildAndRegister();

vacuum_freezer.recipeBuilder() 
    .fluidInputs(<liquid:nitrogen> * 1000)
    .fluidOutputs(<liquid:liquid_nitrogen> * 1000)
    .duration(400)
    .EUt(960)
    .buildAndRegister();
	
vacuum_freezer.recipeBuilder() 
    .fluidInputs(<liquid:emergency_coolant_heated> * 125)
    .fluidOutputs(<liquid:emergency_coolant> * 125)
    .duration(200)
    .EUt(960)
    .buildAndRegister();
	
vacuum_freezer.recipeBuilder() 
    .fluidInputs(<liquid:bromine> * 3000,<liquid:potassium_hydroxide> * 1296) 
    .outputs(<gregtech:meta_dust:3529> * 2)
    .duration(1200)
    .EUt(7600)
    .buildAndRegister();

vacuum_freezer.recipeBuilder() 
    .inputs(<ore:blockIce>) 
    .outputs(<nuclearcraft:supercold_ice>)
    .duration(300)
    .EUt(480)
    .buildAndRegister();
	
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:americium:10>).fluidInputs(<liquid:americium_243>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:americium:5>).fluidInputs(<liquid:americium_242>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:americium>).fluidInputs(<liquid:americium_241>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:berkelium:5>).fluidInputs(<liquid:berkelium_248>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:berkelium>).fluidInputs(<liquid:berkelium_247>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:californium:10>).fluidInputs(<liquid:californium_251>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:californium:15>).fluidInputs(<liquid:californium_252>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:californium:5>).fluidInputs(<liquid:californium_250>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:californium>).fluidInputs(<liquid:californium_249>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:curium:10>).fluidInputs(<liquid:curium_246>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:curium:15>).fluidInputs(<liquid:curium_247>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:curium:5>).fluidInputs(<liquid:curium_245>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:curium>).fluidInputs(<liquid:curium_243>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:fission_dust:10>).fluidInputs(<liquid:europium_155>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:fission_dust:5>).fluidInputs(<liquid:strontium_90>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:fission_dust:7>).fluidInputs(<liquid:ruthenium_106>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:fission_dust:8>).fluidInputs(<liquid:caesium_137>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:fission_dust:9>).fluidInputs(<liquid:promethium_147>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:neptunium:5>).fluidInputs(<liquid:neptunium_237>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:neptunium>).fluidInputs(<liquid:neptunium_236>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_americium:2>).fluidInputs(<liquid:hea_242>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_americium>).fluidInputs(<liquid:lea_242>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_berkelium:2>).fluidInputs(<liquid:heb_248>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_berkelium>).fluidInputs(<liquid:leb_248>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_californium:2>).fluidInputs(<liquid:hecf_249>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_californium:4>).fluidInputs(<liquid:lecf_251>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_californium:6>).fluidInputs(<liquid:hecf_251>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_californium>).fluidInputs(<liquid:lecf_249>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_curium:10>).fluidInputs(<liquid:hecm_247>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_curium:2>).fluidInputs(<liquid:hecm_243>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_curium:4>).fluidInputs(<liquid:lecm_245>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_curium:6>).fluidInputs(<liquid:hecm_245>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_curium:8>).fluidInputs(<liquid:lecm_247>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_curium>).fluidInputs(<liquid:lecm_243>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_mixed:2>).fluidInputs(<liquid:mix_241>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_mixed>).fluidInputs(<liquid:mix_239>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_neptunium:2>).fluidInputs(<liquid:hen_236>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_neptunium>).fluidInputs(<liquid:len_236>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_plutonium:2>).fluidInputs(<liquid:hep_239>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_plutonium:4>).fluidInputs(<liquid:lep_241>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_plutonium:6>).fluidInputs(<liquid:hep_241>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_plutonium>).fluidInputs(<liquid:lep_239>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_thorium>).fluidInputs(<liquid:tbu>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_uranium:2>).fluidInputs(<liquid:heu_233>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_uranium:4>).fluidInputs(<liquid:leu_235>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_uranium:6>).fluidInputs(<liquid:heu_235>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:pellet_uranium>).fluidInputs(<liquid:leu_233>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:plutonium:10>).fluidInputs(<liquid:plutonium_241>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:plutonium:15>).fluidInputs(<liquid:plutonium_242>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:plutonium:5>).fluidInputs(<liquid:plutonium_239>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:plutonium>).fluidInputs(<liquid:plutonium_238>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:uranium:10>).fluidInputs(<liquid:uranium_238>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:uranium:5>).fluidInputs(<liquid:uranium_235>*144).duration(200).EUt(1024).buildAndRegister();
vacuum_freezer.recipeBuilder().outputs(<nuclearcraft:uranium>).fluidInputs(<liquid:uranium_233>*144).duration(200).EUt(1024).buildAndRegister();	

