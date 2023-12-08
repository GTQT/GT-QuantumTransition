#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;
var power_components = VanillaFactory.createBlock("power_components", <blockmaterial:iron>);
power_components.entitySpawnable = false;
power_components.fullBlock = false;
power_components.setToolClass("pickaxe");
power_components.setToolLevel(3);
power_components.register();

var speed_components = VanillaFactory.createBlock("speed_components", <blockmaterial:iron>);
speed_components.entitySpawnable = false;
speed_components.fullBlock = false;
speed_components.setToolClass("pickaxe");
speed_components.setToolLevel(3);
speed_components.register();

var count_components = VanillaFactory.createBlock("count_components", <blockmaterial:iron>);
count_components.entitySpawnable = false;
count_components.fullBlock = false;
count_components.setToolClass("pickaxe");
count_components.setToolLevel(3);
count_components.register();

var base_components = VanillaFactory.createBlock("base_components", <blockmaterial:iron>);
base_components.entitySpawnable = false;
base_components.fullBlock = false;
base_components.setToolClass("pickaxe");
base_components.setToolLevel(3);
base_components.register();

var naq_housing = VanillaFactory.createBlock("naq_housing", <blockmaterial:iron>);
naq_housing.entitySpawnable = false;
naq_housing.fullBlock = false;
naq_housing.setToolClass("pickaxe");
naq_housing.setToolLevel(3);
naq_housing.register();

var mass_generator = VanillaFactory.createBlock("mass_generator", <blockmaterial:iron>);
mass_generator.entitySpawnable = false;
mass_generator.fullBlock = false;
mass_generator.setToolClass("pickaxe");
mass_generator.setToolLevel(3);
mass_generator.register();

var mass_core = VanillaFactory.createBlock("mass_core", <blockmaterial:iron>);
mass_core.entitySpawnable = false;
mass_core.fullBlock = false;
mass_core.setToolClass("pickaxe");
mass_core.setToolLevel(3);
mass_core.register();

//光辐射板函数
function addLEP(id as int) {
    val LEP as Block = VanillaFactory.createBlock("light_emitting_panel_" + id, <blockmaterial:iron>);
    LEP.creativeTab = <creativetab:misc>;
    LEP.entitySpawnable = false;
    LEP.fullBlock = false;
    LEP.axisAlignedBB = AxisAlignedBB.create(0,0,0,1,0.625,1);
    LEP.setToolClass("pickaxe");
    LEP.setToolLevel(id + 1);
    LEP.register();
}

//添加光辐射板
for i in 0 to 3 {
    addLEP(i);
}

//添加神秘机械方块
var voidcasing = VanillaFactory.createBlock("void_casing", <blockmaterial:iron>);
voidcasing.entitySpawnable = false;
voidcasing.fullBlock = false;
voidcasing.setToolClass("pickaxe");
voidcasing.setToolLevel(2);
voidcasing.register();

//添加神秘机械方块
var thaumiumcasing = VanillaFactory.createBlock("thaumium_casing", <blockmaterial:iron>);
thaumiumcasing.entitySpawnable = false;
thaumiumcasing.fullBlock = false;
thaumiumcasing.setToolClass("pickaxe");
thaumiumcasing.setToolLevel(2);
thaumiumcasing.register();

//添加极限机械方块
var extremecasing = VanillaFactory.createBlock("extreme_casing", <blockmaterial:iron>);
extremecasing.entitySpawnable = false;
extremecasing.fullBlock = false;
extremecasing.setToolClass("pickaxe");
extremecasing.setToolLevel(3);
extremecasing.register();

//微粒捕获阱
var trap_core = VanillaFactory.createBlock("trap_core", <blockmaterial:iron>);
trap_core.entitySpawnable = false;
trap_core.fullBlock = false;
trap_core.setToolClass("pickaxe");
trap_core.setToolLevel(3);
trap_core.register();

//aipc
var aipc_casing = VanillaFactory.createBlock("aipc_casing", <blockmaterial:iron>);
aipc_casing.entitySpawnable = false;
aipc_casing.fullBlock = false;
aipc_casing.setToolClass("pickaxe");
aipc_casing.setToolLevel(3);
aipc_casing.register();

