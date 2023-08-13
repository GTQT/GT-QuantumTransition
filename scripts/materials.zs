#loader gregtech
#priority 10000

import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Elements;
import mods.gregtech.blocks.HeatingCoils;
MaterialBuilder(32001, "infused_air")
    .color(0xFEFE7D)
    .ore()
    .build();
MaterialBuilder(32002, "infused_fire")
    .color(0xFE3C01)
    .ore()
    .build();
MaterialBuilder(32003, "infused_water")
    .color(0x0090FF)
    .ore()
    .build();
MaterialBuilder(32004, "infused_earth")
    .color(0x00A000)
    .ore()
    .build();
MaterialBuilder(32005, "infused_entropy")
    .color(0x43435E)
    .ore()
    .build();
MaterialBuilder(32006, "infused_order")
    .color(0xEECCFF)
    .ore()
    .build();

MaterialBuilder(32008, "void")
    .ingot().fluid()
    .color(0x2A1248).iconSet("SHINY")
.flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_gear","generate_spring_small", "generate_small_gear"])
    .build();
	
MaterialBuilder(32009, "amber")
    .gem()
    .color(0xDA803D).iconSet("RUBY")
    .flags(["generate_plate", "disable_decomposition", "no_smelting", "crystallizable"])
    .ore()
    .components([
    <material:carbon> * 10,
    <material:hydrogen> * 10,
    <material:oxygen> * 16
    ])
    .build();

MaterialBuilder(32025, "redstone_alloy")
    .ingot().fluid()
    .color(0x943423).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:redstone>* 1,
    <material:hydrogen> * 1,
    <material:oxygen> * 1
    ])
    .cableProperties(32, 1, 2)
    .blastTemp(1200,"LOW",120,800)
    .build();

MaterialBuilder(32010, "pulsating_iron")
    .ingot().fluid()
    .color(0x4b915b).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:ender_pearl> * 1,
    <material:iron> * 1,
    <material:redstone_alloy> * 1
    ])
    .blastTemp(1800,"LOW",120, 1600)
    .build();

MaterialBuilder(32014, "conductive_iron")
    .ingot().fluid()
    .color(0xb89791).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:silver> * 1,
    <material:iron> * 1,
    <material:redstone_alloy> * 1
    ])
    .build();

MaterialBuilder(32012, "energetic_alloy")
    .ingot().fluid()
    .color(0xd89045).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:black_steel>* 1,
    <material:gold>* 1,
    <material:conductive_iron>* 1
    ])
    .blastTemp(2500,"MID",160,3200)
    .cableProperties(512, 2, 4)
    .build();

MaterialBuilder(32011, "vibrant_alloy")
    .ingot().fluid()
    .color(0x859f2d).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:ender_eye>* 1,
    <material:energetic_alloy>* 1,
    <material:chromite>* 1
    ])
    .blastTemp(3600,"MID",120, 6000)
    .cableProperties(2048, 4, 4)
    .build();

MaterialBuilder(32013, "soularium")
    .ingot().fluid()
    .color(0x372719).iconSet("INGOT")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .blastTemp(1000,"HIGHEST",120,1027)
    .components([<material:gold> * 1,<material:ash> * 1])
    .build();

MaterialBuilder(32017, "electrical_steel")
    .ingot().fluid()
    .color(0x9d9d9d).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:steel>* 1,
    <material:coal>* 1,
    <material:silicon>* 1
    ])
    .cableProperties(128, 2, 2)
    .blastTemp(1200,"MID",120,2400)
    .build();

MaterialBuilder(32015, "dark_steel")
    .ingot().fluid()
    .color(0x2f292f).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod","generate_long_rod","generate_ring","generate_frame","generate_gear", "generate_fine_wire"])
    .components([
    <material:electrical_steel>* 1,
    <material:coal>* 1,
    <material:obsidian>* 1
    ])
    .blastTemp(1800,"LOW",120,1000)
    .build();

MaterialBuilder(32016, "end_steel")
    .ingot().fluid()
    .color(0xbdb88c).iconSet("INGOT")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:dark_steel>* 1,
    <material:endstone>* 1,
    <material:tungsten_steel>* 1
    ])
    .blastTemp(4500,"HIGHEST",1920,1233)
    .build();

MaterialBuilder(32018, "meteoric_iron")
    .ingot().fluid()
    .color(0x666a45).iconSet("INGOT")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .ore()
    .blastTemp(1000,"LOW",120,1000)
    .build();

MaterialBuilder(32019, "desh")
    .ingot().fluid()
    .color(0x777777).iconSet("INGOT")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .ore()
    .blastTemp(2500,"LOW",480,2800)
    .build();

MaterialBuilder(32020, "xb_draconium")
    .ingot().fluid().ore()
    .color(0x6C3A9A).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .blastTemp(7200,"HIGHER",30720,2000)
    .cableProperties(8388608, 8, 32)
    .build();

