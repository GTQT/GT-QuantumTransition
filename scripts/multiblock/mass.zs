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
 
global mass as RecipeMap = FactoryRecipeMap.start("mass")
    .maxInputs(2)
	.maxFluidOutputs(1)
    .build();
 
Builder.start("mass", 32047)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("AAAAA", "ACCCA","ACCCA", "AAAAA")
            .aisle("ABBBA", "C   C","C   C", "AAAAA")
            .aisle("ABBBA", "C   C","C   C", "AAAAA")
            .aisle("ABBBA", "C   C","C   C", "AAAAA")
            .aisle("AAXAA", "ACCCA","ACCCA", "AAAAA")

            .where("X", controller.self())
			.where("B", <metastate:contenttweaker:mass_core>)
			.where("C", <metastate:gregtech:transparent_casing:1>)
            .where("A", CTPredicate.states(<metastate:contenttweaker:mass_generator>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(mass)
    .withBaseTexture(<metastate:contenttweaker:mass_generator>)
    .buildAndRegister();
mass.recipeBuilder()
    .duration(10)  
    .EUt(823040)  
    .fluidOutputs(<liquid:uu_matter>*10) 
	.circuit(0)
    .buildAndRegister(); 
	