//aipc
var aipc_core = VanillaFactory.createBlock("aipc_core", <blockmaterial:iron>);
aipc_core.entitySpawnable = false;
aipc_core.fullBlock = false;
aipc_core.setToolClass("pickaxe");
aipc_core.setToolLevel(3);
aipc_core.register();

//coper
var coper = VanillaFactory.createBlock("coper", <blockmaterial:iron>);
coper.entitySpawnable = false;
coper.fullBlock = false;
coper.setToolClass("pickaxe");
coper.setToolLevel(3);
coper.register();

//星耀基座
var stella_anvil_module = VanillaFactory.createBlock("stella_anvil_module", <blockmaterial:iron>);
stella_anvil_module.entitySpawnable = false;
stella_anvil_module.fullBlock = false;
stella_anvil_module.setToolClass("pickaxe");
stella_anvil_module.setToolLevel(3);
stella_anvil_module.register();

//镍钛诺机械外壳
var nitinol_casing = VanillaFactory.createBlock("nitinol_casing", <blockmaterial:iron>);
nitinol_casing.entitySpawnable = false;
nitinol_casing.fullBlock = false;
nitinol_casing.setToolClass("pickaxe");
nitinol_casing.setToolLevel(3);
nitinol_casing.register();

//annihilationcasing
var annihilationcasing = VanillaFactory.createBlock("annihilationcasing", <blockmaterial:iron>);
annihilationcasing.entitySpawnable = false;
annihilationcasing.fullBlock = false;
annihilationcasing.setToolClass("pickaxe");
annihilationcasing.setToolLevel(3);
annihilationcasing.register();

//dimensionalcasing
var dimensionalcasing = VanillaFactory.createBlock("dimensionalcasing", <blockmaterial:iron>);
dimensionalcasing.entitySpawnable = false;
dimensionalcasing.fullBlock = false;
dimensionalcasing.setToolClass("pickaxe");
dimensionalcasing.setToolLevel(3);
dimensionalcasing.register();

//fieldgeneratorcasing
var fieldgeneratorcasing = VanillaFactory.createBlock("fieldgeneratorcasing", <blockmaterial:iron>);
fieldgeneratorcasing.entitySpawnable = false;
fieldgeneratorcasing.fullBlock = false;
fieldgeneratorcasing.setToolClass("pickaxe");
fieldgeneratorcasing.setToolLevel(3);
fieldgeneratorcasing.register();

//quantumcomputercasing
var quantumcomputercasing = VanillaFactory.createBlock("quantumcomputercasing", <blockmaterial:iron>);
quantumcomputercasing.entitySpawnable = false;
quantumcomputercasing.fullBlock = false;
quantumcomputercasing.setToolClass("pickaxe");
quantumcomputercasing.setToolLevel(3);
quantumcomputercasing.register();

//blockgraphite
var blockgraphite = VanillaFactory.createBlock("blockgraphite", <blockmaterial:iron>);
blockgraphite.entitySpawnable = false;
blockgraphite.fullBlock = false;
blockgraphite.setToolClass("pickaxe");
blockgraphite.setToolLevel(3);
blockgraphite.register();

//basecasing
var basecasing = VanillaFactory.createBlock("basecasing", <blockmaterial:iron>);
basecasing.entitySpawnable = false;
basecasing.fullBlock = false;
basecasing.setToolClass("pickaxe");
basecasing.setToolLevel(3);
basecasing.register();

//logcasing
var logcasing = VanillaFactory.createBlock("logcasing", <blockmaterial:iron>);
logcasing.entitySpawnable = false;
logcasing.fullBlock = false;
logcasing.setToolClass("pickaxe");
logcasing.setToolLevel(3);
logcasing.register();

//berylliumdetector
var berylliumdetector = VanillaFactory.createBlock("berylliumdetector", <blockmaterial:iron>);
berylliumdetector.entitySpawnable = false;
berylliumdetector.fullBlock = false;
berylliumdetector.setToolClass("pickaxe");
berylliumdetector.setToolLevel(3);
berylliumdetector.register();

//cryogeniccasing
var cryogeniccasing = VanillaFactory.createBlock("cryogeniccasing", <blockmaterial:iron>);
cryogeniccasing.entitySpawnable = false;
cryogeniccasing.fullBlock = false;
cryogeniccasing.setToolClass("pickaxe");
cryogeniccasing.setToolLevel(3);
cryogeniccasing.register();