MaterialBuilder(32021, "xb_draconium_awakened")
    .ingot().fluid()
    .color(0xFF9C00).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .blastTemp(9900,"HIGHEST",122880,2500)
    .cableProperties(2147483640, 1, 16)
    .fluidPipeProperties(10000000,150000,true)
    .build();

MaterialBuilder(32022, "ardite")
    .ingot().fluid().ore()
    .color(0xCF4110).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .build();

MaterialBuilder(32023, "ichorium")
    .ingot().fluid()
    .color(0xCC7406).iconSet("SHINY")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame","generate_small_gear"])
    .build();

MaterialBuilder(32024, "manyullyn")
    .ingot().fluid()
    .color(0x7131AC).iconSet("SHINY")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring", "generate_spring"])
    .blastTemp(3300,"MID",480,1500)
    .build();

MaterialBuilder(32026, "crystalline_alloy")
    .ingot().fluid()
    .color(0x8FE3F7).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:pulsating_iron> * 1,
    <material:diamond> * 1,
    <material:emerald>* 1,
    <material:gold>* 1
    ])
    .blastTemp(4500,"HIGH",1233, 1920)
    .build();

MaterialBuilder(32027, "melodic_alloy")
    .ingot().fluid()
    .color(0xA877A8).iconSet("SHINY")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:end_steel>* 1,
    <material:ender_eye>* 1,
    <material:bismuth>* 1
    ])
    .blastTemp(5400,"HIGH",1260, 1920)
    .cableProperties(8192, 4, 4)
    .build();

MaterialBuilder(32028, "stellar_alloy")
    .ingot().fluid()
    .color(0xCCCCCC).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:melodic_alloy>* 1,
    <material:nether_star>* 1,
    <material:naquadah>* 1
    ])
    .cableProperties(32768, 6, 8)
    .blastTemp(7200,"HIGHEST",4990, 30720)
    .build();

MaterialBuilder(32029, "crude_steel")
    .ingot().fluid()
    .color(0x807C74).iconSet("ROUGH")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:clay>* 1,
    <material:flint>* 1,
    <material:stone>* 1
    ])
    .build();

MaterialBuilder(32030, "crystalline_pink_slime")
    .ingot().fluid()
    .color(0xE79EDB).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:crystalline_alloy>* 1,
    <material:diamond>* 1,
    <material:raw_rubber>* 1
    ])
    .blastTemp(5000,"LOW", 1849, 1920)
    .build();

MaterialBuilder(32031, "energetic_silver")
    .ingot().fluid()
    .color(0x598DB3).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:silver>* 1,
    <material:conductive_iron>* 1,
    <material:black_steel>* 1
    ])
    .build();

MaterialBuilder(32032, "vivid_alloy")
    .ingot().fluid()
    .color(0x469BB1).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .components([
    <material:chromite>* 1,
    <material:energetic_silver>* 1,
    <material:ender_eye>* 1
    ])
    .blastTemp(3000,"LOW",120,3000)
    .build();

MaterialBuilder(32033, "crystalized")
    .ingot().fluid()
    .color(0x0000FF).iconSet("INGOT")
    .ore()
    .blastTemp(1000,"LOW",120,1000)
    .build();
	
MaterialBuilder(32034, "menrilresin")
    .ingot().fluid()
    .color(0x469BB1).iconSet("INGOT")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .blastTemp(3600,"LOW",2048,2800)
    .build();
	
MaterialBuilder(32035, "cryolite")
    .ingot()
    .color(0x674FAF).iconSet ("INGOT")
	.ore()
    .build();
	
//贵金属
MaterialBuilder(32036, "preciousalloy")
    .ingot().fluid()
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
	.ore()
    .color(0xEFEF80).iconSet("INGOT")
    .element("AuCu")
	.blastTemp(3600,"LOW",120,1000)
    .build();

//mysterious
MaterialBuilder(32042, "mysterious")
    .dust().fluid()
	.ore()
    .color(0xEAAF80).iconSet("DUST")
    .build();

//金浸出物粉
MaterialBuilder(32037, "golda")
    .dust()
    .color(0xEFEF80).iconSet("DUST")
    .element("Au")
    .flags("no_unification")
    .build();

//铜浸出物粉
MaterialBuilder(32038, "coppera")
    .dust()
    .color(0xF7AE80).iconSet("DUST")
    .element("Cu")
    .flags("no_unification")
    .build();

//焦硫酸钾
MaterialBuilder(32039, "potassiumpyrosulfate")
    .dust()
    .fluid()
	.color(0xF1AB10).iconSet("DUST")
    .components([<material:potassium> * 2, <material:sulfur> * 2, <material:oxygen> * 7])
    .colorAverage()
    .flags("no_unification")
    .build();

//金浸出液
MaterialBuilder(32040, "goldcl")
    .fluid().dust()
    .color(0x92AFAD).iconSet("DUST")
    .build();

//碘
MaterialBuilder(32041, "iodine")
    .dust()
    .fluid()
	.color(0xF1AB10).iconSet("DUST")
    .colorAverage()
    .flags("no_unification")
    .components([<material:iodine> * 1])
    .build();
	
