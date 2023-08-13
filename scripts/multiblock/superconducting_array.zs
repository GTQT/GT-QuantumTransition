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
 
global superconducting_array as RecipeMap = FactoryRecipeMap.start("superconducting_array_controller")
    .maxInputs(2)
	.maxFluidInputs(1)
	.maxFluidOutputs(1)
    .build();
 
Builder.start("superconducting_array", 32024)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("NNNNNNNNNNNNN")
            .aisle("N#####N#####N")
            .aisle("N#####N#####N")
            .aisle("N#####N#####N")
            .aisle("N#####N#####N")
            .aisle("N#####N#####N")
			.aisle("NNNNNNNNNNNNN")
            .aisle("N#####N#####N")
            .aisle("N#####N#####N")
            .aisle("N#####N#####N")
            .aisle("N#####N#####N")
            .aisle("N#####N#####N")
			.aisle("NNCNNNNNNNNNN")

            .where("C", controller.self())
			.where("A", <metastate:gregtech:wire_coil:2>)
            .where("N", CTPredicate.states(<metastate:gregtech:metal_casing:5>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(16).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(16).setPreviewCount(1)
            )
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(superconducting_array)
    .withBaseTexture(<metastate:gregtech:metal_casing:5>)
    .buildAndRegister();
superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:98>*16)
    .notConsumable(<gregtech:wire_quadruple:425>*64)
	.fluidInputs(<liquid:ic2coolant>*2)
	.fluidOutputs(<liquid:ic2hot_coolant>*2)
	.EUt(256)
	.EUt(-128)
    .duration(1) 
    .buildAndRegister(); 

superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:99>*16)
    .notConsumable(<gregtech:wire_quadruple:426>*64)
	.fluidInputs(<liquid:ic2coolant>*4)
	.fluidOutputs(<liquid:ic2hot_coolant>*4)
	.EUt(1024)
	.EUt(-512)
    .duration(1) 
    .buildAndRegister(); 
	
superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:100>*16)
    .notConsumable(<gregtech:wire_quadruple:427>*64)
	.fluidInputs(<liquid:ic2coolant>*8)
	.fluidOutputs(<liquid:ic2hot_coolant>*8)
	.EUt(4096)
	.EUt(-2048)
    .duration(1) 
    .buildAndRegister(); 
	
superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:101>*32)
    .notConsumable(<gregtech:wire_quadruple:428>*64)
	.fluidInputs(<liquid:ic2coolant>*16)
	.fluidOutputs(<liquid:ic2hot_coolant>*16)
	.EUt(16384)
	.EUt(-8192)
    .duration(1) 
    .buildAndRegister(); 

superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:102>*32)
    .notConsumable(<gregtech:wire_quadruple:429>*64)
	.fluidInputs(<liquid:ic2coolant>*32)
	.fluidOutputs(<liquid:ic2hot_coolant>*32)
	.EUt(65536)
	.EUt(-32768)
    .duration(1) 
    .buildAndRegister(); 

superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:103>*32)
    .notConsumable(<gregtech:wire_quadruple:430>*64)
	.fluidInputs(<liquid:ic2coolant>*64)
	.fluidOutputs(<liquid:ic2hot_coolant>*64)
	.EUt(262144)
	.EUt(-131072)
    .duration(1) 
    .buildAndRegister(); 
	
superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:98>*16)
    .notConsumable(<gregtech:wire_quadruple:425>*64)
	.fluidInputs(<liquid:liquidnitrogen>*2)
	.fluidOutputs(<liquid:nitrogen>*2)
	.EUt(256)
	.EUt(-128)
    .duration(1) 
    .buildAndRegister(); 

superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:99>*16)
    .notConsumable(<gregtech:wire_quadruple:426>*64)
	.fluidInputs(<liquid:liquidnitrogen>*1)
	.fluidOutputs(<liquid:nitrogen>*1)
	.EUt(1024)
	.EUt(-512)
    .duration(1) 
    .buildAndRegister(); 
	
superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:100>*16)
    .notConsumable(<gregtech:wire_quadruple:427>*64)
	.fluidInputs(<liquid:liquidnitrogen>*2)
	.fluidOutputs(<liquid:nitrogen>*2)
	.EUt(4096)
	.EUt(-2048)
    .duration(1) 
    .buildAndRegister(); 
	
superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:101>*32)
    .notConsumable(<gregtech:wire_quadruple:428>*64)
	.fluidInputs(<liquid:liquidnitrogen>*4)
	.fluidOutputs(<liquid:nitrogen>*4)
	.EUt(16384)
	.EUt(-8192)
    .duration(1) 
    .buildAndRegister(); 

superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:102>*32)
    .notConsumable(<gregtech:wire_quadruple:429>*64)
	.fluidInputs(<liquid:liquidnitrogen>*8)
	.fluidOutputs(<liquid:nitrogen>*8)
	.EUt(65536)
	.EUt(-32768)
    .duration(1) 
    .buildAndRegister(); 

superconducting_array.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:103>*32)
    .notConsumable(<gregtech:wire_quadruple:430>*64)
	.fluidInputs(<liquid:liquidnitrogen>*16)
	.fluidOutputs(<liquid:nitrogen>*16)
	.EUt(262144)
	.EUt(-131072)
    .duration(1) 
    .buildAndRegister(); 