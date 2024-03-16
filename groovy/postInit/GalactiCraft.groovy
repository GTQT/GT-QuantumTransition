import gregtech.recipes.builders.*

def assembly_line = mods.gregtech.assembly_line
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('gtqtspace:gtqt_space_meta_item_1', 1),item('galaxyspace:rocket_modules'),item('galacticraftcore:nose_cone'),item('galacticraftcore:rocket_fins')*4,item('galacticraftcore:engine')*4,item('galacticraftcore:heavy_plating')*32)
    .outputs(item('galacticraftcore:rocket_t1', 3))
    .duration(2000) // 10 seconds
    .EUt(480) // HV recipe
    .buildAndRegister()
	
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('gtqtspace:gtqt_space_meta_item_1', 2),item('galaxyspace:rocket_modules', 1),item('galacticraftcore:nose_cone'),item('galacticraftcore:engine', 1)*2,item('galacticraftcore:rocket_fins')*8,item('galacticraftcore:engine')*8,item('galacticraftplanets:item_basic_mars', 3))
    .outputs(item('galacticraftplanets:rocket_t2', 3))
    .duration(2000) // 10 seconds
    .EUt(1960) // HV recipe
	.scannerResearch(b -> b.researchStack(item('galacticraftcore:schematic', 1)).duration(1200).EUt(480))
    .buildAndRegister()
	
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('gtqtspace:gtqt_space_meta_item_1', 3),item('galaxyspace:rocket_modules', 2),item('galaxyspace:rocket_parts'),item('galaxyspace:rocket_parts', 1)*8,item('galaxyspace:rocket_parts', 2)*4,item('galaxyspace:rocket_parts', 3)*2,item('galaxyspace:rocket_parts', 4)*4)
    .outputs(item('galacticraftplanets:rocket_t3', 3))
    .duration(2000) // 10 seconds
    .EUt(7680) // HV recipe
	.scannerResearch(b -> b.researchStack(item('galacticraftcore:schematic', 1)).duration(1200).EUt(480))
    .buildAndRegister()
	
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('gtqtspace:gtqt_space_meta_item_1', 4),item('galaxyspace:rocket_modules', 2),item('galaxyspace:rocket_parts',5),item('galaxyspace:rocket_parts', 6)*8,item('galaxyspace:rocket_parts', 7)*4,item('galaxyspace:rocket_parts', 8)*2,item('galaxyspace:rocket_parts', 9)*2)
    .outputs(item('galaxyspace:rocket_tier_4', 3))
    .duration(2000) // 10 seconds
    .EUt(7680) // HV recipe
	.scannerResearch(b -> b.researchStack(item('galaxyspace:rocket_modules', 8)).duration(1200).EUt(480))
    .buildAndRegister()
	
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('gtqtspace:gtqt_space_meta_item_1', 5),item('galaxyspace:rocket_modules', 2),item('galaxyspace:rocket_parts', 10),item('galaxyspace:rocket_parts', 11)*8,item('galaxyspace:rocket_parts', 12)*4,item('galaxyspace:rocket_parts', 13)*2,item('galaxyspace:rocket_parts', 14)*2)
    .outputs(item('galaxyspace:rocket_tier_5', 3))
    .duration(2000) // 10 seconds
    .EUt(7680) // HV recipe
	.scannerResearch(b -> b.researchStack(item('galaxyspace:rocket_modules', 9)).duration(1200).EUt(480))
    .buildAndRegister()
	
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('gtqtspace:gtqt_space_meta_item_1', 6),item('galaxyspace:rocket_modules', 2),item('galaxyspace:rocket_parts', 15),item('galaxyspace:rocket_parts', 16)*8,item('galaxyspace:rocket_parts', 17)*4,item('galaxyspace:rocket_parts', 18)*2,item('galaxyspace:rocket_parts', 19)*2)
    .outputs(item('galaxyspace:rocket_tier_6', 3))
    .duration(2000) // 10 seconds
    .EUt(7680) // HV recipe
	.scannerResearch(b -> b.researchStack(item('galaxyspace:rocket_modules', 10)).duration(1200).EUt(480))
    .buildAndRegister()
	