//镀锌钢
MaterialBuilder(32046, "znfe")
    .ingot().fluid()
    .color(0x807C74).iconSet("INGOT")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .element("ZnFe")
    .build();
	
//锆
MaterialBuilder(32047, "hf")
    .ingot().fluid()
    .color(0x9d9d9d).iconSet("INGOT")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .element("hf")
    .build();
//无尽
MaterialBuilder(32048, "infinity")
    .ingot().fluid()
    .color(0x9d9d9d).iconSet("INGOT")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();
	

//植物魔法材料
# 活石
MaterialBuilder(32049, "livingrock")
    .ingot()
    .color(0xFDF5E6)
    .iconSet("INGOT")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();

# 魔力钢
MaterialBuilder(32043, "manasteel")
    .ingot()
    .color(0x00BFFF)
    .iconSet("INGOT")
    .blastTemp(1400, "LOW", 386, 250)
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();

# 源质钢锭
MaterialBuilder(32044, "elven_elementium")
    .ingot()
    .color(0xFF69B4)
    .iconSet("INGOT")
    .blastTemp(2400, "MID", 768, 300)
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();

# 神话钢锭
MaterialBuilder(32045, "terrasteel")
    .ingot().fluid()
    .color(0x2A1248)
    .iconSet("INGOT")
    .blastTemp(3200, "MID", 2048, 350)
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();


var kaemanite = MaterialBuilder(32100, "kaemanite")
    .dust()
    .components([<material:trinium> * 1, <material:tantalum> * 1, <material:oxygen> * 4])
    .color(0xe7413c).iconSet("bright")
    .ore()
    .addOreByproducts(<material:niobium>, <material:trinium_sulfide>, <material:trinium>)
    .build();

var sodium_metavanadate = MaterialBuilder(32101, "sodium_metavanadate")
    .dust()
    .flags("disable_decomposition")
    .color(0xe6bb22).iconSet("dull")
    .components([<material:sodium> * 1, <material:vanadium> * 1, <material:oxygen> * 3])
    .build();

var vanadium_pentoxide = MaterialBuilder(32102, "vanadium_pentoxide")
    .dust()
    .color(0xffcf33).iconSet("rough")
    .components([<material:vanadium> * 2, <material:oxygen> * 5])
    .build();

var ammonium_metavanadate = MaterialBuilder(32103, "ammonium_metavanadate")
    .dust()
    .flags("disable_decomposition")
    .color(0xf7e37e).iconSet("dull")
    .components([<material:nitrogen> * 1, <material:hydrogen> * 4, <material:vanadium> * 1, <material:oxygen> * 3])
    .build();

var naquadah_oxide = MaterialBuilder(32104, "naquadah_oxide")
    .dust()
    .flags("disable_decomposition")
    .color(0x17ddd3).iconSet("rough")
    .components([<material:naquadah> * 2, <material:oxygen> * 3])
    .build();
var pyromorphite = MaterialBuilder(32105, "pyromorphite")
    .dust()
    .flags("disable_decomposition")
    .color(0xd3ed28).iconSet("rough")
    .components([<material:lead> * 5, <material:phosphate> * 3, <material:chlorine> * 1])
    .build();
var naquadah_hydroxide = MaterialBuilder(32106, "naquadah_hydroxide")
    .dust()
    .color(0x1941a6).iconSet("dull")
    .components([<material:naquadah> * 1, <material:hydrogen> * 3, <material:oxygen> * 3])
    .build();
<material:naquadah_hydroxide>.setFormula("Nq(OH)3", true);

var snowchestite = MaterialBuilder(32107, "snowchestite")
    .dust().ore()
    .flags("disable_decomposition")
    .color(0x274c9f).iconSet("shiny")
    .components([<material:naquadah_oxide> * 3, <material:pyromorphite> * 1])
    .addOreByproducts(<material:caesium>, <material:vanadium_magnetite>, <material:naquadah_hydroxide>)
    .build();

var caesium_hydroxide = MaterialBuilder(32108, "caesium_hydroxide")
    .dust()
    .flags("disable_decomposition")
    .color(0xbd8340).iconSet("dull")
    .components([<material:caesium> * 1, <material:oxygen> * 1, <material:hydrogen> * 1])
    .build();

var lead_metasilicate = MaterialBuilder(32109, "lead_metasilicate")
    .dust()
    .color(0xF7F7E7).iconSet("dull")
    .components([<material:lead> * 1, <material:silicon> * 1, <material:oxygen> * 3])
    .build();

var platinum_metallic = MaterialBuilder(32110, "platinum_metallic")
    .dust()
    .color(0xfffbc5).iconSet("metallic")
    .flags("disable_decomposition")
    .components([<material:platinum> * 1, <material:rare_earth> * 1])
    .build();

var palladium_metallic = MaterialBuilder(32111, "palladium_metallic")
    .dust()
    .color(0x808080).iconSet("metallic")
    .flags("disable_decomposition")
    .components([<material:palladium> * 1, <material:rare_earth> * 1])
    .build();

