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
 
global chemical_plant as RecipeMap = FactoryRecipeMap.start("chemical_plant")
    .maxInputs(6)
    .maxOutputs(6)
	.maxFluidInputs(6)
	.maxFluidOutputs(6)
    .build();
 
Builder.start("chemical_plant", 32051)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMMMMMM", "M     M", "M     M", "M     M", "M     M", "M     M","MMMMMMM")
            .aisle("MNNNNNM", " NNNNN ", "       ", "       ", "       ", " NNNNN ","MMMMMMM")
            .aisle("MNNNNNM", " NNNNN ", "  AAA  ", "  DDD  ", "  AAA  ", " NNNNN ","MMMMMMM")
            .aisle("MNNNNNM", " NNNNN ", "  AAA  ", "  DDD  ", "  AAA  ", " NNNNN ","MMMMMMM")
            .aisle("MNNNNNM", " NNNNN ", "  AAA  ", "  DDD  ", "  AAA  ", " NNNNN ","MMMMMMM")
            .aisle("MNNNNNM", " NNNNN ", "       ", "       ", "       ", " NNNNN ","MMMMMMM")
            .aisle("MMMCMMM", "M     M", "M     M", "M     M", "M     M", "M     M","MMMMMMM")
            .where("C", controller.self())
			.where("N", <metastate:gregtech:machine_casing:2>)
			.where("A", <metastate:gregtech:wire_coil>)
			.where("D", <metastate:gregtech:boiler_casing>)
			.where("M", CTPredicate.states(<metastate:gregtech:metal_casing>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(0).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(chemical_plant)
    .withBaseTexture(<metastate:gregtech:metal_casing>)
    .buildAndRegister();
chemical_plant.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32137>*23,<gregtech:meta_dust:18>*8,<gregtech:meta_dust:32141>*4,<gregtech:meta_dust:32147>)
    .fluidInputs(<liquid:silver_tetrafluoroborate>*4000,<liquid:trimethyltin_chloride>*4000)
	.outputs(<gregtech:meta_dust:112>*4,<gregtech:meta_dust:32041>*8,<gregtech:meta_dust:32143>*8,<gregtech:meta_dust:299>*6)
    .fluidOutputs(<liquid:cycloparaphenylene>*1000,<liquid:boron_trifluoride>*4000,<liquid:hydrofluoric_acid>*4000)
    .duration(4000)
    .EUt(131072)
    .buildAndRegister();
	
//二苄基四乙酰六氮杂异纤锌烷 (Dibenzyltetraacetylhexaazaisowurtzitane)
chemical_plant.recipeBuilder() 
    .inputs(<gregtech:meta_dust:32158>,<gregtech:meta_dust:32159>)
    .notConsumable(<gregtech:meta_plate_double:89>)
    .fluidInputs(<liquid:hydrogen>*1000,<liquid:hydrobromic_acid>*100,<liquid:ethylbenzene>*500)
	.outputs(<gregtech:meta_dust:32157>*12)
	.fluidOutputs(<liquid:ethylene_glycol>*1000)
    .duration(800)
    .EUt(131072)
    .buildAndRegister();

chemical_plant.recipeBuilder() 
    .fluidInputs(<liquid:rpone>* 500,<liquid:oxygen>*2000)
    .fluidOutputs(<liquid:rpmix> * 1500)
    .duration(300)
    .EUt(240)
    .buildAndRegister();
	
chemical_plant.recipeBuilder() 
    .fluidInputs(<liquid:hydrazine>* 4000,<liquid:methanol>*6000)
    .fluidOutputs(<liquid:dense_hydrazine> * 10000)
    .duration(600)
    .EUt(480)
    .buildAndRegister();
	
chemical_plant.recipeBuilder() 
    .fluidInputs(<liquid:hydrazine>*1000,<liquid:hydrogen>*2000)
	.inputs(<gregtech:meta_dust:18>)
    .fluidOutputs(<liquid:monomethylhydrazine> * 1000)
    .duration(600)
    .EUt(480)
    .buildAndRegister();
	
	
chemical_plant.recipeBuilder() 
    .fluidInputs(<liquid:monomethylhydrazine>*2000,<liquid:nitric_acid>*2000)
    .fluidOutputs(<liquid:methylhydrazine_nitrate> * 2000)
    .duration(900)
    .EUt(480)
    .buildAndRegister();
	