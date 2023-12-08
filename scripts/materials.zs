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

MaterialBuilder(32007, "thaumium")
    .ingot()
    .color(0x473B6D).iconSet("INGOT")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
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
    .cableProperties(2097152, 32, 2)
    .build();

MaterialBuilder(32021, "xb_draconium_awakened")
    .ingot().fluid()
    .color(0xFF9C00).iconSet("SHINY")
   .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .blastTemp(9900,"HIGHEST",122880,2500)
    .cableProperties(8388608, 32, 2)
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
    .components([<material:iron> * 1,<material:zinc>*1])
    .build();
	
//锆
MaterialBuilder(32047, "hf")
    .ingot().fluid()
    .color(0x9d9d9d).iconSet("INGOT")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
	.components([<material:hafnium> * 1])
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
MaterialBuilder(32095, "terrasteel")
    .ingot().fluid()
    .color(0x2a8a21)
    .iconSet("INGOT")
    .blastTemp(3200, "MID", 2048, 350)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();

# 血钢
MaterialBuilder(32097, "blood_infused_iron")
    .ingot().fluid()
    .color(0xad4d4d)
    .iconSet("INGOT")
    .blastTemp(2400, "MID", 768, 300)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();

# 盖亚
MaterialBuilder(32098, "gaia")
    .ingot().fluid()
    .color(0x469BB1)
    .iconSet("INGOT")
    .blastTemp(2400, "MID", 768, 300)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();

# 奥利哈
MaterialBuilder(32099, "orichalcos")
    .ingot().fluid()
    .color(0xFF69B4)
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
    .cableProperties(2097152, 16, 0)
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
	
<material:refined_drac>.setFormula("",true);
//通流合金
MaterialBuilder(32169, "essence")
    .ingot().fluid()
    .color(0x9d9d9d).iconSet("INGOT")
	.ore()
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();
<material:essence>.setFormula("",true);
//煤油
MaterialBuilder(32170, "kerosene")
    .dust().fluid()
    .color(0x9d9d9d).iconSet("DUST")
    .build();
<material:kerosene>.setFormula("C12H26",true);

//泽洛
MaterialBuilder(32176, "ziro")
    .ingot().fluid()
    .color(0x636C3E).iconSet("INGOT")
  .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
	.ore()
    .build();
<material:ziro>.setFormula("*-*",true);

//质子洪流
MaterialBuilder(32177, "proton_flow")
    .ingot().fluid()
    .color(0x2f292f).iconSet("INGOT")
	.ore()
  .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();
<material:proton_flow>.setFormula("*-*",true);

//中子洪流
MaterialBuilder(32178, "neutrons_flow")
    .ingot().fluid()
    .color(0x333366).iconSet("INGOT")
  .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
	.ore()
    .build();
<material:neutrons_flow>.setFormula("*-*",true);

//金属氢
MaterialBuilder(32179, "metallic_hydrogen")
    .ingot().fluid()
    .color(0x034970).iconSet("INGOT")
	.ore()
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
	.cableProperties(8088608, 16, 0)
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
    .color(0x832DEF).iconSet("INGOT")
    .build();
<material:dragon_blood>.setFormula("☼", false);


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
      .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
	.blastTemp(7000,"HIGHER",122880,900)
    .fluidPipeProperties(6000,400,true)
    .build();

MaterialBuilder(32193, "draconium_awakened")
    .ingot().fluid()
    .color(0xFF9C00).iconSet("INGOT")
      .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
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
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .color(0xCCCCCC).iconSet("INGOT")
    .build();
/*	
MaterialBuilder(32199,"nitinol")
    .ingot().fluid()
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
	.components([<material:nickel>*2,<material:titanium>*3])
    .color(0xC39FB6).iconSet("INGOT")
    .build();
*/
//硅岩产线
MaterialBuilder(32200, "clear_enriched_naquadah")
    .dust().fluid()
    .color(0xad4d4d).iconSet("DUST")
    .build();	
<material:clear_enriched_naquadah>.setFormula("Nq+",true);	

MaterialBuilder(32201, "clear_naquadah")
    .dust().fluid()
    .color(0xad4d4d).iconSet("DUST")
    .build();	
<material:clear_naquadah>.setFormula("Nq+",true);	

MaterialBuilder(32202, "complicated_heavy_enriched_naquadah")
    .dust().fluid()
    .color(0xad4d4d).iconSet("DUST")
    .build();	
<material:complicated_heavy_enriched_naquadah>.setFormula("Nq+",true);	

MaterialBuilder(32203, "complicated_enriched_naquadah")
    .dust().fluid()
    .color(0x905F83).iconSet("DUST")
    .build();	
<material:complicated_enriched_naquadah>.setFormula("Nq+",true);	

MaterialBuilder(32204, "complicated_light_naquadah")
    .dust().fluid()
    .color(0x644629).iconSet("DUST")
    .build();	