var potassium_bisulfate = MaterialBuilder(32112, "potassium_bisulfate")
    .dust()
    .color(0xfdbd68)
    .components([<material:potassium> * 1, <material:hydrogen> * 1, <material:sulfur> * 1, <material:oxygen> * 4])
    .build();

var potassium_pyrosulfate = MaterialBuilder(32113, "potassium_pyrosulfate")
    .dust()
    .color(0xfbbb66)
    .components([<material:potassium> * 2, <material:sulfur> * 2, <material:oxygen> * 7])
    .build();

var potassium_sulfate = MaterialBuilder(32114, "potassium_sulfate")
    .dust()
    .color(0xf0b064).iconSet("metallic")
    .components([<material:potassium> * 2, <material:sulfur> * 1, <material:oxygen> * 4])
    .build();

var iridium_dioxide_residue = MaterialBuilder(32115, "iridium_dioxide_residue")
    .dust()
    .color(0x17182e).iconSet("rough")
    .flags("disable_decomposition")
    .components([<material:iridium> * 1, <material:oxygen> * 2, <material:rare_earth> * 1])
    .build();

var ammonium_hexachloroiridiate = MaterialBuilder(32116, "ammonium_hexachloroiridiate")
    .dust()
    .color(0x644629).iconSet("rough")
    .flags("disable_decomposition")
    .components([<material:nitrogen> * 2, <material:hydrogen> * 8, <material:iridium> * 1, <material:chlorine> * 6])
    .build();
<material:ammonium_hexachloroiridiate>.setFormula("(NH4)2IrCl6", true);

var crude_platinum_residue = MaterialBuilder(32117, "crude_platinum_residue")
    .dust()
    .color(0xfffbc5).iconSet("dull")
    .flags("disable_decomposition")
    .components([<material:platinum_raw> * 1])
    .build();

var crude_palladium_residue = MaterialBuilder(32118, "crude_palladium_residue")
    .dust()
    .color(0x909090).iconSet("dull")
    .flags("disable_decomposition")
    .components([<material:palladium_raw> * 1])
    .build();

var iridium_group_sludge = MaterialBuilder(32119, "iridium_group_sludge")
    .dust()
    .color(0x644629).iconSet("dull")
    .flags("disable_decomposition")
    .components([<material:iridium> * 1, <material:osmium> * 1, <material:ruthenium> * 1, <material:rare_earth> * 1])
    .build();

var crude_rhodium_residue = MaterialBuilder(32120, "crude_rhodium_residue")
    .dust()
    .color(0x666666).iconSet("dull")
    .flags("disable_decomposition")
    .components([<material:rhodium> * 2, <material:water> * 1])
    .build();

var sodium_methoxide = MaterialBuilder(32121, "sodium_methoxide")
    .dust()
    .color(0xd0d0f0).iconSet("dull")
    .flags("disable_decomposition")
    .components([<material:carbon> * 1, <material:hydrogen> * 3, <material:oxygen> * 1, <material:sodium> * 1])
    .build();

var stone_residue = MaterialBuilder(32122, "stone_residue")
    .dust()
    .color(0x4d4d4d).iconSet("rough")
    .flags("disable_decomposition")
    .build();

var uncommon_residue = MaterialBuilder(32123, "uncommon_residue")
    .dust()
    .color(0x4d4ded).iconSet("fine")
    .flags("disable_decomposition")
    .build();

var oxidised_residue = MaterialBuilder(32124, "oxidised_residue")
    .dust()
    .color(0xad4d4d).iconSet("fine")
    .flags("disable_decomposition")
    .build();

var refined_residue = MaterialBuilder(32125, "refined_residue")
    .dust()
    .color(0x2a8a21).iconSet("shiny")
    .flags("disable_decomposition")
    .build();

var clean_inert_residue = MaterialBuilder(32126, "clean_inert_residue")
    .dust()
    .color(0x3bbd2f).iconSet("shiny")
    .flags("disable_decomposition")
    .build();

var darmstadtite = MaterialBuilder(32127, "darmstadtite")
    .dust().ore(2)
    .colorAverage().iconSet("dull")
    .components([<material:darmstadtium> * 2, <material:sulfur> * 3])
    .addOreByproducts([<material:rare_earth>, <material:rhodium_sulfate>, <material:darmstadtium>])
    .build();

var dulysite = MaterialBuilder(32128, "dulysite")
    .gem().ore(2)
    .colorAverage().iconSet("ruby")
    .components([<material:duranium> * 1, <material:chlorine> * 3])
    .addOreByproducts([<material:sphalerite>, <material:duranium>, <material:europium>])
    .build();
	
var microversium = MaterialBuilder(32129, "microversium")
    .ingot()
    .color(0x9b61b8).iconSet("dull")
    .flags("generate_plate", "generate_frame")
    .build();

var draconic_superconductor = MaterialBuilder(32130, "draconic_superconductor")
    .ingot()
    .color(0xf5f0f4).iconSet("shiny")
    .cableProperties(2147483647, 4, 0, true)
    .build();

