import mods.gregtech.recipe.RecipeMap;
import scripts.main.makeShaped as makeShaped;
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val arc_furnace = mods.gregtech.recipe.RecipeMap.getByName("arc_furnace");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
#  UEV Machines
makeShaped("uev_alloy_smelter", <gregtech:machine:89>,
    [
        "OQO",
        "QCQ",
        "PQP"
    ],
    {
        "C": <gregtech:machine:995>,
        "O": <ore:circuitUev>,
        "P": <ore:cableGtSinglePedotTma>,
        "Q": <ore:wireGtQuadrupleTritanium>
    });

makeShaped("uev_cutter", <gregtech:machine:254>,
    [
        "QOG",
        "ACD",
        "OQB"
    ],
    {
        "A": <gregtech:meta_item_1:166>,
        "B": <gregtech:meta_item_1:136>,
        "C": <gregtech:machine:995>,
        "D": <ore:toolHeadBuzzSawCubicBoronNitride>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUev>,
        "Q": <ore:cableGtSinglePedotTma>,
    });

makeShaped("uev_electrolyzer", <gregtech:machine:284>,
    [
        "QGQ",
        "QCQ",
        "OPO"
    ],
    {
        "C": <gregtech:machine:995>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUev>,
        "P": <ore:cableGtSinglePedotTma>,
        "Q": <ore:wireGtSingleYttriumBariumCuprate>
    });

makeShaped("uev_electromagnetic_separator", <gregtech:machine:299>,
    [
        "APQ",
        "PCR",
        "OPQ"
    ],
    {
        "A": <gregtech:meta_item_1:166>,
        "C": <gregtech:machine:995>,
        "O": <ore:circuitUev>,
        "P": <ore:cableGtSinglePedotTma>,
        "Q": <ore:wireGtOctalCarbonNanotube>,
        "R": <ore:stickLongVanadiumGallium>
    });

makeShaped("uev_extruder", <gregtech:machine:329>,
    [
        "QQO",
        "ACL",
        "QQO"
    ],
    {
        "A": <gregtech:meta_item_1:181>,
        "C": <gregtech:machine:995>,
        "L": <ore:pipeLargeFluidDuranium>,
        "O": <ore:circuitUev>,
        "Q": <ore:wireGtQuadrupleTritanium>
    });

makeShaped("uev_fluid_heater", <gregtech:machine:389>,
    [
        "QGQ",
        "ACA",
        "POP"
    ],
    {
        "A": <gregtech:meta_item_1:151>,
        "C": <gregtech:machine:995>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUev>,
        "P": <ore:cableGtSinglePedotTma>,
        "Q": <ore:wireGtQuadrupleTritanium>
    });

makeShaped("uev_polarizer", <gregtech:machine:554>,
    [
        "QRQ",
        "PCP",
        "QRQ"
    ],
    {
        "C": <gregtech:machine:995>,
        "P": <ore:cableGtSinglePedotTma>,
        "Q": <ore:wireGtOctalCarbonNanotube>,
        "R": <ore:stickLongVanadiumGallium>,
    });

makeShaped("uev_thermal_centrifuge", <gregtech:machine:614>,
    [
        "OAO",
        "QCQ",
        "PAP"
    ],
    {
        "A": <gregtech:meta_item_1:136>,
        "C": <gregtech:machine:995>,
        "O": <ore:circuitUev>,
        "P": <ore:cableGtSinglePedotTma>,
        "Q": <ore:wireGtQuadrupleTritanium>
    });

makeShaped("uev_transformer", <gregtech:machine:1280>,
    [
        "WBB",
        "AC ",
        "WBB"
    ],
    {
        "A": <ore:cableGtSingleSunnarium>,
        "B": <ore:cableGtSinglePedotTma>,
        "C": <gregtech:machine:995>,
        "W": <gcys:meta_item_1:369>
    });

#  UIV Machines
makeShaped("uiv_electric_furnace", <gregtech:machine:60>,
    [
        "OQO",
        "QCQ",
        "PQP"
    ],
    {
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "P": <ore:cableGtSingleSunnarium>,
        "Q": <ore:wireGtDoubleEuropium>
    });

makeShaped("uiv_alloy_smelter", <gregtech:machine:90>,
    [
        "OQO",
        "QCQ",
        "PQP"
    ],
    {
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "P": <ore:cableGtSingleSunnarium>,
        "Q": <ore:wireGtQuadrupleEuropium>
    });