//助推剂
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galacticraftcore:air_vent')*2,item('galacticraftcore:item_basic_moon', 1)*2,item('galacticraftcore:heavy_plating')*6,item('gregtech:meta_item_1', 82)*2)
    .outputs(item('galacticraftcore:engine', 1))
    .duration(200) 
    .EUt(480) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 4)).duration(1200).EUt(480))
    .buildAndRegister()
//助推器
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galacticraftcore:heavy_plating')*6,item('galacticraftplanets:item_basic_asteroids', 6)*3,item('galacticraftcore:air_vent')*2,item('galacticraftcore:engine')*2)
    .outputs(item('galacticraftcore:spin_thruster'))
    .duration(200) 
    .EUt(480) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 4)).duration(1200).EUt(480))
    .buildAndRegister()
	
//T3头
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galacticraftplanets:item_basic_asteroids', 5)*12,item('galacticraftcore:air_vent')*2,item('galacticraftcore:air_fan')*2,item('galacticraftcore:enclosed', 14)*2,item('galacticraftcore:buggymat', 1),item('galacticraftcore:oxygen_tank_heavy_full'),item('galaxyspace:rocket_modules', 2),item('galacticraftcore:engine')*2)
    .outputs(item('galaxyspace:rocket_parts'))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics')).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galacticraftplanets:item_basic_asteroids', 5)*12,item('galaxyspace:rocket_modules', 3)*4,item('galacticraftcore:spin_thruster')*2,item('galacticraftcore:engine')*2,item('galacticraftcore:basic_item', 20),item('galacticraftcore:basic_item', 19),item('galacticraftcore:oxygen_concentrator'),item('galacticraftcore:basic_item', 14))
    .outputs(item('galaxyspace:rocket_parts', 1))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 1)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galacticraftplanets:item_basic_asteroids', 5)*8,item('galacticraftcore:fluid_pipe')*4,item('galaxyspace:rocket_parts', 3)*4,item('gregtech:meta_item_1', 82)*2,item('galacticraftplanets:item_basic_asteroids', 1))
    .outputs(item('galaxyspace:rocket_parts', 2))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 2)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galacticraftplanets:item_basic_asteroids', 5)*8,item('gregtech:meta_item_1', 82),item('galacticraftcore:fluid_pipe'),item('galacticraftplanets:item_basic_asteroids', 1))
    .outputs(item('galaxyspace:rocket_parts', 3))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 3)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galacticraftplanets:item_basic_asteroids', 5)*12)
    .outputs(item('galaxyspace:rocket_parts', 4))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 4)).duration(1200).EUt(480))
    .buildAndRegister()

//4
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp')*12,item('galacticraftcore:air_vent')*2,item('galacticraftcore:air_fan')*2,item('galacticraftcore:enclosed', 14)*2,item('galacticraftcore:buggymat', 1),item('galacticraftcore:oxygen_tank_heavy_full'),item('galaxyspace:rocket_modules', 2),item('galacticraftcore:engine')*2)
    .outputs(item('galaxyspace:rocket_parts', 5))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics')).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp')*12,item('galaxyspace:rocket_modules', 3)*4,item('galacticraftcore:spin_thruster')*2,item('galacticraftcore:engine')*2,item('galacticraftcore:basic_item', 20),item('galacticraftcore:basic_item', 19),item('galacticraftcore:oxygen_concentrator'),item('galacticraftcore:basic_item', 14))
    .outputs(item('galaxyspace:rocket_parts', 6))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 1)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp')*8,item('galacticraftcore:fluid_pipe')*4,item('galaxyspace:rocket_parts', 8)*4,item('gregtech:meta_item_1', 82)*2,item('galacticraftplanets:item_basic_asteroids', 1))
    .outputs(item('galaxyspace:rocket_parts', 7))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 2)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp')*8,item('gregtech:meta_item_1', 82),item('galacticraftcore:fluid_pipe'),item('galacticraftplanets:item_basic_asteroids', 1))
    .outputs(item('galaxyspace:rocket_parts', 8))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 3)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp')*12)
    .outputs(item('galaxyspace:rocket_parts', 9))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 4)).duration(1200).EUt(480))
    .buildAndRegister()
	