var osmiridium_8020 = MaterialBuilder(32131, "osmiridium_8020")
    .dust()
    .components([<material:osmium> * 4, <material:iridium> * 1])
    .colorAverage()
    .ore()
    .addOreByproducts(<material:osmium>, <material:iridium>, <material:ruthenium>)
    .build();

var iridosmine_8020 = MaterialBuilder(32132, "iridosmine_8020")
    .dust()
    .components([<material:iridium> * 4, <material:osmium> * 1])
    .colorAverage()
    .ore()
    .addOreByproducts(<material:iridium>, <material:osmium>, <material:rhodium>)
    .build();
	
//氯铂酸钾
MaterialBuilder(32133, "potassium_tetrachloroplatinate")
    .dust().fluid()
    .color(0x372719).iconSet("DUST")
	.components([<material:potassium>*2,<material:platinum> * 1,<material:chlorine> * 1])
    .build();	

//氯化镍
MaterialBuilder(32134, "nickel_chloride_dust")
    .dust()
    .color(0xbdb88c).iconSet("DUST")
	.components([<material:nickel>*1,<material:chlorine> * 2])
    .build();	
	
//四（亚磷酸三苯酯）镍
MaterialBuilder(32135, "nickel_triphenylphosphite")
    .dust()
    .color(0x372719).iconSet("DUST")
	.components([<material:carbon>*36,<material:hydrogen> * 30,<material:chlorine> * 2,<material:nickel	> * 2,<material:phosphorus> * 2])
    .build();	
	
//环辛二烯
MaterialBuilder(32136, "cyclooctadiene")
    .dust()
    .color(0x666a45).iconSet("DUST")
    .components([<material:carbon>*8,<material:hydrogen> * 12])
    .build();	
	
//二氯环辛二烯铂
MaterialBuilder(32137, "dichlorocyclooctadieneplatinium")
    .dust()
    .color(0x9d9d9d).iconSet("DUST")
	.components([<material:carbon>*8,<material:hydrogen> * 12,<material:chlorine> * 2,<material:platinum>*1])
    .build();	

//氯化钾
MaterialBuilder(32138, "potassium_chloride")
    .dust()
    .color(0x777777).iconSet("DUST")
	.components([<material:potassium>*1,<material:chlorine>* 1])
    .build();	
	
//联苯
MaterialBuilder(32139, "biphenyl")
    .dust()
    .color(0x2f292f).iconSet("DUST")
    .components([<material:carbon>*12,<material:hydrogen> * 10])
    .build();	
		
//硫酸铵
MaterialBuilder(32140, "ammonium_sulfate")
    .dust().fluid()
    .color(0xd89045).iconSet("DUST")
    .components([<material:nitrogen>*2,<material:hydrogen> * 8,<material:sulfur>*1,<material:oxygen>*4])
    .build();	
	
//二碘代联苯
MaterialBuilder(32141, "diiodobiphenyl")
    .dust().fluid()
    .color(0x859f2d).iconSet("DUST")
    .components([<material:carbon>*12,<material:hydrogen> * 18,<material:iodine> * 1])
    .build();	

//过硫酸铵
MaterialBuilder(32142, "ammonium_persulfate")
    .dust().fluid()
    .color(0x859f2d).iconSet("DUST")
    .components([<material:nitrogen>*2,<material:hydrogen> * 8,<material:sulfur>*2,<material:oxygen>*8])
    .build();	
	
//氯化银
MaterialBuilder(32143, "silver_chloride_dust")
    .dust().fluid()
    .color(0x372719).iconSet("DUST")
    .components([<material:silver>*1,<material:chlorine> * 1])
    .build();	
	
//氧化银
MaterialBuilder(32144, "silver_oxide_dust")
    .dust().fluid()
    .color(0x9d9d9d).iconSet("DUST")
    .components([<material:silver>*2,<material:oxygen> * 1])
    .build();	
	
//四氟硼酸银
MaterialBuilder(32145, "silver_tetrafluoroborate")
    .dust().fluid()
    .color(0x2f292f).iconSet("DUST")
    .components([<material:silver>*3,<material:boron> * 1,<material:fluorine>*4])
    .build();	

//三甲基氯化锡
MaterialBuilder(32146, "trimethyltin_chloride")
    .dust().fluid()
    .color(0x859f2d).iconSet("DUST")
    .components([<material:carbon>*3,<material:hydrogen> * 9,<material:tin>*1,<material:chlorine>*8])
    .build();	
	
//二苄基丙酮
MaterialBuilder(32147, "dibenzylideneacetone")
    .dust().fluid()
    .color(0x666a45).iconSet("DUST")
    .components([<material:carbon>*17,<material:hydrogen> * 14,<material:oxygen> * 1])
    .build();	

//双（二亚苄基二丙酮）钯
MaterialBuilder(32148, "palladium_bisdibenzylidieneacetone")
    .dust()
    .color(0x2A1248).iconSet("DUST")
    .components([<material:carbon>*51,<material:hydrogen> * 42,<material:oxygen> * 3,<material:platinum> * 2])
    .build();		
	
