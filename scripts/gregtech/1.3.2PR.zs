import mods.gregtech.recipe.RecipeMap;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val circuit_assembler = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val cutter = mods.gregtech.recipe.RecipeMap.getByName("cutter");
val forming_press = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val large_chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
val laser_engraver = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
assembly_line.recipeBuilder()
    .inputs(<gtqtcore:quantum_casing:2> * 4,<gregtech:machine:3006> * 16,<gregtech:machine:994> * 8,<gregtech:wire_hex:15078> * 16,<gregtech:meta_item_1:211> * 4,<contenttweaker:a>,<gregtech:meta_item_1:753>,<gregtech:meta_item_1:151>*8,<ore:circuitUiv>*16,<gcys:meta_item_1:368>*64,<gregtech:meta_item_1:104>*64,<gregtech:meta_item_1:104>*64)
    .fluidInputs([<liquid:molten_coalescence_matrix> * 51840,<liquid:ruthenium_trinium_americium_neutronate>*51840,<liquid:superconducting_magnet_mixture>*51840,<liquid:black_hole_matter_polymer_matrix> * 51840])
    .outputs([<gregtech:machine:15007>])
    .EUt(2097152)
    .duration(900)
    .buildAndRegister();
	
assembly_line.recipeBuilder()
    .inputs(<gtqtcore:quantum_casing:2> * 4,<gregtech:machine:2017> * 64,<gregtech:machine:994> * 8,<gregtech:wire_hex:15078> * 16,<gregtech:meta_item_1:211> * 4,<contenttweaker:a>,<gregtech:meta_item_1:753>,<gregtech:meta_item_1:151>*8,<ore:circuitUiv>*16,<gcys:meta_item_1:368>*64,<gregtech:meta_item_1:104>*64,<gregtech:meta_item_1:104>*64)
    .fluidInputs([<liquid:molten_coalescence_matrix> * 51840,<liquid:ruthenium_trinium_americium_neutronate>*51840,<liquid:superconducting_magnet_mixture>*51840,<liquid:black_hole_matter_polymer_matrix> * 51840])
    .outputs([<gregtech:machine:15008>])
    .EUt(2097152)
    .duration(900)
    .buildAndRegister();	

assembly_line.recipeBuilder()
    .inputs([<gregtech:meta_plate:3105>*16,<gregtech:meta_ring:28009>*8,<gregtech:meta_item_1:497>*16,<gregtech:meta_screw:338>*8,<gregtech:meta_item_1:104>*16,<ore:wireGtOctalCrystalMatrix> * 16])
    .fluidInputs([<liquid:molten_coalescence_matrix> * 12960,<liquid:black_hole_matter_polymer_matrix> * 12960,<liquid:peek> * 14400,<liquid:zylon> * 28800])
    .outputs([<gtqtcore:quantum_casing:0>])
    .EUt(33554432)
    .duration(900)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs([<gregtech:meta_plate:3105>*16,<gregtech:meta_item_1:135>*4,<gregtech:meta_item_1:497>*16,<gregtech:meta_screw:338>*8,<gregtech:meta_item_1:180>*16,<ore:wireGtOctalCrystalMatrix> * 16])
    .fluidInputs([<liquid:molten_coalescence_matrix> * 12960,<liquid:black_hole_matter_polymer_matrix> * 12960,<liquid:peek> * 14400,<liquid:zylon> * 28800])
    .outputs([<gtqtcore:quantum_casing:4>])
    .EUt(33554432)
    .duration(900)
    .buildAndRegister();
	
assembly_line.recipeBuilder()
    .inputs([<gregtech:meta_plate:3105>*16,<gregtech:meta_item_1:210>*4,<contenttweaker:a>,<gregtech:meta_item_1:497>*16,<gregtech:meta_screw:338>*8,<gregtech:meta_item_1:227>*16,<ore:wireGtOctalCrystalMatrix> * 16])
    .fluidInputs([<liquid:molten_coalescence_matrix> * 12960,<liquid:black_hole_matter_polymer_matrix> * 12960,<liquid:peek> * 14400,<liquid:zylon> * 28800])
    .outputs([<gtqtcore:quantum_casing:3>])
    .EUt(33554432)
    .duration(900)
    .buildAndRegister();
	
