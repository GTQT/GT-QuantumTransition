import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.world.IFacing;
 
global electrolytic_cell as RecipeMap = FactoryRecipeMap.start("electrolytic_cell_controller")
    .maxInputs(6)
    .maxOutputs(6)
	.maxFluidInputs(4)
	.maxFluidOutputs(4)
    .build();
 
Builder.start("electrolytic_cell", 32028)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("NNNNN","NNNNN","NNNNN","#NNN#")
			.aisle("NNNNN","N###N","N#N#N","#NMN#")
			.aisle("NNNNN","N#N#N","N#N#N","#NMN#")
			.aisle("NNNNN","N#N#N","N#N#N","#NMN#")
			.aisle("NNNNN","N###N","N#N#N","#NMN#")
			.aisle("NNNNN","N#N#N","N#N#N","#NMN#")
			.aisle("NNNNN","N###N","N#N#N","#NMN#")
			.aisle("NNNNN","N#N#N","N#N#N","#NMN#")
			.aisle("NNNNN","N#N#N","N#N#N","#NMN#")
			.aisle("NNNNN","N###N","N#N#N","#NMN#")
			.aisle("NNNNN","NNCNN","NNNNN","#NNN#")
            .where("C", controller.self())
            .where('M', <metastate:gcym:unique_casing:2>)
            .where("N", CTPredicate.states(<metastate:gregtech:metal_casing:4>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(electrolytic_cell)
    .withBaseTexture(<metastate:gregtech:metal_casing:4>)
    .buildAndRegister();
electrolytic_cell.recipeBuilder() 
    .notConsumable(<gregtech:meta_stick_long:80>*16)
	.fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:oxygen>*1000,<liquid:hydrogen>*2000)
	.circuit(1)
	.EUt(1024)
    .duration(40) 
    .buildAndRegister(); 
	
electrolytic_cell.recipeBuilder() 
    .notConsumable(<gregtech:meta_stick_long:80>*16)
	.fluidInputs(<liquid:salt_water>*1000)
    .fluidOutputs(<liquid:chlorine>*1000,<liquid:hydrogen>*1000)
	.outputs(<gregtech:meta_dust:377>*3)
	.circuit(1)
	.EUt(1024)
    .duration(40) 
    .buildAndRegister(); 

electrolytic_cell.recipeBuilder() 
    .notConsumable(<gregtech:meta_stick_long:80>*16)
	.fluidInputs(<liquid:salt_fluid>*1000)
    .fluidOutputs(<liquid:chlorine>*1000,<liquid:hydrogen>*1000)
	.outputs(<gregtech:meta_dust:377>*3)
	.circuit(1)
	.EUt(512)
    .duration(40) 
    .buildAndRegister(); 

electrolytic_cell.recipeBuilder() 
    .notConsumable(<gregtech:meta_stick_long:80>*16)
	.fluidInputs(<liquid:sulfuric_copper_solution>*1000)
    .fluidOutputs(<liquid:oxygen>*1000,<liquid:sulfuric_acid>*1000)
	.outputs(<gregtech:meta_dust:25>)
	.chancedOutput(<gregtech:meta_dust:18017>, 2000, 500)
	.chancedOutput(<gregtech:meta_dust:18017>, 4000, 500)
	.chancedOutput(<gregtech:meta_dust:18017>, 6000, 500)
	.circuit(1)
	.EUt(1024)
    .duration(40) 
    .buildAndRegister(); 
	
electrolytic_cell.recipeBuilder() 
    .notConsumable(<gregtech:meta_stick_long:80>*16)
	.fluidInputs(<liquid:ammonia>*1000,<liquid:nitration_mixture>*1000)
    .fluidOutputs(<liquid:hydrogen_peroxide>*1000,<liquid:sulfuric_acid>*500)
	.chancedOutput(<gregtech:meta_dust:6015>, 2000, 500)
	.chancedOutput(<gregtech:meta_dust:6015>, 3000, 500)
	.chancedOutput(<gregtech:meta_dust:6015>, 5000, 500)
	.EUt(4096)
    .duration(600) 
    .buildAndRegister(); 
	
// 粗铂粉 * 3
<recipemap:electrolyzer>.findRecipe(480, [<metaitem:dustCooperite> * 6], [<liquid:hydrochloric_acid> * 6000]).remove();
electrolytic_cell.recipeBuilder() 
    .notConsumable(<gregtech:meta_stick_long:80>*16)
	.inputs(<metaitem:dustCooperite> * 12)
	.fluidInputs(<liquid:hydrochloric_acid>*12000)
    .fluidOutputs(<liquid:hydrogen>*12000)
	.chancedOutput(<gregtech:meta_dust:364>*4, 6000, 500)
	.chancedOutput(<gregtech:meta_dust:364>*4, 6000, 500)
	.chancedOutput(<gregtech:meta_dust:364>*4, 6000, 500)
	.chancedOutput(<gregtech:meta_dust:2057>*2, 6000, 500)
	.chancedOutput(<gregtech:meta_dust:103>*2, 6000, 500)
	.chancedOutput(<gregtech:meta_dust:69>*2, 6000, 500)
	.circuit(1)
	.EUt(2048)
    .duration(1200) 
    .buildAndRegister(); 