//氢化钚
MaterialBuilder(32149, "plutonium_hydride")
    .dust()
    .color(0x777777).iconSet("DUST")
    .components([<material:plutonium> * 1,<material:hydrogen> * 1])
    .build();		

//六硝基六轴异伍兹烷Hexanitrohexaaxaisowurtzitane
MaterialBuilder(32150, "hexanitrohexaaxaisowurtzitane")
    .dust()
    .color(0x9b61b8).iconSet("DUST")
    .build();	
<material:hexanitrohexaaxaisowurtzitane>.setFormula("*C6H6N12O12*",true);
//硅胶Silica Gel
MaterialBuilder(32151, "silica_gel")
    .dust()
    .color(0x777777).iconSet("DUST")
    .build();	

//硅胶基质Silica Gel Base
MaterialBuilder(32152, "silica_gel_base")
    .dust().fluid()
    .color(0x859f2d).iconSet("DUST")
    .build();	

//粗制六硝基六氧杂纤锌烷 (Crude Hexanitrohexaaxaisowurtzitane)
MaterialBuilder(32153, "crude_hexanitrohexaaxaisowurtzitane")
    .dust()
    .color(0x644629).iconSet("DUST")
    .build();	
<material:crude_hexanitrohexaaxaisowurtzitane>.setFormula("C6H6N12O12？",true);
	
//四乙酰二硝基六氮杂异戊二烯 (Tetraacetyldinitrosohexaazaisowurtzitane)
MaterialBuilder(32154, "tetraacetyldinitrosohexaazaisowurtzitane")
    .dust().fluid()
    .color(0x4d4ded).iconSet("DUST")
    .build();	
<material:tetraacetyldinitrosohexaazaisowurtzitane>.setFormula("C16H23NO5S+",true);		
//四氟硝铵 (Nitronium Tetrafluoroborate)
MaterialBuilder(32155, "nitronium_tetrafluoroborate")
    .dust()
    .color(0xad4d4d).iconSet("DUST")
    .build();	
<material:nitronium_tetrafluoroborate>.setFormula("NF4+",true);	
//四氟硼酸亚硝铵 (Nitrosonium Tetrafluoroborate)
MaterialBuilder(32156, "nitrosonium_tetrafluoroborate")
    .dust().fluid()
    .color(0x644629).iconSet("DUST")
    .build();	
<material:nitrosonium_tetrafluoroborate>.setFormula("NOBF4",true);	
//二苄基四乙酰六氮杂异纤锌烷 (Dibenzyltetraacetylhexaazaisowurtzitane)
MaterialBuilder(32157, "dibenzyltetraacetylhexaazaisowurtzitane")
    .dust().fluid()
    .color(0xe7413c).iconSet("DUST")
    .build();	
<material:dibenzyltetraacetylhexaazaisowurtzitane>.setFormula("C21H17BrN2O2",true);
//琥珀酰亚胺醋酸酯 (Succinimidyl Acetate)
MaterialBuilder(32158, "succinimidyl_acetate")
    .dust().fluid()
    .color(0x372719).iconSet("DUST")
    .build();	
<material:succinimidyl_acetate>.setFormula("C44H46ClN3O4",true);
//六苄基六氮杂异伍兹烷 (Hexabenzylhexaazaisowurtzitane)
MaterialBuilder(32159, "hexabenzylhexaazaisowurtzitane")
    .dust().fluid()
    .color(0x2f292f).iconSet("DUST")
    .build();	
<material:hexabenzylhexaazaisowurtzitane>.setFormula("C6H6NO",true);
//宇宙素中子
MaterialBuilder(32160, "universe_neutronium")
    .ingot()
    .color(0x644629).iconSet("INGOT")
	.ore()
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();
<material:universe_neutronium>.setFormula("NT*NT",true);
//黑钚
MaterialBuilder(32161, "black_plutonium")
    .ingot()
    .color(0x905F83).iconSet("INGOT")
	.ore()
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();	
<material:black_plutonium>.setFormula("Nt*Pu",true);
//富集硅岩合金
MaterialBuilder(32162, "enriched_naquadria_alloy")
    .ingot().fluid()
    .color(0x2f292f).iconSet("INGOT")
    .components([<material:naquadria>*7,<material:carbon>*4,<material:tungsten>*3,<material:vanadium>*3,<material:plutonium>*1,<material:indium_tin_barium_titanium_cuprate>*1])
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();	

//基量合金
MaterialBuilder(32163, "initial_alloy")
    .ingot().fluid()
    .color(0x2f292f).iconSet("INGOT")
    .components([<material:naquadah>*7,<material:palladium>*4,<material:ruthenium>*3,<material:germanium>*3,<material:plutonium>*1])
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();	
//态素中子
MaterialBuilder(32164, "cosmic_neutronium")
    .ingot()
    .color(0x777777).iconSet("INGOT")
	.ore()
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();
//气态行星外核物质
MaterialBuilder(32165, "star_outside_material")
    .ingot().fluid()
    .color(0x4d4ded).iconSet("INGOT")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();