assembly_line.recipeBuilder()
    .inputs([<gregtech:meta_plate:3105>*16,<gregtech:meta_item_1:197>*4,<contenttweaker:a>,<gregtech:meta_item_1:497>*16,<gregtech:meta_screw:338>*8,<gregtech:meta_item_1:753>,<ore:wireGtOctalCrystalMatrix> * 16])
    .fluidInputs([<liquid:molten_coalescence_matrix> * 12960,<liquid:black_hole_matter_polymer_matrix> * 12960,<liquid:peek> * 14400,<liquid:zylon> * 28800])
    .outputs([<gtqtcore:quantum_casing:2>])
    .EUt(33554432)
    .duration(900)
    .buildAndRegister();
#  cosmic cpu unit
assembly_line.recipeBuilder()
    .inputs([<gcys:meta_item_1:402>,<ore:frameGtAurorium> * 4,<gcys:meta_item_1:133> * 2,<ore:wireFineLunarium> * 16])
    .fluidInputs([<liquid:cosmic_computing_mixture> * 28800,<liquid:zylon> * 28800,<liquid:peek> * 14400])
    .outputs([<contenttweaker:cosmic_cpu_unit>])
    .EUt(33554432)
    .duration(600)
    .buildAndRegister();

#  cosmic cpu
assembly_line.recipeBuilder()
    .inputs([<contenttweaker:cosmic_cpu_unit>,<gcys:meta_item_1:224>,<gcys:meta_item_1:206>,<gcys:meta_item_1:181>,<gcys:meta_item_1:223>,<contenttweaker:nuclear_clock>,<ore:foilFullerene> * 16])
    .fluidInputs([<liquid:soldering_alloy> * 57600,<liquid:kevlar> * 28800,<liquid:peek> * 14400])
    .outputs([<contenttweaker:cosmic_cpu>])
    .EUt(33554432)
    .duration(900)
    .buildAndRegister();

#  Cosmic SMD
assembler.recipeBuilder()
    .inputs([<ore:cableGtSingleSunnarium> * 2,<ore:plateFullerene>])
    .fluidInputs([<liquid:zylon> * 36])
    .outputs([<contenttweaker:cosmic_capacitor> * 16])
    .EUt(33554432)
    .duration(160)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:dustAurorium>,<ore:wireFineLunarium> * 4])
    .fluidInputs([<liquid:zylon> * 36])
    .outputs([<contenttweaker:cosmic_diode> * 16])
    .EUt(33554432)
    .duration(160)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireFinePedotTma> * 4,<ore:dustSunnarium>])
    .fluidInputs([<liquid:zylon> * 36])
    .outputs([<contenttweaker:cosmic_resistor> * 16])
    .EUt(33554432)
    .duration(160)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireFineLunarium> * 4,<ore:plateSunnarium>])
    .fluidInputs([<liquid:zylon> * 36])
    .outputs([<contenttweaker:cosmic_transistor> * 16])
    .EUt(33554432)
    .duration(160)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:ringAurorium>,<ore:wireFineMithril> * 4])
    .fluidInputs([<liquid:zylon> * 36])
    .outputs([<contenttweaker:cosmic_inductor> * 16])
    .EUt(33554432)
    .duration(160)
    .buildAndRegister();

#  Supracausal CPU Unit
assembly_line.recipeBuilder()
    .inputs([<contenttweaker:cosmic_cpu_unit>,<ore:frameGtTiberium> * 4,<contenttweaker:microwormhole_generator> * 2,<gcys:meta_item_1:133> * 4,<gregtech:meta_item_1:599> * 4,<ore:wireFineHikarium> * 16])
    .fluidInputs([<liquid:cosmic_computing_mixture> * 288,<liquid:black_hole_matter_polymer_matrix> * 288])
    .outputs([<contenttweaker:supracausal_cpu_unit>])
    .EUt(134217728)
    .duration(600)
    .buildAndRegister();