<material:complicated_light_naquadah>.setFormula("Nq+",true);	

MaterialBuilder(32205, "complicated_light_enriched_naquadah")
    .dust().fluid()
    .color(0x905F83).iconSet("DUST")
    .build();	
<material:complicated_light_enriched_naquadah>.setFormula("Nq+",true);	

MaterialBuilder(32206, "enriched_xenon_hexafluoronaquadate")
    .dust().fluid()
    .color(0xad4d4d).iconSet("DUST")
    .build();	
<material:enriched_xenon_hexafluoronaquadate>.setFormula("Nq+",true);	

MaterialBuilder(32207, "brookite")
    .ingot()
    .color(0xe7413c).iconSet("INGOT")
	.ore()
    .components([<material:titanium>*1,<material:iron>*1,<material:oxygen> *2])
    .build();
	
//高密度能量
MaterialBuilder(32208, "eng")
    .dust().fluid()
    .color(0x2f292f).iconSet("DUST")
    .build();	
	
MaterialBuilder(32209, "naquadah_mix")
    .ingot()
    .color(0x4d4ded).iconSet("INGOT")
	.ore()
    .build();
<material:complicated_light_naquadah>.setFormula("?Nq?",true);	

//P-507
MaterialBuilder(32210, "pwlq")
    .dust().fluid()
    .color(0x2f292f).iconSet("DUST")
    .build();	

//GaOH
MaterialBuilder(32211, "gaoh")
    .ingot()
    .color(0x644629).iconSet("INGOT")
    .components([<material:gallium>*1,<material:oxygen>*1,<material:hydrogen> *1])
    .build();

//废氟
MaterialBuilder(32212, "feifu")
    .dust().fluid()
    .color(0x905F83).iconSet("DUST")
    .build();	
<material:feifu>.setFormula("?F?",true);	

//废液
MaterialBuilder(32213, "feiye")
    .dust().fluid()
    .color(0x4D579A).iconSet("DUST")
    .build();	

//浓缩富集硅岩矿泥粉
MaterialBuilder(32214, "fujiguiyankuangni")
    .dust().fluid()
    .color(0xe7413c).iconSet("DUST")
    .build();	
<material:fujiguiyankuangni>.setFormula("?Nq",true);	
//氧化硅岩混合物粉
MaterialBuilder(32215, "guiyanhunhewu")
    .dust().fluid()
    .color(0x372719).iconSet("DUST")
    .build();	
<material:guiyanhunhewu>.setFormula("?Nq",true);	
//高纯富集硅岩溶液
MaterialBuilder(32216, "gaochunfujiguiy")
    .dust().fluid()
    .color(0x2f292f).iconSet("DUST")
    .build();	
<material:gaochunfujiguiy>.setFormula("?Nq",true);
//硫酸钠
MaterialBuilder(32217, "sodium_sulfate")
    .dust().fluid()
    .color(0x644629).iconSet("DUST")
    .components([<material:sodium>*1,<material:sulfur>*1,<material:oxygen> *4])
    .build();	
	
//低纯硫酸超能硅岩粉
MaterialBuilder(32218, "dichunchaonengguiyan")
    .dust().fluid()
    .color(0xd89045).iconSet("DUST")
    .build();	
<material:dichunchaonengguiyan>.setFormula("?Nq",true);	
//低纯磷酸超能硅岩混合物粉
MaterialBuilder(32219, "dichunlinsuanchaoneng")
    .dust().fluid()
    .color(0x905F83).iconSet("DUST")
    .build();	
<material:dichunlinsuanchaoneng>.setFormula("?Nq",true);	
//高纯超能硅岩溶液
MaterialBuilder(32220, "gaochunchaonengguiyan")
    .dust().fluid()
    .color(0x2f292f).iconSet("DUST")
    .build();	
<material:gaochunchaonengguiyan>.setFormula("?Nq",true);
//绝缘云母
MaterialBuilder(32221, "jueyuanyunmu")
    .ingot()
	.flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .color(0x2f292f).iconSet("INGOT")
    .build();	
	
//聚合矩阵
MaterialBuilder(32222, "molten_coalescence_matrix")
    .ingot().fluid()
    .color(0x2D0069).iconSet("shiny")
    .build();
<material:molten_coalescence_matrix>.setFormula("❇",true);
//克鲁苏
MaterialBuilder(32223, "cthulhu")
    .gem().fluid()
    .iconSet("ruby")
    .color(0x2D0069)
    .build();
<material:cthulhu>.setFormula("☼", false);

//Aurorium : UXV superconductor
MaterialBuilder(32224, "aurorium")
    .ingot().fluid()
    .color(0xDFBCDE).iconSet("shiny")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .cableProperties(134217728, 32, 0, true)
    .build();

<material:aurorium>.setFormula("☄", false);

//Sunnarium : UIV conductor
MaterialBuilder(32225, "sunnarium")
    .ingot().fluid()
    .color(0xCD8E26).iconSet("shiny")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .cableProperties(33554432, 16, 8, false)
    .build();