//advancedcraftingunit
var advancedcraftingunit = VanillaFactory.createBlock("advancedcraftingunit", <blockmaterial:iron>);
advancedcraftingunit.entitySpawnable = false;
advancedcraftingunit.fullBlock = false;
advancedcraftingunit.setToolClass("pickaxe");
advancedcraftingunit.setToolLevel(3);
advancedcraftingunit.register();

//motorblock
var motorblock = VanillaFactory.createBlock("motorblock", <blockmaterial:iron>);
motorblock.entitySpawnable = false;
motorblock.fullBlock = false;
motorblock.setToolClass("pickaxe");
motorblock.setToolLevel(3);
motorblock.register();

//neutronaccelerator
var neutronaccelerator = VanillaFactory.createBlock("neutronaccelerator", <blockmaterial:iron>);
neutronaccelerator.entitySpawnable = false;
neutronaccelerator.fullBlock = false;
neutronaccelerator.setToolClass("pickaxe");
neutronaccelerator.setToolLevel(3);
neutronaccelerator.register();

//neutronsensor
var neutronsensor = VanillaFactory.createBlock("neutronsensor", <blockmaterial:iron>);
neutronsensor.entitySpawnable = false;
neutronsensor.fullBlock = false;
neutronsensor.setToolClass("pickaxe");
neutronsensor.setToolLevel(3);
neutronsensor.register();

// 新机械方块
var electromagnetic_acceleration_pipe_box = VanillaFactory.createBlock("electromagnetic_acceleration_pipe_box", <blockmaterial:iron>);
electromagnetic_acceleration_pipe_box.register();

var advanced_electromagnetic_acceleration_pipe_box = VanillaFactory.createBlock("advanced_electromagnetic_acceleration_pipe_box", <blockmaterial:iron>);
advanced_electromagnetic_acceleration_pipe_box.register();

var neutron_tube_casing = VanillaFactory.createBlock("neutron_tube_casing", <blockmaterial:iron>);
neutron_tube_casing.register();

var mervin_tara_carbonoxygen_casing = VanillaFactory.createBlock("mervin_tara_carbonoxygen_casing", <blockmaterial:iron>);
mervin_tara_carbonoxygen_casing.register();

var Indestructible_casing = VanillaFactory.createBlock("Indestructible_casing", <blockmaterial:iron>);
Indestructible_casing.register();

var accelerator_force_field_containment_mechanical_block = VanillaFactory.createBlock("accelerator_force_field_containment_mechanical_block", <blockmaterial:iron>);
accelerator_force_field_containment_mechanical_block.register();

var radiation_protection_mechanical_block = VanillaFactory.createBlock("radiation_protection_mechanical_block", <blockmaterial:iron>);
radiation_protection_mechanical_block.register();

var neutron_source = VanillaFactory.createBlock("neutron_source", <blockmaterial:iron>);
neutron_source.register();

var unmeltable_machine_block = VanillaFactory.createBlock("unmeltable_machine_block", <blockmaterial:iron>);
unmeltable_machine_block.register();

var gravitational_field_constraint_machine_block = VanillaFactory.createBlock("gravitational_field_constraint_machine_block", <blockmaterial:iron>);
gravitational_field_constraint_machine_block.register();

var stable_neutron_pipe_block = VanillaFactory.createBlock("stable_neutron_pipe_block", <blockmaterial:iron>);
stable_neutron_pipe_block.register();

var vacuum_casing = VanillaFactory.createBlock("vacuum_casing", <blockmaterial:iron>);
vacuum_casing.register();

var isa_machine_casing = VanillaFactory.createBlock("isa_machine_casing", <blockmaterial:iron>);
isa_machine_casing.register();

var flotation_casing = VanillaFactory.createBlock("flotation_casing", <blockmaterial:iron>);
flotation_casing.register();

var fishing_machine_casing = VanillaFactory.createBlock("fishing_machine_casing", <blockmaterial:iron>);
fishing_machine_casing.register();

var flotation_cell = VanillaFactory.createBlock("flotation_cell", <blockmaterial:iron>);
flotation_cell.register();