#  Supracausal CPU
assembly_line.recipeBuilder()
    .inputs([<contenttweaker:supracausal_cpu_unit>,<contenttweaker:cosmic_cpu>,<contenttweaker:relativistic_spinorial_memory_system>,<contenttweaker:graviton_transducer>,<contenttweaker:topological_manipulator_unit>,<ore:foilHikarium> * 32,<ore:wireGtOctalCrystalMatrix> * 16])
    .fluidInputs([<liquid:soldering_alloy> * 1296,<liquid:black_hole_matter_polymer_matrix> * 12960])
    .outputs([<contenttweaker:supracausal_cpu>])
    .EUt(134217728)
    .duration(900)
    .buildAndRegister();

#  Supracausal SMD
assembler.recipeBuilder()
    .inputs([<ore:cableGtSingleCrystalMatrix> * 2,<ore:plateAurorium>])
    .fluidInputs([<liquid:black_hole_matter_polymer_matrix> * 36])
    .outputs([<contenttweaker:supracausal_capacitor> * 16])
    .EUt(134217728)
    .duration(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:dustNeutronium>,<ore:wireFineHikarium> * 4])
    .fluidInputs([<liquid:black_hole_matter_polymer_matrix> * 36])
    .outputs([<contenttweaker:supracausal_diode> * 16])
    .EUt(134217728)
    .duration(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireFineCrystalMatrix> * 4,
             <ore:dustNeutronium>])
    .fluidInputs([<liquid:black_hole_matter_polymer_matrix> * 36])
    .outputs([<contenttweaker:supracausal_resistor> * 16])
    .EUt(134217728)
    .duration(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:wireFineHikarium> * 4,<ore:plateNeutronium>])
    .fluidInputs([<liquid:black_hole_matter_polymer_matrix> * 36])
    .outputs([<contenttweaker:supracausal_transistor> * 16])
    .EUt(134217728)
    .duration(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<ore:ringNeutronium>,<ore:wireFineCrystalMatrix> * 4])
    .fluidInputs([<liquid:black_hole_matter_polymer_matrix> * 36])
    .outputs([<contenttweaker:supracausal_inductor> * 16])
    .EUt(134217728)
    .duration(200)
    .buildAndRegister();
	
#  Cosmic processor
circuit_assembler.recipeBuilder()
    .inputs([<contenttweaker:cosmic_cpu>,<gregtech:meta_item_1:705>,<contenttweaker:cosmic_resistor> * 8,<contenttweaker:cosmic_capacitor> * 8,<contenttweaker:cosmic_transistor> * 8,<ore:wireFineLunarium> * 8])
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs([<gcys:meta_item_1:12> * 2])
    .EUt(33554432)
    .duration(200)
    .buildAndRegister();

circuit_assembler.recipeBuilder()
    .inputs([<contenttweaker:cosmic_cpu>,<gregtech:meta_item_1:705>,<contenttweaker:cosmic_resistor> * 8,<contenttweaker:cosmic_capacitor> * 8,<contenttweaker:cosmic_transistor> * 8,<ore:wireFineLunarium> * 8])
    .fluidInputs([<liquid:tin> * 288])
    .outputs([<gcys:meta_item_1:12> * 2])
    .EUt(33554432)
    .duration(200)
    .buildAndRegister();

#  Cosmic assembly
circuit_assembler.recipeBuilder()
    .inputs([<contenttweaker:cosmic_cpu_unit>,<gcys:meta_item_1:12> * 2,<contenttweaker:cosmic_inductor> * 6,<contenttweaker:cosmic_capacitor> * 6,<contenttweaker:flexible_piezoelectric_cpu_chip> * 24,<ore:wireFineLunarium> * 16])
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs([<gcys:meta_item_1:13> * 1])
    .EUt(33554432)
    .duration(400)
    .buildAndRegister();

circuit_assembler.recipeBuilder()
    .inputs([<contenttweaker:cosmic_cpu_unit>,<gcys:meta_item_1:12> * 2,<contenttweaker:cosmic_inductor> * 6,<contenttweaker:cosmic_capacitor> * 6,<contenttweaker:flexible_piezoelectric_cpu_chip> * 24,<ore:wireFineLunarium> * 16])
    .fluidInputs([<liquid:tin> * 576])
    .outputs([<gcys:meta_item_1:13> * 1])
    .EUt(33554432)
    .duration(400)
    .buildAndRegister();

