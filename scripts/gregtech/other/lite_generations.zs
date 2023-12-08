import mods.gregtech.machine.MachineBuilder;
import mods.gregtech.recipe.RecipeMapBuilder;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.machine.Renderer;
//32100-
MachineBuilder.create(32094, "combustion_generator")
    .setRecipeMap(RecipeMap.getByName("combustion_generator"))
	.setRenderer("generators/combustion")
	.addTier(4,5)
	.setGenerator()
	.buildAndRegister();
//32102
MachineBuilder.create(32096, "steam_turbine")
    .setRecipeMap(RecipeMap.getByName("steam_turbine"))
	.setRenderer("generators/steam_turbine")
	.addTier(4,5)
	.setGenerator()
	.buildAndRegister();
//32104
MachineBuilder.create(32098, "gas_turbine")
    .setRecipeMap(RecipeMap.getByName("gas_turbine"))
	.setRenderer("generators/gas_turbine")
	.addTier(4,5)
	.setGenerator()
	.buildAndRegister();
	