<material:sunnarium>.setFormula("☀", true);

//Crystal Matrix : UXV conductor
MaterialBuilder(32226, "crystal_matrix")
    .ingot().fluid()
    .color(0x70ecff).iconSet("shiny")
    .flags(["generate_plate","generate_fine_wire", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])   
    .cableProperties(134217728, 32, 16, false)
    .build();

//Superheavy Element Mixture : OpV conductor
MaterialBuilder(3222, "superheavy_element_mixture")
    .ingot().fluid()
    .color(0x70ecff).iconSet("shiny")
	.cableProperties(536870912, 999, 32, false)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();

//Magneto Resonatic
MaterialBuilder(32228, "magneto_resonatic")
    .gem()
	.color(0xFF97FF).iconSet("magnetic")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .build();

<material:magneto_resonatic>.setFormula("(Na2TeO3)4(ZrO2)3(CrGeTe3)2", true);

//HDCS (High Durability Compound Steel)
MaterialBuilder(32229, "hdcs")
    .ingot().fluid()
    .color(0x334433).iconSet("shiny")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])   
    .blastTemp(9900)
    .build();

<material:hdcs>.setFormula("(FeW)12(((FeW)5CrMo2V)6Ir2Os)9((FeW)5CrMo2V)6(Ru2Ir)3((Na2TeO3)4(ZrO2)3(CrGeTe3)2)2Pu",true);

//Superconducting Magnet Mixture
MaterialBuilder(32230, "superconducting_magnet_mixture")
    .ingot().fluid()
    .color(0xFA5192).iconSet("magnetic")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])
    .blastTemp(9900)
    .build();

<material:superconducting_magnet_mixture>.setFormula("(PuP)9(BiFeO3)4(TuCuCl3)3", true);

//Cosmic computing Mixture
MaterialBuilder(32231, "cosmic_Computing_mixture")
    .ingot().fluid()
    .color(0xF9CAFD)
    .flags(["no_unification"])
    .iconSet("shiny")
    .build();

<material:cosmic_computing_mixture>.setFormula("((t2)u)((u2)ds)gyih", true);

//Heavy Lepton Mixture
MaterialBuilder(32232, "heavy_lepton_mixture")
    .fluid()
    .color(0x8FA015)
    .build();

<material:heavy_lepton_mixture>.setFormula("(t2)u", true);

//Heavy quark
MaterialBuilder(32233, "heavy_quark")
    .fluid()
    .color(0x845C59)
    .build();

<material:heavy_quark>.setFormula("(u₂)ds", true);

//Gluon
MaterialBuilder(32234, "gluon")
    .fluid()
    .color(0xE00E88)
    .build();

<material:gluon>.setFormula("g", true);

//Tachyon
MaterialBuilder(32235, "tachyon")
    .fluid()
    .color(0x8CC8D6)
    .build();

<material:tachyon>.setFormula("y", true);

//Instanton
MaterialBuilder(32236, "instanton")
    .fluid()
    .color(0x09AC8D)
    .build();

<material:instanton>.setFormula("i", true);

//Higgs
MaterialBuilder(32237, "higgs")
    .fluid()
    .color(0x609EA8)
    .build();

<material:higgs>.setFormula("h", true);

//Quark Gluon Plasma
MaterialBuilder(32238, "quark_gluon_plasma")
    .fluid()
    .color(0xD520F7)
    .build();

<material:quark_gluon_plasma>.setFormula("(u2)dsga");

//Thallium Copper Chloride-Nd: YAG mixture
MaterialBuilder(32239, "thallium_copper_chloride_ndyag_mixture")
    .dust()
    .color(0xA85E8B)
    .iconSet("magnetic")
    .build();

<material:thallium_copper_chloride_ndyag_mixture>.setFormula("(NdY2Al5O12)4(TlCuCl3)2",true);

//Lepton mixture
MaterialBuilder(32240, "lepton_mixture")
    .fluid()
    .color(0xD4BCA3)
    .build();

<material:lepton_mixture>.setFormula("(t2)ui", true);

//Sublight plasma jet 
MaterialBuilder(32241, "sublight_plasma_jet")
    .fluid()
    .color(0x11F7C9)
    .build();

<material:sublight_plasma_jet>.setFormula("y", true);

//Sodium Fluoride : NaF
MaterialBuilder(32246, "sodium_fluoride")
    .dust()
    .color(0x460012)
    .iconSet("dull")
    .components([<material:sodium> * 1,
<material:fluorine> * 1])
    .build();

//Benzyl Fluoride : C7H7F
MaterialBuilder(32248, "benzyl_fluoride")
    .fluid()
    .color(0x6EC5B8)
    .build();

<material:benzyl_fluoride>.setFormula("C7H7F",true);