#  Cosmic supercomputer
assembly_line.recipeBuilder()
    .inputs([<contenttweaker:cosmic_cpu_unit>,<gcys:meta_item_1:13> * 2,<contenttweaker:cosmic_diode> * 16,<contenttweaker:flexible_piezoelectric_cpu_chip> * 64,<ore:wireFineLunarium> * 64,<ore:foilMithril> * 64,<ore:plateAurorium> * 64])
    .fluidInputs([<liquid:soldering_alloy> * 17280,<liquid:zylon> * 9216,<liquid:kevlar> * 4608,<liquid:peek> * 2304])
    .outputs([<gcys:meta_item_1:14>])
    .EUt(33554432)
    .duration(4000)
    .buildAndRegister();

#  Cosmic mainframe
assembly_line.recipeBuilder()
    .inputs([<ore:frameGtAurorium> * 2,<gcys:meta_item_1:14> * 2,<contenttweaker:cosmic_diode> * 64,<contenttweaker:cosmic_capacitor> * 64,<contenttweaker:cosmic_transistor> * 64,<contenttweaker:cosmic_resistor> * 64,<contenttweaker:cosmic_inductor> * 64,<ore:foilMithril> * 64,<contenttweaker:flexible_piezoelectric_cpu_chip> * 64,<ore:wireGtDoubleAurorium> * 64,<ore:plateAurorium> * 64])
    .fluidInputs([<liquid:soldering_alloy> * 21888,<liquid:zylon> * 17280,<liquid:kevlar> * 86400,<liquid:peek> * 46080])
    .outputs([<gcys:meta_item_1:15>])
    .EUt(134217728)
    .duration(24000)
    .buildAndRegister();
	
	

#  Supracausal processor
circuit_assembler.recipeBuilder()
    .inputs([<contenttweaker:supracausal_cpu>,<gregtech:meta_item_1:705>,<contenttweaker:supracausal_resistor> * 8,<contenttweaker:supracausal_capacitor> * 8,<contenttweaker:supracausal_transistor> * 8,<ore:wireFineHikarium> * 8])
    .fluidInputs([<liquid:tin> * 28800])
    .outputs([<gcys:meta_item_1:16> * 2])
    .EUt(134217728)
    .duration(200)
    .buildAndRegister();

circuit_assembler.recipeBuilder()
    .inputs([<contenttweaker:supracausal_cpu>,<gregtech:meta_item_1:705>,<contenttweaker:supracausal_resistor> * 8,<contenttweaker:supracausal_capacitor> * 8,<contenttweaker:supracausal_transistor> * 8,<ore:wireFineHikarium> * 8])
    .fluidInputs([<liquid:soldering_alloy> * 14400])
    .outputs([<gcys:meta_item_1:16> * 2])
    .EUt(134217728)
    .duration(200)
    .buildAndRegister();

#  Supracausal Assembly
circuit_assembler.recipeBuilder()
    .inputs([<contenttweaker:supracausal_cpu_unit>,<gcys:meta_item_1:16> * 2,<contenttweaker:supracausal_inductor> * 8,<contenttweaker:supracausal_capacitor> * 8,<contenttweaker:recursively_folded_negative_space> * 24,<ore:wireFineHikarium> * 16])
    .fluidInputs([<liquid:tin> * 576])
    .outputs([<gcys:meta_item_1:17> * 1])
    .EUt(134217728)
    .duration(400)
    .buildAndRegister();

circuit_assembler.recipeBuilder()
    .inputs([<contenttweaker:supracausal_cpu_unit>,<gcys:meta_item_1:16> * 2,<contenttweaker:supracausal_inductor> * 8,<contenttweaker:supracausal_capacitor> * 8,<contenttweaker:recursively_folded_negative_space> * 24,<ore:wireFineHikarium> * 16])
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs([<gcys:meta_item_1:17> * 1])
    .EUt(134217728)
    .duration(400)
    .buildAndRegister();

#  Supracausal Supercomputer
assembly_line.recipeBuilder()
    .inputs([<contenttweaker:supracausal_cpu_unit>,<gcys:meta_item_1:17> * 2,<contenttweaker:supracausal_diode> * 16,<contenttweaker:recursively_folded_negative_space> * 64,<ore:wireFineHikarium> * 64,<ore:foilCrystalMatrix> * 64,<ore:plateNeutronium> * 64])
    .fluidInputs([<liquid:soldering_alloy> * 34560,<liquid:black_hole_matter_polymer_matrix> * 18432,<liquid:zylon> * 9216,<liquid:kevlar> * 4608])
    .outputs([<gcys:meta_item_1:18>])
    .EUt(134217728)
    .duration(4000)
    .buildAndRegister();

