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
 
global ex_cvd_recipes as RecipeMap = FactoryRecipeMap.start("ex_cvd_recipes")
    .maxInputs(2)
    .maxOutputs(2)
	.maxFluidInputs(4)
	.maxFluidOutputs(4)
    .build();
 
Builder.start("ex_cvd_recipes", 32039)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle(" K        K ", " K        K ", " K        K ", " K        K "," K        K "," K        K "," K        K ","            ")
            .aisle("NK   KK   KN", "NKKKKKKKKKKN", "NNSSSSSSSSNN", "NNSSSSSSSSNN","NNSSSSSSSSNN","NKSSSSSSSSKN","NKSSSSSSSSKN","NG        GN")
            .aisle(" K        K ", " KKKKKKKKKK ", " NSEEEEEESN ", " NS      SN "," NS      SN "," KJJJJJJJJK "," KSSSSSSSSK "," G        G ")
            .aisle(" K        K ", " KKKKKKKKKK ", " NSEEEEEESN ", " NS      SN "," NS      SN "," KS      SK "," KSSSSSSSSK "," G        G ")
            .aisle(" K        K ", " KKKKKKKKKK ", " NSEEEEEESN ", " NS      SN "," NS      SN "," KJJJJJJJJK "," KSSSSSSSSK "," G        G ")
            .aisle("NK   KK   KN", "NKKKKKKKKKKN", "NNSSSSSSSSNN", "NNSSSSSSSSNN","NNSSSSSSSSNN","NKSSSSSSSSKN","NKSSSSSSSSKN","NG        GN")
            .aisle(" K        K ", " K        K ", " K        K ", " C        K "," K        K "," K        K "," K        K ","            ")
            .where("C", controller.self())
            .where("N", <metastate:gregtech:meta_block_frame_194:1>)
            .where("S", <metastate:gregtech:transparent_casing:1>)
            .where("J", <metastate:gregtech:boiler_casing:4>)
            .where("G", <metastate:gregtech:multiblock_casing:2>)
            .where("E", <metastate:gcys:multiblock_casing:1>)
            .where("K", CTPredicate.states(<metastate:gcym:large_multiblock_casing:10>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(ex_cvd_recipes)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:10>)
    .buildAndRegister();
ex_cvd_recipes.recipeBuilder() 
    .notConsumable(<gregtech:meta_plate:89>)
	.fluidInputs(<liquid:plasma.nitrogen>*16000,<liquid:acetylene>*24000)
    .fluidOutputs(<liquid:ammonia>*16000)
	.outputs(<gregtech:meta_stick_long:3592>)
	.EUt(7864320)
    .duration(1200) 
    .buildAndRegister(); 
	
ex_cvd_recipes.recipeBuilder() 
    .notConsumable(<gregtech:meta_plate:89>)
	.fluidInputs(<liquid:plasma.nitrogen>*10000,<liquid:cycloparaphenylene>*7000,<liquid:acetylene>*3000)
    .fluidOutputs(<liquid:ammonia>*10000)
	.outputs(<gregtech:meta_ingot:3592>)
	.EUt(7864320)
    .duration(1200) 
    .buildAndRegister(); 

ex_cvd_recipes.recipeBuilder() 
    .inputs(<ore:dustPlutonium241>)
	.fluidInputs(<liquid:hydrogen>*30000,<liquid:plasma.argon>*3000)
    .fluidOutputs(<liquid:argon>*3000)
	.outputs(<gregtech:meta_dust:32149>)
	.EUt(7864320)
    .duration(1200) 
    .buildAndRegister(); 
	
ex_cvd_recipes.recipeBuilder() 
    .inputs(<gregtech:meta_block_frame_2012>*16)
	.fluidInputs(<liquid:ruthenium_trinium_americium_neutronate>*16000,<liquid:plasma.argon>*3000)
	.outputs(<draconicevolution:fusion_crafting_core>)
	.EUt(7864320)
    .duration(12000) 
    .buildAndRegister(); 