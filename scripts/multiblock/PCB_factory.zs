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
 
global PCB_factory as RecipeMap = FactoryRecipeMap.start("PCB_factory_controller")
    .maxInputs(8)
	.maxOutputs(8)
    .maxFluidInputs(8)
    .maxFluidOutputs(8)
    .build();
 
Builder.start("PCB_factory", 32005)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
.aisle (
        " AAA ",
        " AAA ",
        " AAA ",
        " AAA ",
        " AAA ",
        "     ",
        "     ",
        "     ",
        "     ",
        " AAA ",
        " AAA ",
        " A A ",
        " A A ",
        " A A ",
        " A A ",
        " AAA ",
        " AAA ",
        " AAA "
      )
.aisle (
        "AAAAA",
        "AD DC",
        "AD DA",
        "AD DA",
        "AAAAA",
        " FFF ",
        " FFF ",
        " FFF ",
        " FFF ",
        "AAAAA",
        "AAGAA",
        "A G A",
        "A G A",
        "A G A",
        "A G A",
        "A   A",
        "AAAAA",
        "AAAAA"
      )
.aisle (
        "AAAAA",
        "A   A",
        "A   A",
        "A   A",
        "AAAAA",
        " HFH ",
        " HFH ",
        " HFH ",
        " HFH ",
        "AAAAA",
        " GGG ",
        "A   A",
        "A   A",
        "A   A",
        "A   A",
        "A   A",
        "AAAAA",
        "AAAAA"
      )
.aisle (
        "AAAAA",
        "A   A",
        "A   A",
        "A   A",
        "AAAAA",
        " JFJ ",
        " JFJ ",
        " JFJ ",
        " JFJ ",
        "AAAAA",
        " GGG ",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA"
      )
.aisle (
        "AAAAA",
        "A   A",
        "A   A",
        "A   A",
        "A   A",
        "A   A",
        "A   A",
        "A   A",
        "A   A",
        "AAAAA",
        " GGG ",
        "AAAAA",
        " AAA ",
        " AAA ",
        " AAA ",
        " AAA ",
        " AAA ",
        " AAA "
      )
.aisle (
        "AAAAA",
        "AD DA",
        "AD DA",
        "AD DA",
        "AD DA",
        "AD DA",
        "AD DA",
        "AD DA",
        "AD DA",
        "AAAAA",
        " GGG ",
        "AAAAA",
        "     ",
        "     ",
        "     ",
        "     ",
        "     ",
        "     "
      )
.aisle (
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "AAAAA",
        "     ",
        "     ",
        "     ",
        "     ",
        "     ",
        "     "
      )
            .where("C", controller.self())
            .where("D", <metastate:gregtech:meta_block_frame_20:4>)
			.where("F", <metastate:gregtech:meta_block_compressed_18:8>)
			.where("G", <metastate:gregtech:meta_block_compressed_187:14>)
			.where("H", <metastate:gregtech:boiler_casing:1>)
			.where("J", <metastate:gregtech:multiblock_casing:2>)
            .where("A", CTPredicate.states(<metastate:gregtech:meta_block_compressed_187:8>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(PCB_factory)
    .withBaseTexture(<metastate:gregtech:meta_block_compressed_187:8>)
    .buildAndRegister();
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(512)  
    .fluidInputs(<liquid:polyvinyl_chloride>*1440,<liquid:iron_iii_chloride>*2500) 
	.inputs(<gregtech:meta_foil:25>*40)
    .outputs(<gregtech:meta_item_1:403>*10) 
	.circuit(1)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(512)  
    .fluidInputs(<liquid:polyvinyl_chloride>*1440,<liquid:sodium_persulfate>*5000) 
	.inputs(<gregtech:meta_foil:25>*40)
    .outputs(<gregtech:meta_item_1:403>*10) 
	.circuit(1)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(960)  
    .fluidInputs(<liquid:epoxy>*1440,<liquid:iron_iii_chloride>*2500) 
	.inputs(<gregtech:meta_foil:277>*160)
    .outputs(<gregtech:meta_item_1:404>*10) 
	.circuit(1)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(960)  
    .fluidInputs(<liquid:epoxy>*1440,<liquid:sodium_persulfate>*5000) 
	.inputs(<gregtech:meta_foil:277>*160)
    .outputs(<gregtech:meta_item_1:404>*10) 
	.circuit(1)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(1920)  
    .fluidInputs(<liquid:epoxy>*1440,<liquid:borosilicate_glass>*1440,<liquid:iron_iii_chloride>*2500) 
	.inputs(<gregtech:meta_foil:252>*200)
    .outputs(<gregtech:meta_item_1:405>*10) 
	.circuit(2)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(1920)  
    .fluidInputs(<liquid:epoxy>*1440,<liquid:borosilicate_glass>*1440,<liquid:sodium_persulfate>*5000) 
	.inputs(<gregtech:meta_foil:252>*200)
    .outputs(<gregtech:meta_item_1:405>*10) 
	.circuit(2)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(3840)  
    .fluidInputs(<liquid:epoxy>*1440,<liquid:borosilicate_glass>*1440,<liquid:iron_iii_chloride>*2500) 
	.inputs(<gregtech:meta_foil:80>*160)
    .outputs(<gregtech:meta_item_1:406>*10) 
	.circuit(2)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(3840)  
    .fluidInputs(<liquid:epoxy>*1440,<liquid:borosilicate_glass>*1440,<liquid:sodium_persulfate>*5000) 
	.inputs(<gregtech:meta_foil:80>*160)
    .outputs(<gregtech:meta_item_1:406>*10) 
	.circuit(2)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(1920)  
    .fluidInputs(<liquid:epoxy>*1440,<liquid:carbon>*1440,<liquid:iron_iii_chloride>*2500) 
	.inputs(<gregtech:meta_foil:252>*200)
    .outputs(<gregtech:meta_item_1:405>*10) 
	.circuit(2)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(1920)  
    .fluidInputs(<liquid:epoxy>*1440,<liquid:carbon>*1440,<liquid:sodium_persulfate>*5000) 
	.inputs(<gregtech:meta_foil:252>*200)
    .outputs(<gregtech:meta_item_1:405>*10) 
	.circuit(2)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(3840)  
    .fluidInputs(<liquid:epoxy>*1440,<liquid:carbon>*1440,<liquid:iron_iii_chloride>*2500) 
	.inputs(<gregtech:meta_foil:80>*160)
    .outputs(<gregtech:meta_item_1:406>*10) 
	.circuit(2)
    .buildAndRegister(); 
	
PCB_factory.recipeBuilder()
    .duration(500)  
    .EUt(3840)  
    .fluidInputs(<liquid:epoxy>*1440,<liquid:carbon>*1440,<liquid:sodium_persulfate>*5000) 
	.inputs(<gregtech:meta_foil:80>*160)
    .outputs(<gregtech:meta_item_1:406>*10) 
	.circuit(2)
    .buildAndRegister(); 