//Yttrium Aluminum Garnet (YAG) : Y2Al5O12
MaterialBuilder(32250, "yttrium_aluminum_garnet")
    .gem()
    .ore()
    .color(0x5D313F)
    .iconSet("shiny")
    .build();

<material:yttrium_aluminum_garnet>.setFormula("Y2Al5O12", true);

//Zylon : C14H6N2O2
MaterialBuilder(32251, "zylon")
    .dust()
    .fluid()
    .color(0xFD8A12)
    .iconSet("shiny")
    .build();

<material:zylon>.setFormula("C14H6N2O2", true);

//Prezylon : C20H22N2O2
MaterialBuilder(32252, "prezylon")
    .dust()
    .color(0x623250)
    .iconSet("dull")
    .build();

<material:prezylon>.setFormula("C20H22N2O2", true);

//Dinitrodipropanyloxybenzene : C12H16O2(NO2)2
MaterialBuilder(32253, "dinitrodipropanyloxybenzene")
    .fluid()
    .color(0xA7C760)
    .build();

<material:dinitrodipropanyloxybenzene>.setFormula("C12H16O2(NO2)2", true);

//Terephthalaldehyde : C8H6O2
MaterialBuilder(32254, "terephthalaldehyde")
    .dust()
    .color(0x567C2D)
    .build();
<material:terephthalaldehyde>.setFormula("C8H6O2", true);

//dragon_essence 
MaterialBuilder(32255, "dragon_essence")
    .ingot().fluid()
	.ore()
    .color(0x70ecff).iconSet("shiny")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"])   
    .build();
//艾萨 
MaterialBuilder(32256, "red_fluid")
    .fluid()
    .color(0x70ecff).iconSet("shiny")
    .build();
<material:red_fluid>.setFormula("Fe*Cu*Sn", true);

MaterialBuilder(32257, "nie_milled")
    .fluid()
    .color(0x7C7C9B).iconSet("shiny")
    .build();
<material:nie_milled>.setFormula("Ni*", true);

MaterialBuilder(32258, "bo_milled")
    .fluid()
    .color(0xB0B08B).iconSet("shiny")
    .build();
<material:bo_milled>.setFormula("Pt*Co*Pd", true);

MaterialBuilder(32259, "dujushi_milled")
    .fluid()
    .color(0x273427).iconSet("shiny")
    .build();
<material:dujushi_milled>.setFormula("PO4*Th*Nd", true);

MaterialBuilder(32260, "shanxin_milled")
    .fluid()
    .color(0xA1A1A1).iconSet("shiny")
    .build();
<material:shanxin_milled>.setFormula("ZnS*Cd*Ga", true);

MaterialBuilder(32261, "hongshi_milled")
    .fluid()
    .color(0x870808).iconSet("shiny")
    .build();
<material:hongshi_milled>.setFormula("太复杂了", true);

MaterialBuilder(32262, "huangtong_milled")
    .fluid()
    .color(0x9E0000).iconSet("Fe*Cu")
    .build();
<material:huangtong_milled>.setFormula("C8H6O2", true);

MaterialBuilder(32263, "niehuangtie_milled")
    .fluid()
    .color(0x4A1F3E).iconSet("shiny")
    .build();
<material:niehuangtie_milled>.setFormula("Ni*Fe*Cu", true);

MaterialBuilder(32264, "tielvliushi_milled")
    .fluid()
    .color(0x70ecff).iconSet("shiny")
    .build();
<material:tielvliushi_milled>.setFormula("Fe*Al*Si*O", true);

MaterialBuilder(32265, "gailvliushi_milled")
    .fluid()
    .color(0x675021).iconSet("shiny")
    .build();
<material:gailvliushi_milled>.setFormula("Ca*Al*Si*O", true);

MaterialBuilder(32266, "meilvliushi_milled")
    .fluid()
    .color(0x7F444A).iconSet("shiny")
    .build();
<material:meilvliushi_milled>.setFormula("Mg*Al*Si*O", true);

MaterialBuilder(32267, "menglvliushi_milled")
    .fluid()
    .color(0xA44646).iconSet("shiny")
    .build();

MaterialBuilder(32268, "sodium_ethylate")
    .dust()
    .iconSet("dull")
    .color(0xD0FC8F)
    .build();
<material:sodium_ethylate>.setFormula("C2H5ONa", true);

MaterialBuilder(32269, "sodium_ethylxanthate")
    .dust()
    .iconSet("shiny")
    .color(0xF3F311)
    .build();
<material:sodium_ethylxanthate>.setFormula("C3H5NaOS2", true);

MaterialBuilder(32270, "potassium_ethylate")
    .dust()
    .iconSet("dull")
    .color(0xFBC47D)
    .build();
<material:potassium_ethylate>.setFormula("C2H5OK", true);

MaterialBuilder(32271, "potassium_ethylxanthate")
    .dust()
    .iconSet("shiny")
    .color(0xB9AD83)
    .build();
<material:potassium_ethylxanthate>.setFormula("C3H5KOS2", true);

