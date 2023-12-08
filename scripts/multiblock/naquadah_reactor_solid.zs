import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.machine.MachineBuilder;
import mods.gregtech.recipe.RecipeMapBuilder;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.machine.Renderer;
import mods.gregtech.IMetaTileEntity;
val naquadah_reactor = mods.gregtech.recipe.RecipeMap.getByName("naquadah_reactor");
//32109-31110-32111
MachineBuilder.create(32102, "naquadah_reactor_solid")
    .setRecipeMap(naquadah_reactor)
	.setRenderer("machines/fermenter")
	.addTier(5,6,7)
	.setGenerator()
	.buildAndRegister();
	
naquadah_reactor.recipeBuilder()
    .duration(3600)
    .EUt(-8192)
    .inputs(<contenttweaker:naquadah_rod>)
    .outputs(<contenttweaker:poor_naquadah_rod>)
	.fluidInputs(<liquid:hydrogen> * 576)
    .buildAndRegister();
	
naquadah_reactor.recipeBuilder()
    .duration(7200)
    .EUt(-8192)
    .inputs(<contenttweaker:naquadah_rod_dual>)
    .outputs(<contenttweaker:poor_naquadah_rod_dual>)
	.fluidInputs(<liquid:hydrogen> * 1440)
    .buildAndRegister();
	
naquadah_reactor.recipeBuilder()
    .duration(14400)
    .EUt(-8192)
    .inputs(<contenttweaker:naquadah_rod_quad>)
    .outputs(<contenttweaker:poor_naquadah_rod_quad>)
	.fluidInputs(<liquid:hydrogen> * 2880)
    .buildAndRegister();