//气态行星内核物质
MaterialBuilder(32166, "star_inside_material")
    .ingot().fluid()
    .color(0x361E46).iconSet("INGOT")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();
//气态行星深层物质
MaterialBuilder(32167, "star_deep_material")
    .ingot().fluid()
    .color(0x4e3278).iconSet("INGOT")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();

//精炼龙素
MaterialBuilder(32168, "refined_drac")
    .ingot()
    .color(0xe7413c).iconSet("INGOT")
	.ore().fluid()
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();
	
<material:refined_drac>.setFormula("|*|",true);
//龙精
MaterialBuilder(32169, "dragon_essence")
    .ingot().fluid()
    .color(0x9d9d9d).iconSet("INGOT")
	.ore()
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();
	
//煤油
MaterialBuilder(32170, "kerosene")
    .dust().fluid()
    .color(0x9d9d9d).iconSet("DUST")
    .build();
<material:kerosene>.setFormula("C12H26",true);

//RP 1
MaterialBuilder(32171, "rpone")
    .dust().fluid()
    .color(0x2f292f).iconSet("DUST")
    .build();
<material:rpone>.setFormula("CH3(CH2)?CH3",true);

//RP 1 mix
MaterialBuilder(32172, "rpmix")
    .dust().fluid()
    .color(0x644629).iconSet("DUST")
    .build();
<material:rpmix>.setFormula("CH3(CH2)?CH3?O",true);

//密集肼
MaterialBuilder(32173, "dense_hydrazine")
    .dust().fluid()
    .color(0xad4d4d).iconSet("DUST")
    .build();
<material:dense_hydrazine>.setFormula("NH2NH2-CH4O",true);

//硝酸甲肼
MaterialBuilder(32174, "methylhydrazine_nitrate")
    .dust().fluid()
    .color(0x644629).iconSet("DUST")
    .build();
<material:methylhydrazine_nitrate>.setFormula("CN3H7O3",true);

//一甲基肼
MaterialBuilder(32175, "monomethylhydrazine")
    .dust().fluid()
    .color(0x2f292f).iconSet("DUST")
    .build();
<material:monomethylhydrazine>.setFormula("CH6N2",true);

//泽洛
MaterialBuilder(32176, "ziro")
    .ingot().fluid()
    .color(0x636C3E).iconSet("INGOT")
	.ore()
    .build();
<material:ziro>.setFormula("*-*",true);

//质子洪流
MaterialBuilder(32177, "proton_flow")
    .ingot().fluid()
    .color(0x2f292f).iconSet("INGOT")
	.ore()
    .build();
<material:proton_flow>.setFormula("*-*",true);

//中子洪流
MaterialBuilder(32178, "neutrons_flow")
    .ingot().fluid()
    .color(0x333366).iconSet("INGOT")
	.ore()
    .build();
<material:neutrons_flow>.setFormula("*-*",true);

//金属氢
MaterialBuilder(32179, "metallic_hydrogen")
    .ingot().fluid()
    .color(0x034970).iconSet("INGOT")
	.ore()
    .build();
<material:metallic_hydrogen>.setFormula("*H*",true);

//砷黄铁
MaterialBuilder(32180, "arsenopyrite")
    .ingot()
    .color(0x4e3278).iconSet("INGOT")
	.ore()
    .components([<material:arsenic>*1,<material:iron> *1,<material:sulfur> * 1])
    .build();

//氟化钙
MaterialBuilder(32181, "calcium_difluoride")
    .ingot()
    .color(0x2f292f).iconSet("INGOT")
	.ore()
    .components([<material:calcium>*1,<material:fluorine> *2])
    .build();

//龙素处理
MaterialBuilder(32182, "dragon_blood")
    .ingot().fluid()
    .color(0x5C1F4F).iconSet("INGOT")
    .build();

MaterialBuilder(32183, "activated_dragon_tissue_mixture")
    .ingot().fluid()
    .color(0x905F83).iconSet("INGOT")
    .build();

MaterialBuilder(32184, "mutated_dragon_tissue_mixture")
    .ingot().fluid()
    .color(0x4e3278).iconSet("INGOT")
    .build();

MaterialBuilder(32185, "excited_mutated_dragon_tissue_mixture")
    .ingot().fluid()
    .color(0x4D579A).iconSet("INGOT")
    .build();

MaterialBuilder(32186,"space_coolant")
    .ingot().fluid()
    .color(0x034970).iconSet("INGOT")
    .build();

MaterialBuilder(32187,"mana_coolant")
    .ingot().fluid()
    .color(0x37388E).iconSet("INGOT")
    .build();

MaterialBuilder(32188,"acidic_draconium_solution")
    .ingot().fluid()
    .color(0x361E46).iconSet("INGOT")
    .build();

MaterialBuilder(32189,"nquadriaic_acid")
    .ingot().fluid()
    .components([<material:hydrogen>*3,<material:naquadria>*1,<material:oxygen>*4])
    .color(0x636C3E).iconSet("INGOT")
    .build();

