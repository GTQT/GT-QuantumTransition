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
 
global force_field_encapsulator as RecipeMap = FactoryRecipeMap.start("force_field_encapsulator")
    .maxInputs(3)
	.maxOutputs(3)
    .maxFluidInputs(3)
    .maxFluidOutputs(3)
    .build();
 
Builder.start("force_field_encapsulator", 32049)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
       .aisle(
        "AAAAAAA",
        "ABBBBBA",
        "ABBBBBA",
        "ABBBBBA",
        "AAAAAAA"
      )
      .aisle(
        "AAAAAAA",
        "BCDDDCB",
        "B     B",
        "BCDDDCB",
        "AAAAAAA"
      )
      .aisle(
        "AAEEEAA",
        "BDFEFDB",
        "B FFF B",
        "BDFEFDB",
        "AAEEEAA"
      )
      .aisle(
        "AAEEEAA",
        "BDEFEDB",
        "B FGF B",
        "BDEFEDB",
        "AAEEEAA"
      )
      .aisle(
        "AAEEEAA",
        "BDFEFDB",
        "B FFF B",
        "BDFEFDB",
        "AAEEEAA"
      )
      .aisle(
        "AAAAAAA",
        "BCDDDCB",
        "B     B",
        "BCDDDCB",
        "AAAAAAA"
      )
      .aisle(
        "AAAAAAA",
        "ABBBBBA",
        "ABBBBBA",
        "ABBBBBA",
        "AAAXAAA"
      )
            .where("X", controller.self())
			.where("B", <metastate:gregtech:transparent_casing:1>)
			.where("C", <metastate:gregtech:meta_block_frame_942:6>)
			.where("D", <metastate:gregtech:fusion_casing:1>)
			.where("E", <metastate:contenttweaker:mass_generator:0>)
			.where("F", <metastate:gregtech:transparent_casing:1>)
			.where("G", <metastate:gregtech:orange_lamp:0>)
            .where("A", CTPredicate.states(<metastate:contenttweaker:naq_housing>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(force_field_encapsulator)
    .withBaseTexture(<metastate:contenttweaker:naq_housing>)
    .buildAndRegister();
force_field_encapsulator.recipeBuilder() 
    .fluidInputs(<liquid:ntech_up>*1)
    .fluidOutputs(<liquid:ntech_down>*1,<liquid:neutrons_flow>*5)
	.circuit(1)
    .duration(1)
    .EUt(7864320)
    .buildAndRegister();
	
force_field_encapsulator.recipeBuilder() 
    .fluidInputs(<liquid:ptech_up>*1)
    .fluidOutputs(<liquid:ptech_down>*1,<liquid:proton_flow>*5)
	.circuit(1)
    .duration(1)
    .EUt(7864320)
    .buildAndRegister();