makeShaped("uiv_macerator", <gregtech:machine:75>,
    [
        "ABD",
        "QQC",
        "OOQ"
    ],
    {
        "A": <gregtech:meta_item_1:182>,
        "B": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "D": <gcys:meta_item_1:480>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_arc_furnace", <gregtech:machine:105>,
    [
        "QDQ",
        "OCO",
        "PPP"
    ],
    {
        "C": <gregtech:machine:996>,
        "D": <ore:dustGraphite>,
        "O": <ore:circuitUiv>,
        "P": <ore:plateAurorium>,
        "Q": <ore:cableGtQuadrupleSunnarium>
    });

makeShaped("uiv_assembler", <gregtech:machine:120>,
    [
        "AOA",
        "BCB",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:197>,
        "B": <gregtech:meta_item_1:167>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_autoclave", <gregtech:machine:135>,
    [
        "PGP",
        "PCP",
        "OAO"
    ],
    {
        "A": <gregtech:meta_item_1:152>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "P": <ore:plateAurorium>
    });

makeShaped("uiv_bending_machine", <gregtech:machine:150>,
    [
        "AQA",
        "OCO",
        "BPB"
    ],
    {
        "A": <gregtech:meta_item_1:182>,
        "B": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "P": <ore:plateAurorium>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_brewery", <gregtech:machine:165>,
    [
        "GAG",
        "QCQ",
        "OSO"
    ],
    {
        "A": <gregtech:meta_item_1:152>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
        "S": <ore:springCarbonNanotube>
    });

makeShaped("uiv_canning_machine", <gregtech:machine:180>,
    [
        "QAQ",
        "OCO",
        "GGG"
    ],
    {
        "A": <gregtech:meta_item_1:152>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_centrifuge", <gregtech:machine:195>,
    [
        "OAO",
        "QCQ",
        "OAO"
    ],
    {
        "A": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_chemical_bath", <gregtech:machine:210>,
    [
        "AGQ",
        "BGA",
        "OCO"
    ],{
        "A": <gregtech:meta_item_1:167>,
        "B": <gregtech:meta_item_1:152>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_chemical_reactor", <gregtech:machine:225>,
    [
        "XRX",
        "QAQ",
        "OCO"
    ],
    {
        "A": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "R": <ore:rotorAurorium>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
        "X": <ore:pipeHugeFluidPolybenzimidazole>
    });

makeShaped("uiv_compressor", <gregtech:machine:240>,
    [
        " O",
        "ACA",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:182>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
    });

makeShaped("uiv_cutting_machine", <gregtech:machine:255>,
    [
        "QOG",
        "ACD",
        "OQB"
    ],
    {
        "A": <gregtech:meta_item_1:167>,
        "B": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "D": <ore:toolHeadBuzzSawCubicBoronNitride>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
    });

makeShaped("uiv_distillery", <gregtech:machine:270>,
    [
        "GSG",
        "OCO",
        "QAQ"
    ],
    {
        "A": <gregtech:meta_item_1:152>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
        "S": <ore:springCarbonNanotube>
    });

makeShaped("uiv_electrolyzer", <gregtech:machine:285>,
    [
        "QGQ",
        "QCQ",
        "OPO"
    ],
    {
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "P": <ore:cableGtSingleSunnarium>,
        "Q": <ore:wireGtSingleMercuryCadmiumTelluride>
    });

makeShaped("uiv_electromagnetic_separator", <gregtech:machine:300>,
    [
        "APQ",
        "PCR",
        "OPQ"
    ],
    {
        "A": <gregtech:meta_item_1:167>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "P": <ore:cableGtSingleSunnarium>,
        "Q": <ore:wireGtOctalMithril>,
        "R": <ore:stickLongVanadiumGallium>
    });

makeShaped("uiv_extractor", <gregtech:machine:315>,
    [
        "GOG",
        "ACB",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:182>,
        "B": <gregtech:meta_item_1:152>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_extruder", <gregtech:machine:330>,
    [
        "QQO",
        "ACL",
        "QQO"
    ],
    {
        "A": <gregtech:meta_item_1:182>,
        "C": <gregtech:machine:996>,
        "L": <ore:pipeLargeFluidDuranium>,
        "O": <ore:circuitUiv>,
        "Q": <ore:wireGtQuadrupleMercuryCadmiumTelluride>
    });

makeShaped("uiv_fermenter", <gregtech:machine:345>,
    [
        "QAQ",
        "GCG",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:152>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_fluid_heater", <gregtech:machine:390>,
    [
        "QGQ",
        "ACA",
        "POP"
    ],
    {
        "A": <gregtech:meta_item_1:152>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "P": <ore:cableGtSingleSunnarium>,
        "Q": <ore:wireGtQuadrupleMercuryCadmiumTelluride>
    });

makeShaped("uiv_fluid_solidifier", <gregtech:machine:405>,
    [
        "AGA",
        "QCQ",
        "OEO"
    ],
    {
        "A": <gregtech:meta_item_1:152>,
        "C": <gregtech:machine:996>,
        "E": <ore:chestWood>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
    });

makeShaped("uiv_forge_hammer", <gregtech:machine:420>,
    [
        "QWQ",
        "OCO",
        "QAQ"
    ],
    {
        "A": <minecraft:anvil>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
        "W": <gregtech:meta_item_1:182>
    });

makeShaped("uiv_forming_press", <gregtech:machine:435>,
    [
        "QAQ",
        "OCO",
        "QAQ"
    ],
    {
        "A": <gregtech:meta_item_1:182>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_lathe", <gregtech:machine:450>,
    [
        "QOQ",
        "ACS",
        "OQB"
    ],
    {
        "A": <gregtech:meta_item_1:137>,
        "B": <gregtech:meta_item_1:182>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
        "S": <gcys:meta_item_1:480>
    });

makeShaped("uiv_scanner", <gregtech:machine:465>,
    [
        "OAO",
        "QCQ",
        "OBO"
    ],
    {
        "A": <gregtech:meta_item_1:227>,
        "B": <gregtech:meta_item_1:242>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_mixer", <gregtech:machine:480>,
    [
        "GRG",
        "GAG",
        "OCO"
    ],
    {
        "A": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "R": <ore:rotorAurorium>
    });

makeShaped("uiv_ore_washing_plant", <gregtech:machine:495>,
    [
        "RGR",
        "OAO",
        "QCQ"
    ],
    {
        "A": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
        "R": <ore:rotorAurorium>
    });

makeShaped("uiv_packager", <gregtech:machine:510>,
    [
        "WOW",
        "ACB",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:197>,
        "B": <gregtech:meta_item_1:167>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
        "W": <ore:chestWood>
    });

makeShaped("uiv_polarizer", <gregtech:machine:555>,
    [
        "QRQ",
        "PCP",
        "QRQ"
    ],
    {
        "C": <gregtech:machine:996>,
        "P": <ore:cableGtSingleSunnarium>,
        "Q": <ore:wireGtOctalMithril>,
        "R": <ore:stickLongVanadiumGallium>,
    });

makeShaped("uiv_precision_laser_engraver", <gregtech:machine:570>,
    [
        "ABA",
        "OCO",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:182>,
        "B": <gregtech:meta_item_1:227>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_sifting_machine", <gregtech:machine:585>,
    [
        "QYQ",
        "ACA",
        "OYO"
    ],
    {
        "A": <gregtech:meta_item_1:182>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>,
        "Y": <gregtech:meta_item_1:291>
    });

makeShaped("uiv_thermal_centrifuge", <gregtech:machine:615>,
    [
        "OAO",
        "QCQ",
        "PAP"
    ],
    {
        "A": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "P": <ore:cableGtSingleSunnarium>,
        "Q": <ore:wireGtQuadrupleMercuryCadmiumTelluride>
    });

makeShaped("uiv_wiremill", <gregtech:machine:630>,
    [
        "AQA",
        "OCO",
        "AQA"
    ],
    {
        "A": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_circuit_assembler", <gregtech:machine:645>,
    [
        "AOB",
        "DCD",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:197>,
        "B": <gregtech:meta_item_1:227>,
        "C": <gregtech:machine:996>,
        "D": <gregtech:meta_item_1:167>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uiv_rock_breaker", <gregtech:machine:675>,
    [
        "ABD",
        "QCQ",
        "GGG"
    ],
    {
        "A": <gregtech:meta_item_1:182>,
        "B": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "D": <gcys:meta_item_1:480>,
        "G": <gcys:transparent_casing>,
        "Q": <ore:cableGtSingleSunnarium>
    });

#  UXV Machines
makeShaped("uxv_electric_furnace", <gregtech:machine:61>,
    [
        "OQO",
        "QCQ",
        "PQP"
    ],
    {
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "P": <ore:cableGtSingleCrystalMatrix>,
        "Q": <ore:wireGtDoubleCarbonNanotube>
    });

makeShaped("uxv_alloy_smelter", <gregtech:machine:91>,
    [
        "OQO",
        "QCQ",
        "PQP"
    ],
    {
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "P": <ore:cableGtSingleCrystalMatrix>,
        "Q": <ore:wireGtQuadrupleCarbonNanotube>
    });

makeShaped("uxv_macerator", <gregtech:machine:76>,
    [
        "ABD",
        "QQC",
        "OOQ"
    ],
    {
        "A": <gregtech:meta_item_1:183>,
        "B": <gregtech:meta_item_1:138>,
        "C": <gregtech:machine:997>,
        "D": <gcys:meta_item_1:480>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_arc_furnace", <gregtech:machine:106>,
    [
        "QDQ",
        "OCO",
        "PPP"
    ],
    {
        "C": <gregtech:machine:997>,
        "D": <ore:dustGraphite>,
        "O": <ore:circuitUxv>,
        "P": <ore:plateInfinity>,
        "Q": <ore:cableGtQuadrupleCrystalMatrix>
    });

makeShaped("uxv_assembler", <gregtech:machine:121>,
    [
        "AOA",
        "BCB",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:198>,
        "B": <gregtech:meta_item_1:168>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_autoclave", <gregtech:machine:136>,
    [
        "PGP",
        "PCP",
        "OAO"
    ],
    {
        "A": <gregtech:meta_item_1:153>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "P": <ore:plateInfinity>
    });

makeShaped("uxv_bending_machine", <gregtech:machine:151>,
    [
        "AQA",
        "OCO",
        "BPB"
    ],
    {
        "A": <gregtech:meta_item_1:183>,
        "B": <gregtech:meta_item_1:138>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "P": <ore:plateInfinity>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_brewery", <gregtech:machine:166>,
    [
        "GAG",
        "QCQ",
        "OSO"
    ],
    {
        "A": <gregtech:meta_item_1:153>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
        "S": <ore:springSunnarium>
    });

makeShaped("uxv_canning_machine", <gregtech:machine:180>,
    [
        "QAQ",
        "OCO",
        "GGG"
    ],
    {
        "A": <gregtech:meta_item_1:153>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_centrifuge", <gregtech:machine:196>,
    [
        "OAO",
        "QCQ",
        "OAO"
    ],
    {
        "A": <gregtech:meta_item_1:138>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_chemical_bath", <gregtech:machine:211>,
    [
        "AGQ",
        "BGA",
        "OCO"
    ],{
        "A": <gregtech:meta_item_1:168>,
        "B": <gregtech:meta_item_1:153>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_chemical_reactor", <gregtech:machine:226>,
    [
        "XRX",
        "QAQ",
        "OCO"
    ],
    {
        "A": <gregtech:meta_item_1:138>,
        "C": <gregtech:machine:997>,
        "R": <ore:rotorInfinity>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
        "X": <ore:pipeHugeFluidPolybenzimidazole>
    });

makeShaped("uxv_compressor", <gregtech:machine:241>,
    [
        " O",
        "ACA",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:183>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
    });

makeShaped("uxv_cutting_machine", <gregtech:machine:256>,
    [
        "QOG",
        "ACD",
        "OQB"
    ],
    {
        "A": <gregtech:meta_item_1:168>,
        "B": <gregtech:meta_item_1:138>,
        "C": <gregtech:machine:997>,
        "D": <ore:toolHeadBuzzSawCubicBoronNitride>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
    });

makeShaped("uxv_distillery", <gregtech:machine:271>,
    [
        "GSG",
        "OCO",
        "QAQ"
    ],
    {
        "A": <gregtech:meta_item_1:153>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
        "S": <ore:springSunnarium>
    });

makeShaped("uxv_electrolyzer", <gregtech:machine:286>,
    [
        "QGQ",
        "QCQ",
        "OPO"
    ],
    {
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "P": <ore:cableGtSingleCrystalMatrix>,
        "Q": <ore:wireGtSingleCarbonNanotube>
    });

makeShaped("uxv_electromagnetic_separator", <gregtech:machine:301>,
    [
        "APQ",
        "PCR",
        "OPQ"
    ],
    {
        "A": <gregtech:meta_item_1:168>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "P": <ore:cableGtSingleCrystalMatrix>,
        "Q": <ore:wireGtOctalHikarium>,
        "R": <ore:stickLongVanadiumGallium>
    });

makeShaped("uxv_extractor", <gregtech:machine:316>,
    [
        "GOG",
        "ACB",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:183>,
        "B": <gregtech:meta_item_1:153>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_extruder", <gregtech:machine:331>,
    [
        "QQO",
        "ACL",
        "QQO"
    ],
    {
        "A": <gregtech:meta_item_1:183>,
        "C": <gregtech:machine:997>,
        "L": <ore:pipeLargeFluidDuranium>,
        "O": <ore:circuitUxv>,
        "Q": <ore:wireGtQuadrupleCarbonNanotube>
    });

makeShaped("uxv_fermenter", <gregtech:machine:346>,
    [
        "QAQ",
        "GCG",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:153>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_fluid_heater", <gregtech:machine:391>,
    [
        "QGQ",
        "ACA",
        "POP"
    ],
    {
        "A": <gregtech:meta_item_1:153>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "P": <ore:cableGtSingleCrystalMatrix>,
        "Q": <ore:wireGtQuadrupleCarbonNanotube>
    });

makeShaped("uxv_fluid_solidifier", <gregtech:machine:406>,
    [
        "AGA",
        "QCQ",
        "OEO"
    ],
    {
        "A": <gregtech:meta_item_1:153>,
        "C": <gregtech:machine:997>,
        "E": <ore:chestWood>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
    });

makeShaped("uxv_forge_hammer", <gregtech:machine:421>,
    [
        "QWQ",
        "OCO",
        "QAQ"
    ],
    {
        "A": <minecraft:anvil>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
        "W": <gregtech:meta_item_1:183>
    });

makeShaped("uxv_forming_press", <gregtech:machine:436>,
    [
        "QAQ",
        "OCO",
        "QAQ"
    ],
    {
        "A": <gregtech:meta_item_1:183>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_lathe", <gregtech:machine:451>,
    [
        "QOQ",
        "ACS",
        "OQB"
    ],
    {
        "A": <gregtech:meta_item_1:138>,
        "B": <gregtech:meta_item_1:183>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
        "S": <gcys:meta_item_1:480>
    });

makeShaped("uxv_scanner", <gregtech:machine:466>,
    [
        "OAO",
        "QCQ",
        "OBO"
    ],
    {
        "A": <gregtech:meta_item_1:228>,
        "B": <gregtech:meta_item_1:243>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_mixer", <gregtech:machine:481>,
    [
        "GRG",
        "GAG",
        "OCO"
    ],
    {
        "A": <gregtech:meta_item_1:138>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "R": <ore:rotorInfinity>
    });

makeShaped("uxv_ore_washing_plant", <gregtech:machine:496>,
    [
        "RGR",
        "OAO",
        "QCQ"
    ],
    {
        "A": <gregtech:meta_item_1:138>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
        "R": <ore:rotorInfinity>
    });

makeShaped("uxv_packager", <gregtech:machine:511>,
    [
        "WOW",
        "ACB",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:198>,
        "B": <gregtech:meta_item_1:168>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
        "W": <ore:chestWood>
    });

makeShaped("uxv_polarizer", <gregtech:machine:556>,
    [
        "QRQ",
        "PCP",
        "QRQ"
    ],
    {
        "C": <gregtech:machine:997>,
        "P": <ore:cableGtSingleCrystalMatrix>,
        "Q": <ore:wireGtOctalHikarium>,
        "R": <ore:stickLongVanadiumGallium>,
    });

makeShaped("uxv_precision_laser_engraver", <gregtech:machine:571>,
    [
        "ABA",
        "OCO",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:183>,
        "B": <gregtech:meta_item_1:228>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_sifting_machine", <gregtech:machine:586>,
    [
        "QYQ",
        "ACA",
        "OYO"
    ],
    {
        "A": <gregtech:meta_item_1:183>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
        "Y": <gregtech:meta_item_1:291>
    });

makeShaped("uxv_thermal_centrifuge", <gregtech:machine:616>,
    [
        "OAO",
        "QCQ",
        "PAP"
    ],
    {
        "A": <gregtech:meta_item_1:138>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "P": <ore:cableGtSingleCrystalMatrix>,
        "Q": <ore:wireGtQuadrupleCarbonNanotube>
    });

makeShaped("uxv_wiremill", <gregtech:machine:631>,
    [
        "AQA",
        "OCO",
        "AQA"
    ],
    {
        "A": <gregtech:meta_item_1:138>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("uxv_circuit_assembler", <gregtech:machine:646>,
    [
        "AOB",
        "DCD",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:198>,
        "B": <gregtech:meta_item_1:228>,
        "C": <gregtech:machine:997>,
        "D": <gregtech:meta_item_1:168>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });
#  OpV Machines
makeShaped("opv_electric_furnace", <gregtech:machine:62>,
    [
        "OQO",
        "QCQ",
        "PQP"
    ],
    {
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "P": <ore:cableGtSingleSuperheavyElementMixture>,
        "Q": <ore:wireGtDoubleLunarium>
    });

makeShaped("opv_macerator", <gregtech:machine:77>,
    [
        "ABD",
        "QQC",
        "OOQ"
    ],
    {
        "A": <gregtech:meta_item_1:184>,
        "B": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "D": <gcys:meta_item_1:480>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_alloy_smelter", <gregtech:machine:92>,
    [
        "OQO",
        "QCQ",
        "PQP"
    ],
    {
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "P": <ore:cableGtSingleSuperheavyElementMixture>,
        "Q": <ore:wireGtQuadrupleLunarium>
    });
    
makeShaped("opv_arc_furnace", <gregtech:machine:107>,
    [
        "QDQ",
        "OCO",
        "PPP"
    ],
    {
        "C": <gregtech:machine:998>,
        "D": <ore:dustGraphite>,
        "O": <ore:circuitOpv>,
        "P": <ore:plateTiberium>,
        "Q": <ore:cableGtQuadrupleSuperheavyElementMixture>
    });

makeShaped("opv_assembler", <gregtech:machine:122>,
    [
        "AOA",
        "BCB",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:199>,
        "B": <gregtech:meta_item_1:169>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
    });
    
makeShaped("opv_autoclave", <gregtech:machine:137>,
    [
        "PGP",
        "PCP",
        "OAO"
    ],
    {
        "A": <gregtech:meta_item_1:154>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "P": <ore:plateTiberium>
    });

makeShaped("opv_bending_machine", <gregtech:machine:152>,
    [
        "AQA",
        "OCO",
        "BPB"
    ],
    {
        "A": <gregtech:meta_item_1:184>,
        "B": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "P": <ore:plateTiberium>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_brewery", <gregtech:machine:167>,
    [
        "GAG",
        "QCQ",
        "OSO"
    ],
    {
        "A": <gregtech:meta_item_1:154>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
        "S": <ore:springCrystalMatrix>
    });

makeShaped("opv_canning_machine", <gregtech:machine:182>,
    [
        "QAQ",
        "OCO",
        "GGG"
    ],
    {
        "A": <gregtech:meta_item_1:154>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_centrifuge", <gregtech:machine:197>,
    [
        "OAO",
        "QCQ",
        "OAO"
    ],
    {
        "A": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_chemical_bath", <gregtech:machine:212>,
    [
        "AGQ",
        "BGA",
        "OCO"
    ],{
        "A": <gregtech:meta_item_1:169>,
        "B": <gregtech:meta_item_1:154>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_chemical_reactor", <gregtech:machine:227>,
    [
        "XRX",
        "QAQ",
        "OCO"
    ],
    {
        "A": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "R": <ore:rotorTiberium>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
        "X": <ore:pipeHugeFluidPolybenzimidazole>
    });

makeShaped("opv_compressor", <gregtech:machine:242>,
    [
        " O",
        "ACA",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:184>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_cutting_machine", <gregtech:machine:257>,
    [
        "QOG",
        "ACD",
        "OQB"
    ],
    {
        "A": <gregtech:meta_item_1:169>,
        "B": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "D": <ore:toolHeadBuzzSawCubicBoronNitride>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_distillery", <gregtech:machine:272>,
    [
        "GSG",
        "OCO",
        "QAQ"
    ],
    {
        "A": <gregtech:meta_item_1:154>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
        "S": <ore:springCrystalMatrix>
    });
    
makeShaped("opv_electrolyzer", <gregtech:machine:287>,
    [
        "QGQ",
        "QCQ",
        "OPO"
    ],
    {
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "P": <ore:cableGtSingleSuperheavyElementMixture>,
        "Q": <ore:wireGtSingleHikarium>
    });

makeShaped("opv_electromagnetic_separator", <gregtech:machine:302>,
    [
        "APQ",
        "PCR",
        "OPQ"
    ],
    {
        "A": <gregtech:meta_item_1:169>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "P": <ore:cableGtSingleSuperheavyElementMixture>,
        "Q": <ore:wireGtOctalHypogen>,
        "R": <ore:stickLongVanadiumGallium>
    });

makeShaped("opv_extractor", <gregtech:machine:317>,
    [
        "GOG",
        "ACB",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:184>,
        "B": <gregtech:meta_item_1:154>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_extruder", <gregtech:machine:332>,
    [
        "QQO",
        "ACL",
        "QQO"
    ],
    {
        "A": <gregtech:meta_item_1:184>,
        "C": <gregtech:machine:998>,
        "L": <ore:pipeLargeFluidDuranium>,
        "O": <ore:circuitOpv>,
        "Q": <ore:wireGtQuadrupleHikarium>
    });

makeShaped("opv_fermenter", <gregtech:machine:347>,
    [
        "QAQ",
        "GCG",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:154>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_fluid_heater", <gregtech:machine:392>,
    [
        "QGQ",
        "ACA",
        "POP"
    ],
    {
        "A": <gregtech:meta_item_1:154>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "P": <ore:cableGtSingleSuperheavyElementMixture>,
        "Q": <ore:wireGtQuadrupleHikarium>
    });

makeShaped("opv_fluid_solidifier", <gregtech:machine:407>,
    [
        "AGA",
        "QCQ",
        "OEO"
    ],
    {
        "A": <gregtech:meta_item_1:154>,
        "C": <gregtech:machine:998>,
        "E": <ore:chestWood>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });
    
makeShaped("opv_forge_hammer", <gregtech:machine:422>,
    [
        "QWQ",
        "OCO",
        "QAQ"
    ],
    {
        "A": <minecraft:anvil>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
        "W": <gregtech:meta_item_1:184>
    });

makeShaped("opv_forming_press", <gregtech:machine:437>,
    [
        "QAQ",
        "OCO",
        "QAQ"
    ],
    {
        "A": <gregtech:meta_item_1:184>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_lathe", <gregtech:machine:452>,
    [
        "QOQ",
        "ACS",
        "OQB"
    ],
    {
        "A": <gregtech:meta_item_1:139>,
        "B": <gregtech:meta_item_1:184>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
        "S": <gcys:meta_item_1:480>
    });

makeShaped("opv_scanner", <gregtech:machine:467>,
    [
        "OAO",
        "QCQ",
        "OBO"
    ],
    {
        "A": <gregtech:meta_item_1:229>,
        "B": <gregtech:meta_item_1:244>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_mixer", <gregtech:machine:482>,
    [
        "GRG",
        "GAG",
        "OCO"
    ],
    {
        "A": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "R": <ore:rotorTiberium>
    });

makeShaped("opv_ore_washing_plant", <gregtech:machine:497>,
    [
        "RGR",
        "OAO",
        "QCQ"
    ],
    {
        "A": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
        "R": <ore:rotorTiberium>
    });

makeShaped("opv_packager", <gregtech:machine:512>,
    [
        "WOW",
        "ACB",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:199>,
        "B": <gregtech:meta_item_1:169>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
        "W": <ore:chestWood>
    });

makeShaped("opv_polarizer", <gregtech:machine:557>,
    [
        "QRQ",
        "PCP",
        "QRQ"
    ],
    {
        "C": <gregtech:machine:998>,
        "P": <ore:cableGtSingleSuperheavyElementMixture>,
        "Q": <ore:wireGtOctalHypogen>,
        "R": <ore:stickLongVanadiumGallium>
    });

makeShaped("opv_precision_laser_engraver", <gregtech:machine:572>,
    [
        "ABA",
        "OCO",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:184>,
        "B": <gregtech:meta_item_1:229>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_sifting_machine", <gregtech:machine:587>,
    [
        "QYQ",
        "ACA",
        "OYO"
    ],
    {
        "A": <gregtech:meta_item_1:184>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
        "Y": <gregtech:meta_item_1:291>
    });

makeShaped("opv_thermal_centrifuge", <gregtech:machine:617>,
    [
        "OAO",
        "QCQ",
        "PAP"
    ],
    {
        "A": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "P": <ore:cableGtSingleSuperheavyElementMixture>,
        "Q": <ore:wireGtQuadrupleHikarium>
    });

makeShaped("opv_wiremill", <gregtech:machine:632>,
    [
        "AQA",
        "OCO",
        "AQA"
    ],
    {
        "A": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_circuit_assembler", <gregtech:machine:647>,
    [
        "AOB",
        "DCD",
        "QOQ"
    ],
    {
        "A": <gregtech:meta_item_1:199>,
        "B": <gregtech:meta_item_1:229>,
        "C": <gregtech:machine:998>,
        "D": <gregtech:meta_item_1:169>,
        "O": <ore:circuitMax>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("opv_rock_breaker", <gregtech:machine:677>,
    [
        "ABD",
        "QCQ",
        "GGG"
    ],
    {
        "A": <gregtech:meta_item_1:184>,
        "B": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "D": <gcys:meta_item_1:480>,
        "G": <gcys:transparent_casing>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });


#  GCYS UEV+ Machines
makeShaped("uev_chemical_dryer", <gregtech:machine:2209>,
    [
        "QOQ",
        "SCS",
        "QOQ"
    ],
    {
        "C": <gregtech:machine:995>,
        "Q": <ore:cableGtSinglePedotTma>,
        "O": <ore:circuitUev>,
        "S": <ore:springPedotTma>
    });

makeShaped("uiv_chemical_dryer", <gregtech:machine:2210>,
    [
        "QOQ",
        "SCS",
        "QOQ"
    ],
    {
        "C": <gregtech:machine:996>,
        "Q": <ore:cableGtSingleSunnarium>,
        "O": <ore:circuitUiv>,
        "S": <ore:springSunnarium>
    });

makeShaped("uxv_chemical_dryer", <gregtech:machine:2211>,
    [
        "QOQ",
        "SCS",
        "QOQ"
    ],
    {
        "C": <gregtech:machine:997>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
        "O": <ore:circuitUxv>,
        "S": <ore:springCrystalMatrix>
    });

makeShaped("opv_chemical_dryer", <gregtech:machine:2212>,
    [
        "QOQ",
        "SCS",
        "QOQ"
    ],
    {
        "C": <gregtech:machine:998>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
        "O": <ore:circuitOpv>,
        "S": <ore:springSuperheavyElementMixture>
    });





#  OpV Transformer
makeShaped("opv_transformer", <gregtech:machine:1283>,
    [
        "PXX",
        "QC ",
        "PXX"
    ],
    {
        "C": <gregtech:machine:998>,
        "P" :<gcys:meta_item_1:370>,
        "Q": <ore:cableGtSingleEternal>,
        "X": <ore:cableGtSingleSuperheavyElementMixture>
    });

assembler.recipeBuilder()
    .inputs([<gregtech:machine:1283>,
             <gregtech:meta_item_1:151>,
             <ore:wireGtQuadrupleEternal>,
             <ore:wireGtOctalSuperheavyElementMixture>,
             <ore:springSmallSuperheavyElementMixture>,
             <ore:springEternal>])
    .fluidInputs([<liquid:lubricant> * 4000])
    .outputs([<gregtech:machine:1743>])
    .EUt(503316480)
    .duration(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<gregtech:machine:1743>,
             <gregtech:meta_item_1:151>,
             <ore:cableGtOctalEternal>,
             <ore:cableGtHexSuperheavyElementMixture> * 2,
             <ore:springSmallSuperheavyElementMixture>,
             <ore:springEternal>])
    .fluidInputs([<liquid:lubricant> * 4000])
    .outputs([<gregtech:machine:1298>])
    .EUt(503316480)
    .duration(200)
    .buildAndRegister();

#  OpV Energy Hatch
assembly_line.recipeBuilder()
    .inputs([<gregtech:machine:998>,
             <ore:cableGtSingleSuperheavyElementMixture> * 4,
             <gcys:meta_item_1:370> * 8,
             <ore:circuitOpv>,
             <gcys:meta_item_1:354> * 2])
    .fluidInputs([<liquid:sodium_potassium> * 60000,
                  <liquid:soldering_alloy> * 5760])
    .outputs([<gregtech:machine:1223>])
    .EUt(134217728)
    .duration(1200)
    .buildAndRegister();

#  UIV Dynamo Hatch
assembly_line.recipeBuilder()
    .inputs([<gregtech:machine:996>,
             <ore:springSunnarium> * 4,
             <gcys:meta_item_1:370> * 2,
             <ore:circuitUiv>,
             <gcys:meta_item_1:352> * 2])
    .fluidInputs([<liquid:sodium_potassium> * 36000,
                  <liquid:soldering_alloy> * 5760])
    .outputs([<gregtech:machine:1236>])
    .EUt(8388608)
    .duration(1000)
    .buildAndRegister();

#  UXV Dynamo Hatch
assembly_line.recipeBuilder()
    .inputs([<gregtech:machine:997>,
             <ore:springCrystalMatrix> * 4,
             <gcys:meta_item_1:370> * 4,
             <ore:circuitUxv>,
             <gcys:meta_item_1:353> * 2])
    .fluidInputs([<liquid:sodium_potassium> * 48000,
                  <liquid:soldering_alloy> * 5760])
    .outputs([<gregtech:machine:1237>])
    .EUt(33554432)
    .duration(1200)
    .buildAndRegister();

#  OpV Dynamo Hatch
assembly_line.recipeBuilder()
    .inputs([<gregtech:machine:998>,
             <ore:springSuperheavyElementMixture> * 4,
             <gcys:meta_item_1:370> * 8,
             <ore:circuitOpv>,
             <gcys:meta_item_1:354> * 2])
    .fluidInputs([<liquid:sodium_potassium> * 60000,
                  <liquid:soldering_alloy> * 5760])
    .outputs([<gregtech:machine:1238>])
    .EUt(134217728)
    .duration(1200)
    .buildAndRegister();

##  UHV voltage coil
<recipemap:macerator>.findRecipe(32, [<gcys:meta_item_1:350>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<gcys:meta_item_1:350>], [<liquid:oxygen> * 350]).remove();

macerator.recipeBuilder()
    .inputs([<gcys:meta_item_1:350>])
    .outputs([<gregtech:meta_dust:3104> * 2,
              <gregtech:meta_dust_small:6025> * 2])
    .EUt(32)
    .duration(35.6)
    .buildAndRegister();

arc_furnace.recipeBuilder()
    .inputs([<gcys:meta_item_1:350>])
    .fluidInputs([<liquid:oxygen> * 350])
    .outputs([<gregtech:meta_ingot:3104> * 2,
              <gregtech:meta_nugget:3622> * 4])
    .EUt(30)
    .duration(35)
    .buildAndRegister();

#  UHV coil
assembler.recipeBuilder()
    .inputs([<ore:stickCgtMagnetic>,
             <ore:wireFineVibranium> * 16])
    .circuit(1)
    .outputs([<gcys:meta_item_1:350>])
    .EUt(2050000)
    .duration(10)
    .buildAndRegister();
	
##  UEV voltage coil
<recipemap:macerator>.findRecipe(32, [<gcys:meta_item_1:351>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<gcys:meta_item_1:351>], [<liquid:oxygen> * 350]).remove();

macerator.recipeBuilder()
    .inputs([<gcys:meta_item_1:351>])
    .outputs([<gregtech:meta_dust:32013> * 2,
              <gregtech:meta_dust_small:6025> * 2])
    .EUt(32)
    .duration(35.6)
    .buildAndRegister();

arc_furnace.recipeBuilder()
    .inputs([<gcys:meta_item_1:351>])
    .fluidInputs([<liquid:oxygen> * 350])
    .outputs([<gregtech:meta_ingot:32013> * 2,
              <gregtech:meta_nugget:3622> * 4])
    .EUt(30)
    .duration(35)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:stickCgtMagnetic>,
             <ore:wireFineMithril> * 16])
    .circuit(1)
    .outputs([<gcys:meta_item_1:351>])
    .EUt(2097152)
    .duration(200)
    .buildAndRegister();

##  UIV voltage coil
<recipemap:macerator>.findRecipe(32, [<gcys:meta_item_1:352>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<gcys:meta_item_1:352>], [<liquid:oxygen> * 350]).remove();

macerator.recipeBuilder()
    .inputs([<gcys:meta_item_1:352>])
    .outputs([<gregtech:meta_dust:32036> * 2,
              <gregtech:meta_dust_small:32023> * 2])
    .EUt(32)
    .duration(35.6)
    .buildAndRegister();

arc_furnace.recipeBuilder()
    .inputs([<gcys:meta_item_1:352>])
    .fluidInputs([<liquid:oxygen> * 350])
    .outputs([<gregtech:meta_ingot:32036> * 2,
              <gregtech:meta_nugget:32023> * 4])
    .EUt(30)
    .duration(35)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:stickSuperconductingMagnetMixture>,
             <ore:wireFineLunarium> * 16])
    .circuit(1)
    .outputs([<gcys:meta_item_1:352>])
    .EUt(8388608)
    .duration(200)
    .buildAndRegister();
##  UXV voltage coil
<recipemap:macerator>.findRecipe(32, [<gcys:meta_item_1:353>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<gcys:meta_item_1:353>], [<liquid:oxygen> * 350]).remove();

macerator.recipeBuilder()
    .inputs([<gcys:meta_item_1:353>])
    .outputs([<gregtech:meta_dust:32039> * 2,
              <gregtech:meta_dust_small:32023> * 2])
    .EUt(32)
    .duration(35.6)
    .buildAndRegister();

arc_furnace.recipeBuilder()
    .inputs([<gcys:meta_item_1:353>])
    .fluidInputs([<liquid:oxygen> * 350])
    .outputs([<gregtech:meta_ingot:32039> * 2,
              <gregtech:meta_nugget:32023> * 2])
    .EUt(30)
    .duration(35)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:stickSuperconductingMagnetMixture>,
             <ore:wireFineHikarium> * 16])
    .circuit(1)
    .outputs([<gcys:meta_item_1:353>])
    .EUt(33554432)
    .duration(200)
    .buildAndRegister();
##  OpV voltage coil
<recipemap:macerator>.findRecipe(32, [<gcys:meta_item_1:354>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<gcys:meta_item_1:354>], [<liquid:oxygen> * 350]).remove();

macerator.recipeBuilder()
    .inputs([<gcys:meta_item_1:354>])
    .outputs([<gregtech:meta_dust:32048> * 2,
              <gregtech:meta_dust_small:32052> * 2])
    .EUt(32)
    .duration(35.6)
    .buildAndRegister();

arc_furnace.recipeBuilder()
    .inputs([<gcys:meta_item_1:354>])
    .outputs([<gregtech:meta_ingot:32048> * 2,
              <gregtech:meta_nugget:32052> * 2])
    .EUt(30)
    .duration(35)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:stickStellarDebris>,
             <ore:wireFineHypogen> * 16])
    .circuit(1)
    .outputs([<gcys:meta_item_1:354>])
    .EUt(536870912)
    .duration(200)
    .buildAndRegister();
	
#  64A UHV Substation Energy Hatch
<recipemap:assembler>.findRecipe(122880, [<metaitem:transformer.adjustable.uv>, <metaitem:energy_hatch.output_16a.uv>, <metaitem:plate.ultra_high_power_integrated_circuit> * 4, <metaitem:voltage_coil.uv> * 2, <metaitem:wireGtHexYttriumBariumCuprate> * 2], null).remove();
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1294>,
             <gregtech:machine:1249>,
             <gcys:meta_item_1:368> * 4,
             <gcys:meta_item_1:350> * 2,
             <ore:wireGtHexEuropium> * 2])
    .outputs([<gregtech:machine:1268>])
    .EUt(491520)
    .duration(400)
    .buildAndRegister();

#  UHV Power Transformer
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1739>,
             <gregtech:meta_item_1:147>,
             <ore:cableGtOctalPedotTma>,
             <ore:cableGtHexEuropium> * 2,
             <ore:springSmallEuropium>,
             <ore:springPedotTma>])
    .fluidInputs([<liquid:lubricant> * 2000])
    .outputs([<gregtech:machine:1294>])
    .EUt(1966080)
    .duration(200)
    .buildAndRegister();

#  UEV Power Transformer
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1740>,
             <gregtech:meta_item_1:148>,
             <ore:cableGtOctalSunnarium>,
             <ore:cableGtHexPedotTma> * 2,
             <ore:springSmallPedotTma>,
             <ore:springSunnarium>])
    .fluidInputs([<liquid:lubricant> * 2000])
    .outputs([<gregtech:machine:1295>])
    .EUt(7864320)
    .duration(200)
    .buildAndRegister();

#  UIV Power Transformer
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1741>,
             <gregtech:meta_item_1:149>,
             <ore:cableGtOctalCrystalMatrix>,
             <ore:cableGtHexSunnarium> * 2,
             <ore:springSmallSunnarium>,
             <ore:springCrystalMatrix>])
    .fluidInputs([<liquid:lubricant> * 2000])
    .outputs([<gregtech:machine:1296>])
    .EUt(31457280)
    .duration(200)
    .buildAndRegister();

#  UXV Power Transformer
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1742>,
             <gregtech:meta_item_1:150>,
             <ore:cableGtOctalSuperheavyElementMixture>,
             <ore:cableGtHexCrystalMatrix> * 2,
             <ore:springSmallCrystalMatrix>,
             <ore:springSuperheavyElementMixture>])
    .fluidInputs([<liquid:lubricant> * 2000])   
    .outputs([<gregtech:machine:1297>])
    .EUt(125829120)
    .duration(200)
    .buildAndRegister();

#  UEV Hi-Amp Transformer
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1280>,
             <gregtech:meta_item_1:148>,
             <ore:wireGtQuadrupleSunnarium>,
             <ore:wireGtOctalPedotTma>,
             <ore:springSmallPedotTma>,
             <ore:springSunnarium>])
    .fluidInputs([<liquid:lubricant> * 4000])
    .outputs([<gregtech:machine:1740>])
    .EUt(7864320)
    .duration(200)
    .buildAndRegister();

#  UIV Hi-Amp Transformer
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1281>,
             <gregtech:meta_item_1:149>,
             <ore:wireGtQuadrupleCrystalMatrix>,
             <ore:wireGtOctalSunnarium>,
             <ore:springSmallSunnarium>,
             <ore:springCrystalMatrix>])
    .fluidInputs([<liquid:lubricant> * 4000])
    .outputs([<gregtech:machine:1741>])
    .EUt(31457280)
    .duration(200)
    .buildAndRegister();

#  UXV Hi-Amp Transformer
assembler.recipeBuilder()
    .inputs([<gregtech:machine:1282>,
             <gregtech:meta_item_1:150>,
             <ore:wireGtQuadrupleSuperheavyElementMixture>,
             <ore:wireGtOctalCrystalMatrix>,
             <ore:springSmallCrystalMatrix>,
             <ore:springSuperheavyElementMixture>])
    .fluidInputs([<liquid:lubricant> * 4000])
    .outputs([<gregtech:machine:1742>])
    .EUt(125829120)
    .duration(200)
    .buildAndRegister();
	
#  UIV energy hatch
assembly_line.recipeBuilder()
    .inputs([<gregtech:machine:996>,
             <ore:cableGtSingleLunarium> * 4,
             <gcys:meta_item_1:370> * 2,
             <ore:circuitUiv>,
             <gcys:meta_item_1:352> * 2])
    .fluidInputs([<liquid:sodium_potassium> * 36000,
                  <liquid:soldering_alloy> * 5760])
    .outputs([<gregtech:machine:1221>])
    .EUt(8388608)
    .duration(1000)
    .buildAndRegister();

#  UXV energy hatch
assembly_line.recipeBuilder()
    .inputs([<gregtech:machine:997>,
             <ore:cableGtSingleCrystalMatrix> * 4,
             <gcys:meta_item_1:370> * 4,
             <ore:circuitUxv>,
             <gcys:meta_item_1:353> * 2])
    .fluidInputs([<liquid:sodium_potassium> * 48000,
                  <liquid:soldering_alloy> * 5760])
    .outputs([<gregtech:machine:1222>])
    .EUt(33554432)
    .duration(1200)
    .buildAndRegister();
	
recipes.remove(<gregtech:machine:8511>);
makeShaped("uhv_slicing_machine", <gregtech:machine:8511>,
    [
        "AOQ",
        "SCO",
        "PBQ"
    ],
    {
        "A": <gregtech:meta_item_1:180>,
        "S": <gregtech:meta_tool_head_buzz_saw:3559>,
        "P": <ore:plateOrichalcum>,
        "C": <gregtech:machine:994>,
        "O": <ore:circuitUhv>,
        "B": <gregtech:meta_item_1:165>,
        "Q": <ore:cableGtSingleEuropium>
    });

makeShaped("uev_slicing_machine", <gregtech:machine:8512>,
    [
        "AOQ",
        "SCO",
        "PBQ"
    ],
    {
        "A": <gregtech:meta_item_1:181>,
        "S": <gregtech:meta_tool_head_buzz_saw:3559>,
        "P": <ore:plateAdamantium>,
        "C": <gregtech:machine:995>,
        "O": <ore:circuitUev>,
        "B": <gregtech:meta_item_1:166>,
        "Q": <ore:cableGtSinglePedotTma>
    });

makeShaped("uiv_slicing_machine", <gregtech:machine:8513>,
    [
        "AOQ",
        "SCO",
        "PBQ"
    ],
    {
        "A": <gregtech:meta_item_1:182>,
        "S": <gregtech:meta_tool_head_buzz_saw:3559>,
        "P": <ore:plateAurorium>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "B": <gregtech:meta_item_1:167>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uxv_slicing_machine", <gregtech:machine:8514>,
    [
        "AOQ",
        "SCO",
        "PBQ"
    ],
    {
        "A": <gregtech:meta_item_1:183>,
        "S": <gregtech:meta_tool_head_buzz_saw:3559>,
        "P": <ore:plateDenseInfinity>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "B": <gregtech:meta_item_1:168>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("opv_slicing_machine", <gregtech:machine:8515>,
    [
        "AOQ",
        "SCO",
        "PBQ"
    ],
    {
        "A": <gregtech:meta_item_1:184>,
        "S": <gregtech:meta_tool_head_buzz_saw:3559>,
        "P": <ore:plateTiberium>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "B": <gregtech:meta_item_1:169>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("uiv_cuisine_assembler", <gregtech:machine:8528>,
    [
        "QAO",
        "BCB",
        "QAO"
    ],
    {
        "A": <gregtech:meta_item_1:167>,
        "B": <gregtech:meta_item_1:197>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "Q": <ore:cableGtSingleSunnarium>
    });

makeShaped("uxv_cuisine_assembler", <gregtech:machine:8529>,
    [
        "QAO",
        "BCB",
        "QAO"
    ],
    {
        "A": <gregtech:meta_item_1:168>,
        "B": <gregtech:meta_item_1:198>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "Q": <ore:cableGtSingleCrystalMatrix>
    });

makeShaped("opv_cuisine_assembler", <gregtech:machine:8530>,
    [
        "QAO",
        "BCB",
        "QAO"
    ],
    {
        "A": <gregtech:meta_item_1:169>,
        "B": <gregtech:meta_item_1:199>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>
    });

makeShaped("uiv_microwave", <gregtech:machine:8541>,
    [
        "PQO",
        "PCA",
        "PBO"
    ],
    {
        "P": <ore:plateLead>,
        "Q": <ore:cableGtSingleSunnarium>,
        "C": <gregtech:machine:996>,
        "O": <ore:circuitUiv>,
        "A": <gregtech:meta_item_1:227>,
        "B": <gregtech:meta_item_1:137>
    });

makeShaped("uxv_microwave", <gregtech:machine:8542>,
    [
        "PQO",
        "PCA",
        "PBO"
    ],
    {
        "P": <ore:plateLead>,
        "Q": <ore:cableGtSingleCrystalMatrix>,
        "C": <gregtech:machine:997>,
        "O": <ore:circuitUxv>,
        "A": <gregtech:meta_item_1:228>,
        "B": <gregtech:meta_item_1:138>
    });

makeShaped("opv_microwave", <gregtech:machine:8543>,
    [
        "PQO",
        "PCA",
        "PBO"
    ],
    {
        "P": <ore:plateLead>,
        "Q": <ore:cableGtSingleSuperheavyElementMixture>,
        "C": <gregtech:machine:998>,
        "O": <ore:circuitOpv>,
        "A": <gregtech:meta_item_1:229>,
        "B": <gregtech:meta_item_1:139>
    });

recipes.remove(<gregtech:machine:8574>);
makeShaped("uhv_multicooker", <gregtech:machine:8574>,
    [
        "OGO",
        "GCG",
        "QAQ"
    ],
    {
        "Q": <ore:wireGtQuadrupleMercuryCadmiumTelluride>,
        "A": <gregtech:meta_item_1:135>,
        "C": <gregtech:machine:994>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUhv>
    });

makeShaped("uev_multicooker", <gregtech:machine:8575>,
    [
        "OGO",
        "GCG",
        "QAQ"
    ],
    {
        "Q": <ore:wireGtQuadrupleCarbonNanotube>,
        "A": <gregtech:meta_item_1:136>,
        "C": <gregtech:machine:995>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUev>
    });

makeShaped("uiv_multicooker", <gregtech:machine:8576>,
    [
        "OGO",
        "GCG",
        "QAQ"
    ],
    {
        "Q": <ore:wireGtQuadrupleDeepOceanSilver>,
        "A": <gregtech:meta_item_1:137>,
        "C": <gregtech:machine:996>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUiv>
    });

makeShaped("uxv_multicooker", <gregtech:machine:8577>,
    [
        "OGO",
        "GCG",
        "QAQ"
    ],
    {
        "Q": <ore:wireGtQuadrupleHikarium>,
        "A": <gregtech:meta_item_1:138>,
        "C": <gregtech:machine:997>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitUxv>
    });

makeShaped("opv_multicooker", <gregtech:machine:8578>,
    [
        "OGO",
        "GCG",
        "QAQ"
    ],
    {
        "Q": <ore:wireGtQuadrupleHypogen>,
        "A": <gregtech:meta_item_1:139>,
        "C": <gregtech:machine:998>,
        "G": <gcys:transparent_casing>,
        "O": <ore:circuitOpv>
    });
    
chemical_reactor.recipeBuilder()
    .fluidInputs([<liquid:acetic_acid> * 1000])
    .circuit(1)
    .fluidOutputs([<liquid:acetic_anhydride> * 1000,
                   <liquid:water> * 1000])
    .EUt(512)
    .duration(200)
    .buildAndRegister();
	
#  UEV energy hatch
assembly_line.recipeBuilder()
    .inputs([<gregtech:machine:995>,
             <ore:springPedotTma> * 4,
             <gcys:meta_item_1:369> * 2,
             <ore:circuitUev>,
             <gcys:meta_item_1:351> * 2])
    .fluidInputs([<liquid:sodium_potassium> * 24000,
                  <liquid:soldering_alloy> * 5760])
    .outputs([<gregtech:machine:1235>])
    .EUt(2097152)
    .duration(800)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs([<gregtech:machine:995>,
             <ore:wireGtSinglePlutoniumPhosphide> * 4,
             <gcys:meta_item_1:369> * 2,
             <ore:circuitUev>,
             <gcys:meta_item_1:351> * 2])
    .fluidInputs([<liquid:sodium_potassium> * 24000,
                  <liquid:soldering_alloy> * 5760])
    .outputs([<gregtech:machine:1220>])
    .EUt(2097152)
    .duration(800)
    .buildAndRegister();