#  Supracausal Mainframe
assembly_line.recipeBuilder()
    .inputs([<ore:frameGtTiberium> * 2,<gcys:meta_item_1:18> * 2,<contenttweaker:supracausal_diode> * 64,<contenttweaker:supracausal_capacitor> * 64,<contenttweaker:supracausal_transistor> * 64,<contenttweaker:supracausal_resistor> * 64,<contenttweaker:supracausal_inductor> * 64,<ore:foilCrystalMatrix> * 64,<contenttweaker:recursively_folded_negative_space> * 64,<ore:boltInfinity> * 64,<ore:plateNeutronium> * 64])
    .fluidInputs([<liquid:soldering_alloy> * 43776,<liquid:black_hole_matter_polymer_matrix> * 34560,<liquid:zylon> * 17280,<liquid:kevlar> * 8640])
    .outputs([<gcys:meta_item_1:19>])
    .EUt(536870912)
    .duration(24000)
    .buildAndRegister();
	
#  Nuclear clock
assembly_line.recipeBuilder()
    .inputs([<gregtech:meta_item_1:242> * 2,<contenttweaker:ultrashort_pulse_laser> * 2,<gcys:meta_item_1:223>,<contenttweaker:scintillator>])
    .fluidInputs([<liquid:soldering_alloy> * 288,<liquid:thorium> * 144])
    .outputs([<contenttweaker:nuclear_clock>])
    .EUt(33550000)
    .duration(1600)
    .buildAndRegister();
	
#  Relativistic Spinorial Memory System
assembly_line.recipeBuilder()
    .inputs([<gregtech:meta_item_1:497> * 4,<contenttweaker:stabilized_wormhole_generator>,<gregtech:meta_item_1:753>,<contenttweaker:ultimate_fusion_binding_unit> * 2,<gregtech:meta_item_1:212>,<ore:wireGtQuadrupleCrystalMatrix> * 4])
    .fluidInputs([<liquid:soldering_alloy> * 3000,<liquid:black_hole_matter_polymer_matrix> * 576,<liquid:zylon> * 576,<liquid:cosmic_computing_mixture> * 288])
    .outputs([<contenttweaker:relativistic_spinorial_memory_system>])
    .EUt(33550000)
    .duration(800)
    .buildAndRegister();
	
#  Graviton Transducer
assembly_line.recipeBuilder()
    .inputs([<ore:plateNeutronium> * 4,<contenttweaker:macrowormhole_generator>,<gregtech:meta_item_1:227> * 2,<gregtech:meta_item_1:242> * 2,<ore:wireFineMithril> * 4])
    .fluidInputs([<liquid:soldering_alloy> * 4000,<liquid:black_hole_matter_polymer_matrix> * 288,<liquid:zylon> * 288,<liquid:peek> * 288])
    .outputs([<contenttweaker:graviton_transducer>])
    .EUt(33550000)
    .duration(400)
    .buildAndRegister();
	
#  Topological Manipulator Unit
assembly_line.recipeBuilder()
    .inputs([<ore:plateNeutronium> * 2,<contenttweaker:macrowormhole_generator>,<contenttweaker:contained_kerr_newmann_singularity>,<gregtech:meta_item_1:211>])
    .fluidInputs([<liquid:soldering_alloy> * 5000,<liquid:black_hole_matter_polymer_matrix> * 576])
    .outputs([<contenttweaker:topological_manipulator_unit>])
    .EUt(33550000)
    .duration(600)
    .buildAndRegister();

#  FPCPU
chemical_bath.recipeBuilder()
    .inputs([<contenttweaker:diffractor_grating_mirror>])
    .fluidInputs([<liquid:dragon_blood> * 16000])
    .outputs([<contenttweaker:untreated_flexible_pezoelectric_cpu>])
    .EUt(33554432)
    .duration(600)
    .buildAndRegister();

