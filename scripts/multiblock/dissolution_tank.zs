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
 
global dissolution_tank as RecipeMap = FactoryRecipeMap.start("dissolution_tank_controller")
    .maxInputs(2)
	.maxOutputs(2)
    .maxFluidInputs(4)
    .maxFluidOutputs(2)
    .build();
 
Builder.start("dissolution_tank", 32001)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("M###M", "MMMMM", "MGGGM", "MGGGM", "#MMM#")
            .aisle("#####", "MNNNM", "G###G", "G###G", "MMMMM")
            .aisle("#####", "MNNNM", "G###G", "G###G", "MMMMM")
            .aisle("#####", "MNNNM", "G###G", "G###G", "MMMMM")
            .aisle("M###M", "MMCMM", "MGGGM", "MGGGM", "#MMM#")
            .where("C", controller.self())
            .where("G", <metastate:gregtech:transparent_casing>)
            .where("M", CTPredicate.states(<metastate:gregtech:metal_casing:5>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where("N", <metastate:gregtech:multiblock_casing:2>)
            .where("#",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(dissolution_tank)
    .withBaseTexture(<metastate:gregtech:metal_casing:5>)
    .buildAndRegister();
dissolution_tank.recipeBuilder()
    .duration(500)  
    .EUt(960)  
    .inputs(<gregtech:meta_dust:32037>) 
    .fluidInputs(<liquid:hydrochloric_acid> * 250)  
	.outputs(<gregtech:meta_dust:32038>)
    .fluidOutputs(<liquid:goldcl> * 250) 
    .buildAndRegister(); 

dissolution_tank.recipeBuilder()
    .duration(50)  
    .EUt(960)  
    .fluidInputs(<liquid:fujixitu>*576,<liquid:diethylhexyl_phosphoric_acid>*200)  
    .fluidOutputs(<liquid:rare_earth_chlorides_solution> * 576) 
    .buildAndRegister(); 