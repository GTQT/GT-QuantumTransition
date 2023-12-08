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
 
global nanoswarm_hives as RecipeMap = FactoryRecipeMap.start("nanoswarm_hives")
    .maxInputs(9)
    .maxFluidInputs(3)
	.maxFluidOutputs(6)
	.maxOutputs(3)
    .build();
 
Builder.start("nanoswarm_hives", 32046)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle(
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "   A   ",
        "   B   ",
        "   B   ",
        "   B   ",
        "   B   ",
        "   B   ",
        "   B   ",
        "   A   ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       "
      )
      .aisle(
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       "
      )
      .aisle(
        "       ",
        "       ",
        "       ",
        "       ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        " CABAC ",
        " CABAC ",
        " CABAC ",
        " CABAC ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " CABAC ",
        " CABAC ",
        " CABAC ",
        " CABAC ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "       ",
        "       ",
        "       ",
        "       "
      )
      .aisle(
        "       ",
        "   B   ",
        "   B   ",
        "   B   ",
        "  BBB  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        " BB BB ",
        " BB BB ",
        " B   B ",
        " B   B ",
        " B   B ",
        "BB   BB",
        "BB   BB",
        " B   B ",
        " B   B ",
        " B   B ",
        " BB BB ",
        " BB BB ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  BBB  ",
        "   B   ",
        "   B   ",
        "   B   ",
        "       "
      )
      .aisle(
        "   X   ",
        "   B   ",
        "   B   ",
        "  BBB  ",
        "  BBB  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        " BB BB ",
        " B   B ",
        " B   B ",
        " B   B ",
        " B   B ",
        "BB   BB",
        "BB   BB",
        " B   B ",
        " B   B ",
        " B   B ",
        " B   B ",
        " BB BB ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  BBB  ",
        "  BBB  ",
        "   B   ",
        "   B   ",
        "   B   "
      )
      .aisle(
        "   B   ",
        "   B   ",
        "   B   ",
        "  BBB  ",
        "  BBB  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        " BB BB ",
        " B   B ",
        " B   B ",
        " B   B ",
        " B   B ",
        "BB   BB",
        "BB   BB",
        " B   B ",
        " B   B ",
        " B   B ",
        " B   B ",
        " BB BB ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  BBB  ",
        "  BBB  ",
        "   B   ",
        "   B   ",
        "   B   "
      )
      .aisle(
        "       ",
        "   B   ",
        "   B   ",
        "   B   ",
        "  BBB  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        " BB BB ",
        " BB BB ",
        " B   B ",
        " B   B ",
        " B   B ",
        "BB   BB",
        "BB   BB",
        " B   B ",
        " B   B ",
        " B   B ",
        " BB BB ",
        " BB BB ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  B B  ",
        "  BBB  ",
        "   B   ",
        "   B   ",
        "   B   ",
        "       "
      )
      .aisle(
        "       ",
        "       ",
        "       ",
        "       ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        " CABAC ",
        " CABAC ",
        " CABAC ",
        " CABAC ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " BB BB ",
        " CABAC ",
        " CABAC ",
        " CABAC ",
        " CABAC ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "       ",
        "       ",
        "       ",
        "       "
      )
      .aisle(
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "  CBC  ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       "
      )
      .aisle(
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "   A   ",
        "   B   ",
        "   B   ",
        "   B   ",
        "   B   ",
        "   B   ",
        "   B   ",
        "   A   ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       ",
        "       "
      )
            .where("X", controller.self())
			.where("C", <metastate:gregtech:meta_block_frame_7:15>)
			.where("A", <metastate:gregtech:black_lamp:0>)
            .where("B", CTPredicate.states(<metastate:contenttweaker:naq_housing:0>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(nanoswarm_hives)
    .withBaseTexture(<metastate:contenttweaker:naq_housing:0>)
    .buildAndRegister();
nanoswarm_hives.recipeBuilder()
    .duration(1000)  
    .EUt(10000000)  
    .inputs(<ore:blockCoal>*64,<gregtech:meta_item_1:599>*64) 
	.notConsumable(<ore:craftingLensBlack>)
	.fluidInputs(<liquid:uu_matter>*40000)
	.outputs(<contenttweaker:nanites>*64)
    .buildAndRegister(); 
	
nanoswarm_hives.recipeBuilder()
    .duration(1000)  
    .EUt(100000)  
    .inputs(<minecraft:redstone_block>*64,
	<minecraft:coal_block>*64,
	<minecraft:emerald_block>*64,
	<minecraft:diamond_block>*64,
	<minecraft:iron_block>*64,
	<minecraft:gold_block>*64,
	<minecraft:lapis_block>*64) 
	.notConsumable(<contenttweaker:nanites>*64)
	.fluidInputs(<liquid:uu_matter>*100)
	.outputs(<avaritia:singularity:0>)
	.circuit(10)
    .buildAndRegister(); 
	
nanoswarm_hives.recipeBuilder()
    .duration(1000)  
    .EUt(100000)  
    .inputs(<gregtech:meta_block_compressed_157:8>*64
,<gregtech:meta_block_compressed_157:4>*64
,<gregtech:meta_block_compressed_125:13>*64
,<gregtech:meta_block_compressed_7:1>*64
,<gregtech:meta_block_compressed_20:3>*64
,<gregtech:meta_block_compressed_20:4>*64
,<gregtech:meta_block_compressed_0:2>*64) 
	.notConsumable(<contenttweaker:nanites>*64)
	.fluidInputs(<liquid:uu_matter>*100)
	.outputs(<avaritia:singularity:1>)
	.circuit(10)
    .buildAndRegister(); 
	
nanoswarm_hives.recipeBuilder()
    .duration(1000)  
    .EUt(100000)  
    .inputs(<gregtech:meta_block_compressed_5>*64
,<gregtech:meta_block_compressed_3:2>*64
,<gregtech:meta_block_compressed_4:13>*64
,<gregtech:meta_block_compressed_5:10>*64
,<gregtech:meta_block_compressed_4:11>*64
,<gregtech:meta_block_compressed_5:13>*64
,<gregtech:meta_block_compressed_22:2>*64) 
	.notConsumable(<contenttweaker:nanites>*64)
	.fluidInputs(<liquid:uu_matter>*100)
	.outputs(<avaritia:singularity:2>)
	.circuit(10)
    .buildAndRegister(); 
	
nanoswarm_hives.recipeBuilder()
    .duration(1000)  
    .EUt(100000)  
    .inputs(<gregtech:meta_block_compressed_26:14>*64
,<gregtech:meta_block_compressed_26:13>*64
,<gregtech:meta_block_compressed_26:12>*64
,<gregtech:meta_block_compressed_26:11>*64
,<gregtech:meta_block_compressed_26:10>*64
,<gregtech:meta_block_compressed_26:9>*64
,<gregtech:meta_block_compressed_26:8>*64) 
	.notConsumable(<contenttweaker:nanites>*64)
	.fluidInputs(<liquid:uu_matter>*100)
	.outputs(<avaritia:singularity:3>)
	.circuit(10)
    .buildAndRegister(); 
	
nanoswarm_hives.recipeBuilder()
    .duration(1000)  
    .EUt(100000)  
    .inputs(<gregtech:meta_block_compressed_26:15>*64
,<gregtech:meta_block_compressed_5:10>*64
,<gregtech:meta_block_compressed_4:13>*64
,<gregtech:meta_block_compressed_4:11>*64
,<gregtech:meta_block_compressed_5:13>*64
,<gregtech:meta_block_compressed_3:2>*64
,<gregtech:meta_block_compressed_5>*64) 
	.notConsumable(<contenttweaker:nanites>*64)
	.fluidInputs(<liquid:uu_matter>*100)
	.outputs(<avaritia:singularity:4>)
	.circuit(10)
    .buildAndRegister(); 
	
nanoswarm_hives.recipeBuilder()
    .duration(1000)  
    .EUt(100000)  
    .inputs(<gregtech:meta_block_compressed_1:7>*64
,<gregtech:meta_block_compressed_1:6>*64
,<gregtech:meta_block_compressed_0:11>*64
,<gregtech:meta_block_compressed_1:11>*64
,<gregtech:meta_block_compressed_0:10>*64
,<gregtech:meta_block_compressed_0:4>*64
,<gregtech:meta_block_compressed_0:3>*64) 
	.notConsumable(<contenttweaker:nanites>*64)
	.fluidInputs(<liquid:uu_matter>*100)
	.outputs(<avaritia:singularity:5>)
	.circuit(10)
    .buildAndRegister(); 
	
nanoswarm_hives.recipeBuilder()
    .duration(1000)  
    .EUt(100000)  
    .inputs(<gregtech:meta_block_compressed_6:3>*64
,<gregtech:meta_block_compressed_7>*64
,<gregtech:meta_block_compressed_6:4>*64
,<gregtech:meta_block_compressed_5:1>*64
,<gregtech:meta_block_compressed_4:5>*64
,<gregtech:meta_block_compressed_3:7>*64
,<gregtech:meta_block_compressed_1:9>*64) 
	.notConsumable(<contenttweaker:nanites>*64)
	.fluidInputs(<liquid:uu_matter>*100)
	.outputs(<avaritia:singularity:6>)
	.circuit(10)
    .buildAndRegister(); 
	
nanoswarm_hives.recipeBuilder()
    .duration(1000)  
    .EUt(100000)  
    .inputs(<gregtech:meta_block_compressed_4:2>*64
,<gregtech:meta_block_compressed_3:13>*64
,<gregtech:meta_block_compressed_4>*64
,<gregtech:meta_block_compressed_3>*64
,<gregtech:meta_block_compressed_2:8>*64
,<gregtech:meta_block_compressed_2:7>*64
,<gregtech:meta_block_compressed_2:1>*64) 
	.notConsumable(<contenttweaker:nanites>*64)
	.fluidInputs(<liquid:uu_matter>*100)
	.outputs(<avaritia:singularity:7>)
	.circuit(10)
    .buildAndRegister(); 
	
nanoswarm_hives.recipeBuilder()
    .duration(1000)  
    .EUt(100000)  
    .inputs(<gregtech:meta_block_compressed_8>*64
,<gregtech:meta_block_compressed_8:1>*64
,<gregtech:meta_block_compressed_6:13>*64
,<gregtech:meta_block_compressed_6:8>*64
,<gregtech:meta_block_compressed_5:15>*64
,<gregtech:meta_block_compressed_5:9>*64
,<gregtech:meta_block_compressed_4:7>*64) 
	.notConsumable(<contenttweaker:nanites>*64)
	.fluidInputs(<liquid:uu_matter>*100)
	.outputs(<avaritia:singularity:8>)
	.circuit(10)
    .buildAndRegister(); 