chemical_reactor.recipeBuilder()
    .inputs([<contenttweaker:untreated_flexible_pezoelectric_cpu>])
    .fluidInputs([<liquid:muonium> * 1000,<liquid:zylon> * 576])
    .outputs([<contenttweaker:flexible_piezoelectric_cpu>])
    .EUt(33554432)
    .duration(600)
    .buildAndRegister();

cutter.recipeBuilder()
    .inputs([<contenttweaker:flexible_piezoelectric_cpu>])
    .outputs([<contenttweaker:flexible_piezoelectric_cpu_chip>])
    .EUt(524288)
    .duration(3600)
    .buildAndRegister();
	
#  Stabilized Wormhole Generator
assembly_line.recipeBuilder()
    .inputs([<contenttweaker:macrowormhole_generator>,<contenttweaker:contained_kerr_singularity>,<gregtech:meta_item_1:747> * 4,<gregtech:meta_item_1:225> * 2,<gregtech:meta_item_1:240> * 2,<gregtech:meta_item_1:210> * 2,<ore:wireGtDoubleEuropium> * 16])
    .fluidInputs([<liquid:soldering_alloy> * 9000,<liquid:vibranium> * 576,<liquid:zylon> * 288,<liquid:peek> * 288])
    .outputs([<contenttweaker:stabilized_wormhole_generator>])
    .EUt(33550000)
    .duration(800)
    .buildAndRegister();
	
#  Scintillator Crystal
forming_press.recipeBuilder()
    .inputs([<ore:plateKevlar>,<ore:dustThalliumCopperChlorideNdyagMixture> * 4,<ore:dustBismuthFerrite> * 3,<ore:dustCadmiumBromide> * 2])
    .outputs([<contenttweaker:scintillator_crystal>])
    .EUt(8388608)
    .duration(280)
    .buildAndRegister();

#  Scintillator
large_chemical_reactor.recipeBuilder()
    .inputs([<contenttweaker:separation_electromagnet>,<contenttweaker:scintillator_crystal>,<gcys:meta_item_1:130>])
    .fluidInputs([<liquid:zylon> * 288])
    .outputs([<contenttweaker:scintillator>])
    .EUt(8388608)
    .duration(3600)
    .buildAndRegister();
	

#  Photocoated Wafer
chemical_reactor.recipeBuilder()
    .inputs([<gcys:meta_item_1:132>,<gcys:meta_item_1:201> * 4])
    .fluidInputs([<liquid:zylon> * 1024])
    .outputs([<contenttweaker:photocoated_wafer>])
    .EUt(491520)
    .duration(8192)
    .buildAndRegister();

#  Diffractor Grating Mirror
laser_engraver.recipeBuilder()
    .inputs([<contenttweaker:photocoated_wafer>])
    .notConsumable(<gregtech:meta_plate:32230> * 1)
    .outputs([<contenttweaker:diffractor_grating_mirror>])
    .EUt(512)
    .duration(300)
    .buildAndRegister();

#  Ultrashort pulse laser
assembler.recipeBuilder()
    .inputs([<contenttweaker:diffractor_grating_mirror>,<contenttweaker:high_frequency_laser>,<gcys:meta_item_1:204>,<gcys:meta_item_1:205>,<gcys:meta_item_1:201> * 4])
    .fluidInputs([<liquid:soldering_alloy> * 1152])
    .outputs([<contenttweaker:ultrashort_pulse_laser>])
    .EUt(4500000)
    .duration(270)
    .buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:104>,<ore:circuitUhv>*8,<gcys:meta_item_1:204>,<gcys:meta_item_1:205>,<gcys:meta_item_1:201> * 4])
    .fluidInputs([<liquid:soldering_alloy> * 1152])
    .outputs([<contenttweaker:separation_electromagnet>])
    .EUt(491520)
    .duration(270)
    .buildAndRegister();
	
assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:104>,<ore:circuitUhv>*8,<gcys:meta_item_1:203>,<gcys:meta_item_1:221>,<gregtech:meta_item_1:225>*16])
    .fluidInputs([<liquid:positronium>*1000])
    .outputs([<contenttweaker:high_frequency_laser>])
    .EUt(491520)
    .duration(270)
    .buildAndRegister();