MaterialBuilder(32190,"depleted_draconium_solution")
    .ingot().fluid()
    .color(0x1F203C).iconSet("INGOT")
    .build();

MaterialBuilder(32191,"enriched_draconium_solution")
    .ingot().fluid()
    .color(0x333366).iconSet("INGOT")
    .build();

MaterialBuilder(32192, "draconium")
    .ingot().fluid()
    .color(0x6C3A9A).iconSet("INGOT")
    .flags(["generate_plate","generate_rod","generate_frame","generate_dense","generate_foil","generate_gear"])
	.blastTemp(7000,"HIGHER",122880,900)
    .fluidPipeProperties(6000,400,true)
    .build();

MaterialBuilder(32193, "draconium_awakened")
    .ingot().fluid()
    .color(0xFF9C00).iconSet("INGOT")
    .flags(["generate_plate","generate_rod","generate_frame","generate_dense","generate_foil","generate_gear"])
	.blastTemp(9000,"HIGHEST",491520,1200)
    .build();

MaterialBuilder(32194,"crude_draconium_residue")
    .ingot().fluid()
    .color(0x664773).iconSet("INGOT")
    .build();

MaterialBuilder(32195,"empowered_draconium")
    .ingot().fluid()
    .color(0x9C5871).iconSet("INGOT")
    .build();

MaterialBuilder(32196, "dragon_breath_solution")
    .ingot().fluid()
    .color(0xC39FB6).iconSet("INGOT")
    .build();

MaterialBuilder(32197,"naquadria_hydroxide")
    .ingot().fluid()
    .components([<material:hydrogen>*1,<material:naquadria>*1])
    .color(0x636C3E).iconSet("INGOT")
    .build();
	
MaterialBuilder(32198,"nether_star")
    .ingot().fluid()
    .ore()
    .color(0x636C3E).iconSet("INGOT")
    .build();

<material:graphite>.addFlags("generate_plate", "generate_bolt_screw","generate_rod","generate_rotor","generate_frame","generate_long_rod");
<material:dragon_essence>.setFormula("|*|",true);
<material:certus_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:nether_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:iron>.addFlags("generate_dense");
<material:lead>.addFlags("generate_dense");
<material:brass>.addFlags("generate_spring", "generate_gear", "generate_ring");
<material:bronze>.addFlags("generate_fine_wire");
<material:stainless_steel>.addFlags("generate_spring_small");
<material:red_alloy>.addFlags("generate_ring", "generate_plate");
<material:plastic>.addFlags("generate_rod");
<material:carbon>.addFlags("generate_rod");
<material:titanium>.addFlags("generate_foil", "generate_fine_wire");
<material:rose_gold>.addFlags("generate_foil", "generate_fine_wire");
<material:ender_eye>.addFlags("generate_lens");
<material:naquadria>.addFlags("generate_frame");
<material:seaborgium>.addFlags("generate_rotor");
<material:europium>.addFlags("generate_ring");
<material:tungsten>.addFlags("generate_dense");
<material:tantalum>.addFlags("generate_bolt_screw");
<material:nether_star>.addFlags("generate_bolt_screw");
<material:magnesium>.addFlags("generate_plate", "generate_bolt_screw","generate_rod","generate_rotor","generate_frame","generate_long_rod");
<material:americium>.addFlags("generate_bolt_screw","generate_rotor","generate_frame","generate_long_rod");
<material:lead>.addFlags("generate_frame");
<material:copper>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:bismuth>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:beryllium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:indium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:chrome>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:antimony>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:germanium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:gallium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:rhenium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:plutonium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:platinum>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:palladium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:osmium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:niobium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:neodymium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:tantalum>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:rhodium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:zinc>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:molybdenum>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:manganese>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:silver>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:tin>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:tritanium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:neutronium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:ultimet>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:naquadah>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:silicon>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:yttrium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:ruridit>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:ruthenium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:samarium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:vanadium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:titanium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:polymethylmethacrylate>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:cgt_magnetic>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:silicon_carbide>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:cgt>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:yttrium_barium_cuprate>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:ruthenium_trinium_americium_neutronate>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:vanadium_gallium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:uranium_rhodium_dinaquadide>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:uranium_triplatinum>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:indium_tin_barium_titanium_cuprate>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:osmiridium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:rhodium_plated_palladium>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:nickel_zinc_ferrite>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:gallium_arsenide>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:mercury_cadmium_telluride>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:tungsten_carbide>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:indium_gallium_phosphide>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:manganese_phosphide>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:polyvinyl_butyral>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:polystyrene_sulfonate>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:kapton_e>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:kapton_k>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:pedot_tma>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:pedot_pss>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:magnesium_diboride>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:kevlar>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:damascus_steel>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:fullerene>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:enriched_naquadah_trinium_europium_duranide>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:mercury_barium_calcium_cuprate>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:naquadah_enriched>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:zblan_glass>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:gst_glass>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
<material:metallic_hydrogen>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