//5
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp', 1)*12,item('galacticraftcore:air_vent')*2,item('galacticraftcore:air_fan')*2,item('galacticraftcore:enclosed', 14)*2,item('galacticraftcore:buggymat', 1),item('galacticraftcore:oxygen_tank_heavy_full'),item('galaxyspace:rocket_modules', 2),item('galacticraftcore:engine')*2)
    .outputs(item('galaxyspace:rocket_parts',10))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics')).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp', 1)*12,item('galaxyspace:rocket_modules', 3)*4,item('galacticraftcore:spin_thruster')*2,item('galacticraftcore:engine')*2,item('galacticraftcore:basic_item', 20),item('galacticraftcore:basic_item', 19),item('galacticraftcore:oxygen_concentrator'),item('galacticraftcore:basic_item', 14))
    .outputs(item('galaxyspace:rocket_parts', 11))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 1)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp', 1)*8,item('galacticraftcore:fluid_pipe')*4,item('galaxyspace:rocket_parts', 13)*4,item('gregtech:meta_item_1', 82)*2,item('galacticraftplanets:item_basic_asteroids', 1))
    .outputs(item('galaxyspace:rocket_parts', 12))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 2)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp', 1)*8,item('gregtech:meta_item_1', 82),item('galacticraftcore:fluid_pipe'),item('galacticraftplanets:item_basic_asteroids', 1))
    .outputs(item('galaxyspace:rocket_parts', 13))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 3)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp', 1)*12)
    .outputs(item('galaxyspace:rocket_parts', 14))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 4)).duration(1200).EUt(480))
    .buildAndRegister()
	
//6
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp',2)*12,item('galacticraftcore:air_vent')*2,item('galacticraftcore:air_fan')*2,item('galacticraftcore:enclosed', 14)*2,item('galacticraftcore:buggymat', 1),item('galacticraftcore:oxygen_tank_heavy_full'),item('galaxyspace:rocket_modules', 2),item('galacticraftcore:engine')*2)
    .outputs(item('galaxyspace:rocket_parts',15))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics')).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp',2)*12,item('galaxyspace:rocket_modules', 3)*4,item('galacticraftcore:spin_thruster')*2,item('galacticraftcore:engine')*2,item('galacticraftcore:basic_item', 20),item('galacticraftcore:basic_item', 19),item('galacticraftcore:oxygen_concentrator'),item('galacticraftcore:basic_item', 14))
    .outputs(item('galaxyspace:rocket_parts', 16))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 1)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp',2)*8,item('galacticraftcore:fluid_pipe')*4,item('galaxyspace:rocket_parts', 18)*4,item('gregtech:meta_item_1', 82)*2,item('galacticraftplanets:item_basic_asteroids', 1))
    .outputs(item('galaxyspace:rocket_parts', 17))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 2)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp',2)*8,item('gregtech:meta_item_1', 82),item('galacticraftcore:fluid_pipe'),item('galacticraftplanets:item_basic_asteroids', 1))
    .outputs(item('galaxyspace:rocket_parts', 18))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 3)).duration(1200).EUt(480))
    .buildAndRegister()
//
mods.gregtech.assembly_line.recipeBuilder()
    .inputs(item('galaxyspace:hdp',2)*12)
    .outputs(item('galaxyspace:rocket_parts', 19))
    .duration(2000) 
    .EUt(7680) 
	.scannerResearch(b -> b.researchStack(item('galaxyspace:schematics', 4)).duration(1200).EUt(480))
    .buildAndRegister()
	
