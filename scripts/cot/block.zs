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

//龙线圈
var machine_coil_drac = VanillaFactory.createBlock("machine_coil_drac", <blockmaterial:iron>);
machine_coil_drac.entitySpawnable = false;
machine_coil_drac.fullBlock = false;
machine_coil_drac.setToolClass("pickaxe");
machine_coil_drac.setToolLevel(3);
machine_coil_drac.register();

//觉醒龙线圈
var machine_coil_wdrac = VanillaFactory.createBlock("machine_coil_wdrac", <blockmaterial:iron>);
machine_coil_wdrac.entitySpawnable = false;
machine_coil_wdrac.fullBlock = false;
machine_coil_wdrac.setToolClass("pickaxe");
machine_coil_wdrac.setToolLevel(3);
machine_coil_wdrac.register();

//态素中子线圈
var machine_coil_unive = VanillaFactory.createBlock("machine_coil_unive", <blockmaterial:iron>);
machine_coil_unive.entitySpawnable = false;
machine_coil_unive.fullBlock = false;
machine_coil_unive.setToolClass("pickaxe");
machine_coil_unive.setToolLevel(3);
machine_coil_unive.register();

//无尽线圈
var machine_coil_end = VanillaFactory.createBlock("machine_coil_end", <blockmaterial:iron>);
machine_coil_end.entitySpawnable = false;
machine_coil_end.fullBlock = false;
machine_coil_end.setToolClass("pickaxe");
machine_coil_end.setToolLevel(3);
machine_coil_end.register();

//库珀对线圈
var cupar_proton_pair_coil = VanillaFactory.createBlock("cupar_proton_pair_coil", <blockmaterial:iron>);
cupar_proton_pair_coil.entitySpawnable = false;
cupar_proton_pair_coil.fullBlock = false;
cupar_proton_pair_coil.setToolClass("pickaxe");
cupar_proton_pair_coil.setToolLevel(3);
cupar_proton_pair_coil.register();