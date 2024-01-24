// 史莱姆->胶水
mods.gregtech.extractor.recipeBuilder()
    .inputs(ore('blockSlime'))
    .fluidOutputs(fluid('glue')*100)
	.EUt(30)
    .duration(200) 
    .buildAndRegister()

mods.gregtech.extractor.recipeBuilder()
    .inputs(ore('blockSlimeCongealed'))
    .fluidOutputs(fluid('glue')*500)
	.EUt(30)
    .duration(200) 
    .buildAndRegister()

mods.gregtech.extractor.recipeBuilder()
    .inputs(ore('slimeball'))
    .fluidOutputs(fluid('glue')*10)
	.EUt(30)
    .duration(200) 
    .buildAndRegister()
	