import mods.gregtech.recipe.RecipeMap;
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val large_chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
mixer.recipeBuilder() 
	.fluidInputs(<liquid:ammonia>*1000,<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:nhfournothree>*2000)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
	.fluidInputs(<liquid:xishidujushixitunijiang>*10000)
    .outputs(<gregtech:meta_dust:32300>*9,<gregtech:meta_dust:356>*7,<gregtech:meta_dust:285>*2,<gregtech:meta_dust:284>*2)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32300>*9)
	.fluidInputs(<liquid:water>*6000)
    .fluidOutputs(<liquid:xishiliusuandujushi>*7000)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:xishiliusuandujushi>*9000)
	.fluidInputs(<liquid:nhfournothree>*1800)
	.outputs(<gregtech:meta_dust:32302>*3)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
	.inputs(<gregtech:meta_dust:32302>*10)
	.outputs(<gregtech:meta_dust:32303>*9,<gregtech:meta_dust:32304>*7)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();

val electric_blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("electric_blast_furnace");
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32304> * 1)
    .outputs(<gregtech:meta_dust:32305> * 1) 
    .property("temperature", 4500)
    .duration(1200)
    .EUt(120)
    .buildAndRegister();
	
val thermal_centrifuge = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
thermal_centrifuge.recipeBuilder() 
	.inputs(<gregtech:meta_dust:32305>*2)
	.outputs(<gregtech:meta_dust:109>,<gregtech:meta_dust:298>)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
chemical_bath.recipeBuilder() 
	.inputs(<gregtech:meta_dust:32303>)
	.fluidInputs(<liquid:nhfournothree>*320)
	.outputs(<gregtech:meta_dust:32306>)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
	.inputs(<gregtech:meta_dust:32306>*10)
	.outputs(<gregtech:meta_dust:32308>*9,<gregtech:meta_dust:32309>*9)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32309>) 
	.fluidInputs(<liquid:hydrofluoric_acid>*100)
	.outputs(<gregtech:meta_dust:32310>)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
	.inputs(<gregtech:meta_dust:32310>*10)
	.outputs(<gregtech:meta_dust:116>*5,<gregtech:meta_dust:117>*4)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32308> * 1)
    .outputs(<gregtech:meta_dust:32311> * 1) 
    .property("temperature", 4500)
    .duration(1200)
    .EUt(120)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32311>) 
	.fluidInputs(<liquid:nitric_acid>*500)
    .fluidOutputs(<liquid:nongsuodanhuadujushixiturongye>*1000)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<ore:dustBastnasite>*3) 
	.fluidInputs(<liquid:nongsuodanhuadujushixiturongye>*500)
    .fluidOutputs(<liquid:xiaosuandujushijinchuwu>*2000)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
	.fluidInputs(<liquid:xiaosuandujushijinchuwu>*10000)
	.outputs(<gregtech:meta_dust:32342>*1)
	.fluidOutputs(<liquid:nongsuoxiaosuandujushijinchuwu>*10000)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();

val vacuum_freezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");	
vacuum_freezer.recipeBuilder() 
	.outputs(<gregtech:meta_dust:32314>*1)
	.fluidInputs(<liquid:nongsuoxiaosuandujushijinchuwu>*10000)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
	.inputs(<gregtech:meta_dust:32314>*10)
	.outputs(<gregtech:meta_dust:32315>*9,<gregtech:meta_dust:3505>,<gregtech:meta_dust:3508>)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32315> * 1)
	.fluidInputs(<liquid:chlorine>*1000)
    .outputs(<gregtech:meta_dust:32316> * 1) 
    .property("temperature", 4500)
    .duration(1200)
    .EUt(120)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32316> * 1,<gregtech:meta_dust:32317> * 1)
	.fluidInputs(<liquid:acetone>*1000)
    .outputs(<gregtech:meta_dust:32318> * 1) 
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32318> * 4)
	.outputs(<gregtech:meta_dust:32319>*3)
	.fluidOutputs(<liquid:chloromethane>*400)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32319> * 3)
	.outputs(<gregtech:meta_dust:3507>*2,<gregtech:meta_dust:3506>*2)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
//============================================================
val cracker = mods.gregtech.recipe.RecipeMap.getByName("cracker");
cracker.recipeBuilder() 
	.fluidInputs(<liquid:steam>*1000,<liquid:futanlanshixituzhuorongye>*1000)
	.fluidOutputs(<liquid:zhengqiliejiefutanlanshixituzhuorongye>*1000)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<ore:dustSilicon>) 
	.fluidInputs(<liquid:hydrofluoric_acid>*6000,<liquid:hydrogen>*4000)
	.fluidOutputs(<liquid:fuguisuan>*1000)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<ore:gemSalt>*4) 
	.fluidInputs(<liquid:fuguisuan>*1000)
	.fluidOutputs(<liquid:fuguisuanna>*1000,<liquid:hydrochloric_acid>*2000)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
mixer.recipeBuilder() 
	.fluidInputs(<liquid:fuguisuanna>*320,<liquid:zhengqiliejiefutanlanshixituzhuorongye>*1000)
	.fluidOutputs(<liquid:tiaozhizhengqiliejiefutanlanshixituzhuorongye>*1320)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
	.fluidInputs(<liquid:xishifutanlanshinijiang>*10000)
	.outputs(<gregtech:meta_dust:356>*9,<gregtech:meta_dust:285>*7,<gregtech:meta_dust:284>*2)
	.fluidOutputs(<liquid:guolvxishifutanlanshinijiang>*400)
    .duration(20)
    .EUt(7800)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
	.fluidInputs(<liquid:guolvxishifutanlanshinijiang>*1000)
    .outputs(<gregtech:meta_dust:32327> * 1) 
    .property("temperature", 4500)
    .duration(1200)
    .EUt(120)
    .buildAndRegister();
	
