import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.material.Material;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.recipe.Utils;

val meta_ingot = <gregtech:meta_ingot>.definition; 
val meta_foil = <gregtech:meta_foil>.definition; 
val meta_dust = <gregtech:meta_dust>.definition; 
val meta = [1000,1004,1007,126,128,129,130,252,260,274,277,295,2,3,23,25,33,39,40,41,50,55,6164,69,75,77,80,90,93,99,100,104,112,113,115,122,124,125,15078,15077,15040,15036,3621,3605,3604,3600,3599,342,338,335,334,324,323,310,301,296,2013,2011,1010,432,431,430,429,396,344,3592,3570,3104,3100,2520,2517,2516,2042,2036,32028,32027,32021,32020,32015] as int[];
for i in meta{
	<recipemap:bender>.recipeBuilder()
    	.inputs(meta_ingot.makeStack(i))
    	.outputs(meta_foil.makeStack(i)*4)
    	.duration(40)
    	.EUt(60)
		.circuit(3)
    	.buildAndRegister();
		
}

	<recipemap:bender>.recipeBuilder()
    	.inputs(<minecraft:gold_ingot>)
    	.outputs(<gregtech:meta_foil:41>*4)
    	.duration(40)
    	.EUt(60)
		.circuit(3)
    	.buildAndRegister();