MaterialBuilder(32272, "carbon_disulfide")
    .fluid()
    .color(0x70ecff)
    .build();
<material:carbon_disulfide>.setFormula("CS2", true);

MaterialBuilder(32273, "coolant")
    .fluid()
    .color(0xCB7266)
    .build();

MaterialBuilder(32277, "hot_coolant")
    .fluid()
    .color(0xB9AD83)
    .build();
	
MaterialBuilder(32278, "biogas")
    .fluid()
    .color(0xF3F311)
    .build();
	
MaterialBuilder(32279, "superheated_steam")
    .fluid()
    .color(0xCB7266)
    .build();

MaterialBuilder(32280, "austenite_steel")
    .ingot().fluid()
    .color(0x630d56).iconSet("shiny")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round"])   
    .build();	

MaterialBuilder(32281, "lunarium")
    .ingot().fluid()
    .color(0x779689).iconSet("bright")
    .flags(["generate_plate","generate_foil","generate_fine_wire","generate_gear","generate_small_gear","generate_frame"])
    .cableProperties(33554432, 32, 32, false)
    .build();

MaterialBuilder(32282, "mithril")
    .ingot().fluid()
    .color(0x6d2a50).iconSet("shiny")
    .cableProperties(33554432, 8, 8, false)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();

MaterialBuilder(32283, "tiberium")
    .ingot().fluid()
    .color(0x9E8DB9).iconSet("shiny")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
MaterialBuilder(32284, "hikarium")
    .ingot().fluid()
    .color(0xBEF32C).iconSet("shiny")
    .cableProperties(33554432, 16, 16, false)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
<material:hikarium>.setFormula("✴", false);

MaterialBuilder(32285, "black_hole_matter_polymer_matrix")
    .ingot().fluid()
    .color(0xBEF32C).iconSet("shiny")
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
MaterialBuilder(32287, "arcanium")
    .ingot().fluid()
    .color(0x6F6382).iconSet("shiny")
    .blastTemp(18800)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
MaterialBuilder(32288, "dense_magnetically_constrained_stellar_plasma_fluid")
    .fluid()
    .color(0x9999CC)
    .build();
	
MaterialBuilder(32289, "stellar_debris")
    .ingot().fluid()
    .color(0x9E8DB9).iconSet("shiny")
    .blastTemp(17900)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
MaterialBuilder(32290, "quadruple_crystal_matrix")
    .ingot().fluid()
    .color(0x8B4513).iconSet("shiny")
	.cableProperties(536870912, 999, 32, false)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
MaterialBuilder(32291, "quadruple_eternal")
    .ingot().fluid()
    .color(0x8B4513).iconSet("shiny")
	.cableProperties(536870912, 999, 32, false)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
MaterialBuilder(32292, "octal_superheavy_element_mixture")
    .ingot().fluid()
    .color(0x79FE00).iconSet("shiny")
	.cableProperties(536870912, 999, 32, false)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
MaterialBuilder(32293, "small_superheavy_element_mixture")
    .ingot().fluid()
    .color(0x29288A).iconSet("shiny")
	.cableProperties(536870912, 999, 32, false)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
MaterialBuilder(32294, "eternal")
    .ingot().fluid()
    .color(0x9E19CF).iconSet("shiny")
	.cableProperties(536870912, 999, 32, false)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
MaterialBuilder(32295, "uevchaodao")
    .ingot().fluid()
    .color(0x8B4513).iconSet("shiny")
	.cableProperties(8388608, 32, 0, true)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
MaterialBuilder(32296, "uivchaodao")
    .ingot().fluid()
    .color(0x79FE00).iconSet("shiny")
	.cableProperties(33554432, 32, 0, true)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
//镧系
MaterialBuilder(32297, "dujushixituzhuorongye")
    .dust().fluid()
    .color(0x644629).iconSet("DUST")
    .build();	
<material:dujushixituzhuorongye>.setFormula("?", false);

MaterialBuilder(32298, "xishidujushixitunijiang")
    .dust().fluid()
    .color(0x4A1BB1).iconSet("DUST")
    .build();	
<material:xishidujushixitunijiang>.setFormula("?", false);

MaterialBuilder(32299, "yanghuahayanghuagao")
    .dust().fluid()
    .color(0xFA2600).iconSet("DUST")
    .build();	
<material:yanghuahayanghuagao>.setFormula("Hf?O=Zr?O", false);

MaterialBuilder(32300, "liusuandujushi")
    .dust().fluid()
    .color(0xEEDD6D).iconSet("DUST")
    .build();	
<material:liusuandujushi>.setFormula("?SO4?", false);

MaterialBuilder(32301, "xishiliusuandujushi")
    .dust().fluid()
    .color(0x95CE92).iconSet("DUST")
    .build();	
<material:xishiliusuandujushi>.setFormula("?SO4?", false);

MaterialBuilder(32302, "suanxingdujushifen")
    .dust().fluid()
    .color(0x4E71F0).iconSet("DUST")
    .build();	

