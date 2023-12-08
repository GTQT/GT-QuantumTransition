import mods.gregtech.machine.MachineBuilder;
import mods.gregtech.recipe.RecipeMapBuilder;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.machine.Renderer;
val plasma_forge = mods.gregtech.recipe.RecipeMap.getByName("plasma_forge");
plasma_forge.recipeBuilder()
    .inputs(<contenttweaker:nanites>)
    .fluidInputs(<liquid:stellar_material_residue_a>*1000,<liquid:infinity>*576)
    .fluidOutputs(<liquid:hikarium>*576)
    .duration(10000).EUt(49152*64).buildAndRegister();
	

plasma_forge.recipeBuilder()
    .inputs(<contenttweaker:nanites>)
    .fluidInputs(<liquid:stellar_material_residue_a>*1000,<liquid:black_hole_matter_polymer_matrix>*576,<liquid:aurorium>*576)
    .fluidOutputs(<liquid:dense_magnetically_constrained_stellar_plasma_fluid>*576)
    .duration(10000).EUt(49152*64).buildAndRegister();

plasma_forge.recipeBuilder()
    .inputs(<contenttweaker:nanites>)
    .fluidInputs(<liquid:plasma.stellar_material>*576,<liquid:uevchaodao>*576,<liquid:glueballs>*576)
    .fluidOutputs(<liquid:uivchaodao>*576)
    .duration(10000).EUt(49152*64).buildAndRegister();
	
plasma_forge.recipeBuilder()
    .inputs(<contenttweaker:nanites>)
    .fluidInputs(<liquid:stellar_material_residue_a>*10000,<liquid:infinity_catalyst>*36864)
	.chancedOutput(<avaritia:resource:5>, 1000, 500)
	.chancedOutput(<avaritia:resource:5>, 1000, 500)
	.chancedOutput(<avaritia:resource:5>, 1000, 500)
	.chancedOutput(<avaritia:resource:5>, 1000, 500)
	.chancedOutput(<avaritia:resource:5>, 1000, 500)
	.chancedOutput(<avaritia:resource:5>, 1000, 500)
    .duration(10000).EUt(49152*64).buildAndRegister();
	
plasma_forge.recipeBuilder()
    .inputs(<contenttweaker:nanites>)
    .fluidInputs(<liquid:stellar_material_residue_b>*10000,<liquid:infinity_catalyst>*36864)
	.chancedOutput(<avaritia:resource:5>, 2000, 500)
	.chancedOutput(<avaritia:resource:5>, 2000, 500)
	.chancedOutput(<avaritia:resource:5>, 2000, 500)
	.chancedOutput(<avaritia:resource:5>, 2000, 500)
	.chancedOutput(<avaritia:resource:5>, 2000, 500)
	.chancedOutput(<avaritia:resource:5>, 2000, 500)
    .duration(10000).EUt(49152*64).buildAndRegister();
	
plasma_forge.recipeBuilder()
    .inputs(<contenttweaker:nanites>)
    .fluidInputs(<liquid:stellar_material_residue_c>*10000,<liquid:infinity_catalyst>*36864)
	.chancedOutput(<avaritia:resource:5>, 4000, 500)
	.chancedOutput(<avaritia:resource:5>, 4000, 500)
	.chancedOutput(<avaritia:resource:5>, 4000, 500)
	.chancedOutput(<avaritia:resource:5>, 4000, 500)
	.chancedOutput(<avaritia:resource:5>, 4000, 500)
	.chancedOutput(<avaritia:resource:5>, 4000, 500)
    .duration(10000).EUt(49152*64).buildAndRegister();
	
val star_mixer = mods.gregtech.recipe.RecipeMap.getByName("star_mixer");
star_mixer.recipeBuilder()
    .inputs(<contenttweaker:nanites>)
    .fluidInputs(<liquid:muonium>*500,<liquid:tauonium>*500,<liquid:glueballs>*500)
    .fluidOutputs(<liquid:plasma.stellar_material>*36)
    .duration(10000).EUt(49152*64).buildAndRegister();
	