chemical_bath.recipeBuilder() 
	.fluidInputs(<liquid:hydrochloric_acid>*500)
    .inputs(<gregtech:meta_dust:32327> * 1) 
	.outputs(<gregtech:meta_dust:32328> * 1)
    .duration(1200)
    .EUt(120)
    .buildAndRegister();
	
electric_blast_furnace.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32328> * 1) 
	.fluidInputs(<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_dust:32329> * 1) 
	.fluidOutputs(<liquid:fluorine>*13)
    .property("temperature", 4500)
    .duration(1200)
    .EUt(120)
    .buildAndRegister();
	
mixer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32329> * 1) 
	.fluidInputs(<liquid:water>*200)
    .outputs(<gregtech:meta_dust:32330> * 1) 
    .duration(300)
    .EUt(120)
    .buildAndRegister();
	
chemical_bath.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32330> * 1) 
	.fluidInputs(<liquid:fluorine>*4000)
    .outputs(<gregtech:meta_dust:32331> * 1) 
	.fluidOutputs(<liquid:hydrofluoric_acid>*4000)
    .duration(20)
    .EUt(120)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32331> * 1) 
    .outputs(<gregtech:meta_dust:32332> * 1,<gregtech:meta_dust:32342>) 
    .duration(300)
    .EUt(120)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32332> * 1) 
	.fluidInputs(<liquid:nitric_acid>*400)
    .outputs(<gregtech:meta_dust:32333> * 1) 
    .duration(600)
    .EUt(120)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32333> * 1) 
	.fluidInputs(<liquid:acetone>*1000)
    .fluidOutputs(<liquid:futanlanshihantuyanghuaxuanzhuo>*1000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();
	
centrifuge.recipeBuilder() 
	.fluidInputs(<liquid:futanlanshihantuyanghuaxuanzhuo>*10000)
    .outputs(<gregtech:meta_dust:32335>*8,<gregtech:meta_dust:32336>*5) 
	.fluidOutputs(<liquid:acetone>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32335> * 2) 
	.fluidInputs(<liquid:hydrochloric_acid>*1000)
    .outputs(<gregtech:meta_dust:3500>,<gregtech:meta_dust:3502>) 
    .duration(300)
    .EUt(120)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32336>) 
	.fluidInputs(<liquid:hydrofluoric_acid>*2000)
    .outputs(<gregtech:meta_dust:32337>) 
    .duration(600)
    .EUt(120)
    .buildAndRegister();
	
large_chemical_reactor.recipeBuilder() 
	.inputs(<gregtech:meta_dust:32337>*8,<gregtech:meta_dust:16>*4) 
    .outputs(<gregtech:meta_dust:3511>*1,<gregtech:meta_dust:32338>*4,<gregtech:meta_dust:3536>*12) 
    .duration(600)
    .EUt(120)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32338>) 
	.fluidInputs(<liquid:nhfournothree>*9000)
    .outputs(<gregtech:meta_dust:32339>) 
    .duration(1200)
    .EUt(120)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32339>*4,<gregtech:meta_dust:25>) 
    .outputs(<gregtech:meta_dust:32340>*2,<gregtech:meta_dust:32319>*2) 
    .duration(1200)
    .EUt(120)
    .buildAndRegister();
	
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
electrolyzer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32340>*5)
    .outputs(<gregtech:meta_dust:3501>)
	.fluidOutputs(<liquid:oxygen>*3000,<liquid:nitrogen>*1000)
    .duration(200)
    .EUt(32)
    .buildAndRegister();
	
//=============================
chemical_reactor.recipeBuilder() 
    .inputs(<ore:dustSugar>*24) 
	.notConsumable(<gregtech:meta_dust:32102>)
	.fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:caosuan>*3000,<liquid:nitric_oxide>*1000) 
    .duration(1200)
    .EUt(120)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32342>,<gregtech:meta_dust:2060>*3)
	.fluidInputs(<liquid:hydrogen>*1000)
	.outputs(<gregtech:meta_dust:32343>)
    .fluidOutputs(<liquid:ammonia>*3000,<liquid:steam>*1000) 
    .duration(1200)
    .EUt(120)
    .buildAndRegister();	
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32343>)
	.fluidInputs(<liquid:caosuan>*3000)
    .fluidOutputs(<liquid:caosuanshi>*5000,<liquid:hydrochloric_acid>*6000) 
    .duration(120)
    .EUt(120)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .fluidInputs(<liquid:caosuanshi>*5000) 
    .inputs(<gregtech:meta_dust:18>*3)
    .outputs(<gregtech:meta_dust:32344>)
	.fluidOutputs(<liquid:carbon_monoxide>*9000)
    .duration(200)
    .EUt(32)
    .buildAndRegister();
	
electrolyzer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32344>*5)
    .outputs(<gregtech:meta_dust:20>*2)
	.fluidOutputs(<liquid:oxygen>*3000)
    .duration(200)
    .EUt(32)
    .buildAndRegister();
	
chemical_reactor.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32317>*2,<gregtech:meta_dust:16>*3)
    .outputs(<gregtech:meta_dust:32346>*1,<gregtech:meta_dust:2015>*5)
    .duration(1200)
    .EUt(120)
    .buildAndRegister();
	
electrolyzer.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32346>*7)
    .outputs(<gregtech:meta_dust:95>)
    .duration(200)
    .EUt(32)
    .buildAndRegister();