MaterialBuilder(32303, "dujushixitulvzha")
    .dust().fluid()
    .color(0xDB6951).iconSet("DUST")
    .build();	
	
MaterialBuilder(32304, "lingsuantulvbing")
    .dust().fluid()
    .color(0x0B8596).iconSet("DUST")
    .build();	
<material:lingsuantulvbing>.setFormula("PO4?Th", false);

MaterialBuilder(32305, "lingsuantulvjing")
    .dust().fluid()
    .color(0xD80036).iconSet("DUST")
    .build();	
<material:lingsuantulvjing>.setFormula("PO4=Th", false);

MaterialBuilder(32306, "zhonghedujushixitulvzha")
    .dust().fluid()
    .color(0xD54338).iconSet("DUST")
    .build();
	
MaterialBuilder(32307, "nhfournothree")
    .dust().fluid()
    .color(0x003F5F).iconSet("DUST")
    .build();
	
MaterialBuilder(32308, "nongsuodujushixituqingyanghuawu")
    .dust().fluid()
    .color(0x9E19CF).iconSet("DUST")
    .build();

MaterialBuilder(32309, "youlvzhafen")
    .dust().fluid()
    .color(0x79B349).iconSet("DUST")
    .build();

MaterialBuilder(32310, "zhongheyoulvzhafen")
    .dust().fluid()
    .color(0xCCF7FB).iconSet("DUST")
    .build();
	
MaterialBuilder(32311, "ganzaonongsuoxiaosuandujushixitu")
    .dust().fluid()
    .color(0xF3F3F3).iconSet("DUST")
    .build();

MaterialBuilder(32312, "nongsuodanhuadujushixiturongye")
    .dust().fluid()
    .color(0x4EDAC5).iconSet("DUST")
    .build();
	
MaterialBuilder(32313, "xiaosuandujushijinchuwu")
    .dust().fluid()
    .color(0x779689).iconSet("DUST")
    .build();
	
MaterialBuilder(32314, "nongsuoxiaosuandujushixitufen")
    .dust().fluid()
    .color(0x11F7C9).iconSet("DUST")
    .build();		
	
MaterialBuilder(32315, "dujushihantuchengdianfen")
    .dust().fluid()
    .color(0xD4BCA3).iconSet("DUST")
    .build();	
	
MaterialBuilder(32316, "yizhiluhuadujushixitu")
    .dust().fluid()
    .color(0xA85E8B).iconSet("DUST")
    .build();	
	
MaterialBuilder(32317, "shanjingfen")
    .dust().fluid()
	.ore()
    .color(0xD520F7).iconSet("DUST")
    .build();	
	
MaterialBuilder(32318, "baohedujushixitufen")
    .dust().fluid()
    .color(0x609EA8).iconSet("DUST")
    .build();	

MaterialBuilder(32319, "shanchengdian")
    .dust().fluid()
    .color(0x09AC8D).iconSet("DUST")
    .build();	
	
MaterialBuilder(32320, "futanlanshixituzhuorongye")
    .dust().fluid()
    .color(0x8CC8D6).iconSet("DUST")
    .build();	

MaterialBuilder(32321, "zhengqiliejiefutanlanshixituzhuorongye")
    .dust().fluid()
    .color(0xE00E88).iconSet("DUST")
    .build();	
	
MaterialBuilder(32322, "fuguisuan")
    .dust().fluid()
    .color(0x845C59).iconSet("DUST")
    .build();	

MaterialBuilder(32323, "fuguisuanna")
    .dust().fluid()
    .color(0x8FA015).iconSet("DUST")
    .build();		
	
MaterialBuilder(32324, "tiaozhizhengqiliejiefutanlanshixituzhuorongye")
    .dust().fluid()
    .color(0xF9CAFD).iconSet("DUST")
    .build();	

MaterialBuilder(32325, "xishifutanlanshinijiang")
    .dust().fluid()
    .color(0xFA5192).iconSet("DUST")
    .build();	

MaterialBuilder(32326, "guolvxishifutanlanshinijiang")
    .dust().fluid()
    .color(0x334433).iconSet("DUST")
    .build();	

MaterialBuilder(32327, "futanlanshixituyanghuawu")
    .dust().fluid()
    .color(0xFF97FF).iconSet("DUST")
    .build();	

MaterialBuilder(32328, "suanjingfutanlanshixituyanghuawu")
    .dust().fluid()
    .color(0x998EA6).iconSet("DUST")
    .build();	
		
MaterialBuilder(32329, "beishaoxituyanghuawufen")
    .dust().fluid()
    .color(0x70ecff).iconSet("DUST")
    .build();			
	
MaterialBuilder(32330, "shixituyanghuawu")
    .dust().fluid()
    .color(0x000000).iconSet("DUST")
    .build();	
	
MaterialBuilder(32331, "yanghuawushixituyanghuawu")
    .dust().fluid()
    .color(0xCD8E26).iconSet("DUST")
    .build();	
	
MaterialBuilder(32332, "futanlanshihantuyanghuawu")
    .dust().fluid()
    .color(0xDFBCDE).iconSet("DUST")
    .build();	
	
MaterialBuilder(32333, "danhuafutanlanshihantuyanghuawu")
    .dust().fluid()
    .color(0x2D0069).iconSet("DUST")
    .build();	

MaterialBuilder(32334, "futanlanshihantuyanghuaxuanzhuo")
    .dust().fluid()
    .color(0x832DEF).iconSet("DUST")
    .build();	

MaterialBuilder(32335, "ruxitujing")
    .dust().fluid()
    .color(0x428fdb).iconSet("DUST")
    .build();	
	
MaterialBuilder(32336, "shanxitujingfen")
    .dust().fluid()
    .color(0x800D0D).iconSet("DUST")
    .build();	
	
MaterialBuilder(32337, "fuhuashanjingfen")
    .dust().fluid()
    .color(0xff7f0f).iconSet("DUST")
    .build();	
	
MaterialBuilder(32338, "shantuihunhewu")
    .dust().fluid()
    .color(0xad2f05).iconSet("DUST")
    .build();	
	
MaterialBuilder(32339, "danhuashantuihunhewu")
    .dust().fluid()
    .color(0xf6ff99).iconSet("DUST")
    .build();	
	
MaterialBuilder(32340, "xiaosuantuifen")
    .dust().fluid()
    .color(0xd6d980).iconSet("DUST")
    .build();	
	
MaterialBuilder(32341, "caosuan")
    .dust().fluid()
    .color(0xa4ff70).iconSet("DUST")
    .build();	
	
MaterialBuilder(32342, "eryanghuashi")
    .dust().fluid()
    .color(0xffb545).iconSet("DUST")
    .build();	
	
MaterialBuilder(32343, "lvhuashi")
    .dust().fluid()
    .color(0xb2c0c1).iconSet("DUST")
    .build();	
	
MaterialBuilder(32344, "caosuanshi")
    .dust().fluid()
    .color(0x414751).iconSet("DUST")
    .build();	
	
MaterialBuilder(32345, "yanghuashisan")
    .dust().fluid()
    .color(0xf7b29b).iconSet("DUST")
    .build();		
	
MaterialBuilder(32346, "tuolinshanjingfen")
    .dust().fluid()
    .color(0x6ae26e).iconSet("DUST")
    .build();	
	
MaterialBuilder(32347, "nongsuoxiaosuandujushijinchuwu")
    .dust().fluid()
    .color(0xE00E88).iconSet("DUST")
    .build();		
	
MaterialBuilder(32348, "liusuangaoha")
    .dust().fluid()
    .color(0x428fdb).iconSet("DUST")
    .build();	
	
MaterialBuilder(32349, "cuyanghuagaoha")
    .dust().fluid()
    .color(0xF9CAFD).iconSet("DUST")
    .build();	
	
MaterialBuilder(32350, "lvhuayanghuagaoha")
    .dust().fluid()
    .color(0xEEE7E7).iconSet("DUST")
    .build();
	
MaterialBuilder(32351, "culvhuagao")
    .dust().fluid()
    .color(0x800D0D).iconSet("DUST")
    .build();

MaterialBuilder(32352, "lvhuaha")
    .dust().fluid()
    .color(0xf7b29b).iconSet("DUST")
    .build();
	
MaterialBuilder(32353, "yuchulixitu")
    .dust().fluid()
    .color(0xF9CAFD).iconSet("DUST")
    .build();
	
MaterialBuilder(32354, "chunjingchulixitu")
    .dust().fluid()
    .color(0xf6ff99).iconSet("DUST")
    .build();	
	
MaterialBuilder(32355, "shanxituzhuorongye")
    .dust().fluid()
    .color(0xF9CAFD).iconSet("DUST")
    .build();	

MaterialBuilder(32356, "xishishannijiang")
    .dust().fluid()
    .color(0xCD8E26).iconSet("DUST")
    .build();	
	
MaterialBuilder(32357, "xishishanrongye")
    .dust().fluid()
    .color(0x2D0069).iconSet("DUST")
    .build();	
	
MaterialBuilder(32358, "caosuanshan")
    .dust().fluid()
    .color(0x832DEF).iconSet("DUST")
    .build();	
	
MaterialBuilder(32359, "shanzhuoye")
    .dust().fluid()
    .color(0x428fdb).iconSet("DUST")
    .build();	

MaterialBuilder(32360, "lvhuashan")
    .dust().fluid()
    .color(0x800D0D).iconSet("DUST")
    .build();	

MaterialBuilder(32361, "lvhuashanxituhunhewu")
    .dust().fluid()
    .color(0xa4ff70).iconSet("DUST")
    .build();	
	
MaterialBuilder(32362, "xituhuahewu")
    .dust().fluid()
    .color(0xffb545).iconSet("DUST")
    .build();	
	
MaterialBuilder(32363, "hanzachengdianxitu")
    .dust().fluid()
    .color(0xb2c0c1).iconSet("DUST")
    .build();
	
MaterialBuilder(32364, "lvhuachengdianxitu")
    .dust().fluid()
    .color(0x414751).iconSet("DUST")
    .build();
	
MaterialBuilder(32365, "xitucuiquzhuoye")
    .dust().fluid()
    .color(0xf7b29b).iconSet("DUST")
    .build();
	
MaterialBuilder(32366, "daichengdianxitucuiquzhuoye")
    .dust().fluid()
    .color(0x800D0D).iconSet("DUST")
    .build();
	
MaterialBuilder(32367, "jiejinggaohahunhewu")
    .dust().fluid()
    .color(0x6ae26e).iconSet("DUST")
    .build();

MaterialBuilder(32368, "batancuihuaji")
    .dust().fluid()
    .color(0xad2f05).iconSet("DUST")
    .build();
	
MaterialBuilder(32369, "jingbatancuihuaji")
    .dust().fluid()
    .color(0xd6d980).iconSet("DUST")
    .build();	
	
MaterialBuilder(32370, "duibenerjiaquan")
    .dust().fluid()
    .color(0xffb545).iconSet("DUST")
    .build();	
	
MaterialBuilder(32371, "erxiujiaben")
    .dust().fluid()
    .color(0xffb545).iconSet("DUST")
    .build();	
	
MaterialBuilder(32372, "yanghuana")
    .dust().fluid()
    .color(0xb2c0c1).iconSet("DUST")
    .build();	
	
MaterialBuilder(32373, "yisuanna")
    .dust().fluid()
    .color(0x414751).iconSet("DUST")
    .build();	

MaterialBuilder(32374, "lvbingwan")
    .dust().fluid()
    .color(0xf7b29b).iconSet("DUST")
    .build();	
	
MaterialBuilder(32375, "chaojinghuahewu")
    .dust().fluid()
    .color(0xf7b29b).iconSet("DUST")
    .build();	
	
MaterialBuilder(32376, "chaotoushefen")
    .dust().fluid()
    .color(0x414751).iconSet("DUST")
    .build();	
	
MaterialBuilder(32378, "chaojinghuaa")
    .dust().fluid()
    .color(0xb2c0c1).iconSet("DUST")
    .build();	
	
MaterialBuilder(32379, "lai")
    .dust().fluid()
    .color(0xffb545).iconSet("DUST")
    .build();		
	
MaterialBuilder(32380, "dijihenxingwuzhicanliu")
    .dust().fluid()
    .color(0xffb545).iconSet("DUST")
    .build();	
	
MaterialBuilder(32381, "zhongjihenxingwuzhicanliu")
    .dust().fluid()
    .color(0xf7b29b).iconSet("DUST")
    .build();	
	
MaterialBuilder(32382, "gaojihenxingwuzhicanliu")
    .dust().fluid()
    .color(0x414751).iconSet("DUST")
    .build();	
	
MaterialBuilder(32383, "infinity_catalyst")
    .dust().fluid().ore()
    .color(0x414751).iconSet("DUST")
    .build();	
	
MaterialBuilder(32384, "hypogen")
    .ingot().fluid()
    .color(0x9E19CF).iconSet("shiny")
	.cableProperties(536870912, 999, 32, false)
    .flags(["generate_plate", "generate_dense", "generate_rod","generate_rotor","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear", "generate_round","generate_fine_wire"])   
    .build();
	
<material:carbon_disulfide>.setFormula("CS2", true);
<material:menglvliushi_milled>.setFormula("C8H6O2", true);
<material:gaochunchaonengguiyan>.setFormula("?Nq",true);	
<material:certus_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:nether_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:iron>.addFlags("generate_dense");
<material:bronze>.addFlags("generate_dense");
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
<material:steel>.addFlags("generate_dense");
<material:tantalum>.addFlags("generate_bolt_screw");
<material:nether_star>.addFlags("generate_bolt_screw");
<material:magnesium>.addFlags("generate_plate", "generate_bolt_screw","generate_rod","generate_rotor","generate_frame","generate_long_rod");
<material:americium>.addFlags("generate_bolt_screw","generate_rotor","generate_frame","generate_long_rod");
<material:lead>.addFlags("generate_frame");
<material:graphite>.addFlags(["generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
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
<material:pedot_tma>.addFlags(["generate_fine_wire", "generate_spring_small","generate_plate","generate_dense", "generate_rod","generate_frame","generate_ring","generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring","generate_spring_small","generate_gear", "generate_small_gear"]);
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
<material:neutronium>.addFlags(["generate_rotor"]);
<material:vibranium>.addFlags(["generate_rod", "generate_frame", "generate_foil", "generate_fine_wire"]);