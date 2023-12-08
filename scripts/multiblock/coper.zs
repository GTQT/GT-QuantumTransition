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
 
global coper as RecipeMap = FactoryRecipeMap.start("coper")
    .maxInputs(3)
    .maxFluidInputs(4)
	.maxFluidOutputs(4)
	.maxOutputs(3)
    .build();
 
Builder.start("coper", 32050)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
.aisle(
        "   AAA   ",
        "  AAAAA  ",
        " AAAAAAA ",
        "AAAAAAAAA",
        "AAAAAAAAA",
        "AAAAAAAAA",
        " AAAAAAA ",
        "  AAAAA  ",
        "   AAA   "
      )
            .aisle(
        "   AAA   ",
        "  BCCCB  ",
        " BCDEDCB ",
        "ACDDDDDCA",
        "BCEDFDECB",
        "ACDDDDDCA",
        " BCDEDCB ",
        "  BCCCB  ",
        "   AAA   "
      )
            .aisle(
        "   AAA   ",
        "  GDEDG  ",
        " G     G ",
        "A       A",
        "G       G",
        "A       A",
        " G     G ",
        "  GDEDG  ",
        "   AAA   "
      )
            .aisle(
        "   AAA   ",
        "  GDEDG  ",
        " G     G ",
        "A       A",
        "G       G",
        "A       A",
        " G     G ",
        "  GDEDG  ",
        "   AAA   "
      )
            .aisle(
        "   AAA   ",
        "  BCCCB  ",
        " BCDEDCB ",
        "ACDDDDDCA",
        "BCEDFDECB",
        "ACDDDDDCA",
        " BCDEDCB ",
        "  BCCCB  ",
        "   AAA   "
      )
            .aisle(
        "   AAA   ",
        "  AAAAA  ",
        " AAAAAAA ",
        "AAAAAAAAA",
        "AAAAXAAAA",
        "AAAAAAAAA",
        " AAAAAAA ",
        "  AAAAA  ",
        "   AAA   "
      )
            .where("X", controller.self())
			.where("B", <metastate:contenttweaker:mass_generator>)
			.where("C", <metastate:contenttweaker:aipc_core>)
			.where("D", <metastate:gregtech:fusion_casing:4>)
			.where("E", <metastate:gregtech:fusion_casing:1>)
			.where("F", <metastate:gregtech:white_lamp:0>)
			.where("G", <metastate:gregtech:transparent_casing:1>)
            .where("A", CTPredicate.states(<metastate:contenttweaker:coper>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(coper)
    .withBaseTexture(<metastate:contenttweaker:coper:0>)
    .buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:hydrogen>*1000).fluidInputs(<liquid:proton_flow>*1,<liquid:uu_matter>*10).fluidOutputs(<liquid:hydrogen>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:deuterium>*1000).fluidInputs(<liquid:proton_flow>*1,<liquid:neutrons_flow>*1,<liquid:uu_matter>*20).fluidOutputs(<liquid:deuterium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:tritium>*1000).fluidInputs(<liquid:proton_flow>*1,<liquid:neutrons_flow>*2,<liquid:uu_matter>*30).fluidOutputs(<liquid:tritium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:helium>*1000).fluidInputs(<liquid:proton_flow>*2,<liquid:neutrons_flow>*2,<liquid:uu_matter>*40).fluidOutputs(<liquid:helium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:helium_3>*1000).fluidInputs(<liquid:proton_flow>*2,<liquid:neutrons_flow>*1,<liquid:uu_matter>*30).fluidOutputs(<liquid:helium_3>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:lithium>*1000).fluidInputs(<liquid:proton_flow>*3,<liquid:neutrons_flow>*4,<liquid:uu_matter>*70).fluidOutputs(<liquid:lithium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:beryllium>*1000).fluidInputs(<liquid:proton_flow>*4,<liquid:neutrons_flow>*5,<liquid:uu_matter>*90).fluidOutputs(<liquid:beryllium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:boron>*1000).fluidInputs(<liquid:proton_flow>*5,<liquid:neutrons_flow>*5,<liquid:uu_matter>*100).fluidOutputs(<liquid:boron>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:carbon>*1000).fluidInputs(<liquid:proton_flow>*6,<liquid:neutrons_flow>*6,<liquid:uu_matter>*120).fluidOutputs(<liquid:carbon>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:nitrogen>*1000).fluidInputs(<liquid:proton_flow>*7,<liquid:neutrons_flow>*7,<liquid:uu_matter>*140).fluidOutputs(<liquid:nitrogen>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:oxygen>*1000).fluidInputs(<liquid:proton_flow>*8,<liquid:neutrons_flow>*8,<liquid:uu_matter>*160).fluidOutputs(<liquid:oxygen>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:fluorine>*1000).fluidInputs(<liquid:proton_flow>*9,<liquid:neutrons_flow>*9,<liquid:uu_matter>*180).fluidOutputs(<liquid:fluorine>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:neon>*1000).fluidInputs(<liquid:proton_flow>*10,<liquid:neutrons_flow>*10,<liquid:uu_matter>*200).fluidOutputs(<liquid:neon>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:sodium>*1000).fluidInputs(<liquid:proton_flow>*11,<liquid:neutrons_flow>*11,<liquid:uu_matter>*220).fluidOutputs(<liquid:sodium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:magnesium>*1000).fluidInputs(<liquid:proton_flow>*12,<liquid:neutrons_flow>*12,<liquid:uu_matter>*240).fluidOutputs(<liquid:magnesium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:aluminium>*1000).fluidInputs(<liquid:proton_flow>*13,<liquid:neutrons_flow>*13,<liquid:uu_matter>*260).fluidOutputs(<liquid:aluminium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:silicon>*1000).fluidInputs(<liquid:proton_flow>*14,<liquid:neutrons_flow>*14,<liquid:uu_matter>*280).fluidOutputs(<liquid:silicon>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:phosphorus>*1000).fluidInputs(<liquid:proton_flow>*15,<liquid:neutrons_flow>*15,<liquid:uu_matter>*300).fluidOutputs(<liquid:phosphorus>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:sulfur>*1000).fluidInputs(<liquid:proton_flow>*16,<liquid:neutrons_flow>*16,<liquid:uu_matter>*320).fluidOutputs(<liquid:sulfur>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:chlorine>*1000).fluidInputs(<liquid:proton_flow>*17,<liquid:neutrons_flow>*18,<liquid:uu_matter>*350).fluidOutputs(<liquid:chlorine>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:argon>*1000).fluidInputs(<liquid:proton_flow>*18,<liquid:neutrons_flow>*22,<liquid:uu_matter>*400).fluidOutputs(<liquid:argon>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:potassium>*1000).fluidInputs(<liquid:proton_flow>*19,<liquid:neutrons_flow>*20,<liquid:uu_matter>*390).fluidOutputs(<liquid:potassium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:calcium>*1000).fluidInputs(<liquid:proton_flow>*20,<liquid:neutrons_flow>*20,<liquid:uu_matter>*400).fluidOutputs(<liquid:calcium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:scandium>*1000).fluidInputs(<liquid:proton_flow>*21,<liquid:neutrons_flow>*24,<liquid:uu_matter>*450).fluidOutputs(<liquid:scandium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:titanium>*1000).fluidInputs(<liquid:proton_flow>*22,<liquid:neutrons_flow>*26,<liquid:uu_matter>*480).fluidOutputs(<liquid:titanium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:vanadium>*1000).fluidInputs(<liquid:proton_flow>*23,<liquid:neutrons_flow>*28,<liquid:uu_matter>*510).fluidOutputs(<liquid:vanadium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:chrome>*1000).fluidInputs(<liquid:proton_flow>*24,<liquid:neutrons_flow>*28,<liquid:uu_matter>*520).fluidOutputs(<liquid:chrome>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:manganese>*1000).fluidInputs(<liquid:proton_flow>*25,<liquid:neutrons_flow>*30,<liquid:uu_matter>*550).fluidOutputs(<liquid:manganese>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:iron>*1000).fluidInputs(<liquid:proton_flow>*26,<liquid:neutrons_flow>*30,<liquid:uu_matter>*560).fluidOutputs(<liquid:iron>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:cobalt>*1000).fluidInputs(<liquid:proton_flow>*27,<liquid:neutrons_flow>*32,<liquid:uu_matter>*590).fluidOutputs(<liquid:cobalt>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:nickel>*1000).fluidInputs(<liquid:proton_flow>*28,<liquid:neutrons_flow>*30,<liquid:uu_matter>*580).fluidOutputs(<liquid:nickel>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:copper>*1000).fluidInputs(<liquid:proton_flow>*29,<liquid:neutrons_flow>*34,<liquid:uu_matter>*630).fluidOutputs(<liquid:copper>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:zinc>*1000).fluidInputs(<liquid:proton_flow>*30,<liquid:neutrons_flow>*35,<liquid:uu_matter>*650).fluidOutputs(<liquid:zinc>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:gallium>*1000).fluidInputs(<liquid:proton_flow>*31,<liquid:neutrons_flow>*39,<liquid:uu_matter>*700).fluidOutputs(<liquid:gallium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:germanium>*1000).fluidInputs(<liquid:proton_flow>*32,<liquid:neutrons_flow>*40,<liquid:uu_matter>*720).fluidOutputs(<liquid:germanium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:arsenic>*1000).fluidInputs(<liquid:proton_flow>*33,<liquid:neutrons_flow>*42,<liquid:uu_matter>*750).fluidOutputs(<liquid:arsenic>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:selenium>*1000).fluidInputs(<liquid:proton_flow>*34,<liquid:neutrons_flow>*45,<liquid:uu_matter>*790).fluidOutputs(<liquid:selenium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:bromine>*1000).fluidInputs(<liquid:proton_flow>*35,<liquid:neutrons_flow>*45,<liquid:uu_matter>*800).fluidOutputs(<liquid:bromine>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:krypton>*1000).fluidInputs(<liquid:proton_flow>*36,<liquid:neutrons_flow>*48,<liquid:uu_matter>*840).fluidOutputs(<liquid:krypton>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:rubidium>*1000).fluidInputs(<liquid:proton_flow>*37,<liquid:neutrons_flow>*48,<liquid:uu_matter>*850).fluidOutputs(<liquid:rubidium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:strontium>*1000).fluidInputs(<liquid:proton_flow>*38,<liquid:neutrons_flow>*49,<liquid:uu_matter>*870).fluidOutputs(<liquid:strontium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:yttrium>*1000).fluidInputs(<liquid:proton_flow>*39,<liquid:neutrons_flow>*50,<liquid:uu_matter>*890).fluidOutputs(<liquid:yttrium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:zirconium>*1000).fluidInputs(<liquid:proton_flow>*40,<liquid:neutrons_flow>*51,<liquid:uu_matter>*910).fluidOutputs(<liquid:zirconium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:niobium>*1000).fluidInputs(<liquid:proton_flow>*41,<liquid:neutrons_flow>*53,<liquid:uu_matter>*940).fluidOutputs(<liquid:niobium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:molybdenum>*1000).fluidInputs(<liquid:proton_flow>*42,<liquid:neutrons_flow>*53,<liquid:uu_matter>*950).fluidOutputs(<liquid:molybdenum>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:technetium>*1000).fluidInputs(<liquid:proton_flow>*43,<liquid:neutrons_flow>*55,<liquid:uu_matter>*980).fluidOutputs(<liquid:technetium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:ruthenium>*1000).fluidInputs(<liquid:proton_flow>*44,<liquid:neutrons_flow>*57,<liquid:uu_matter>*1010).fluidOutputs(<liquid:ruthenium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:rhodium>*1000).fluidInputs(<liquid:proton_flow>*45,<liquid:neutrons_flow>*58,<liquid:uu_matter>*1030).fluidOutputs(<liquid:rhodium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:palladium>*1000).fluidInputs(<liquid:proton_flow>*46,<liquid:neutrons_flow>*60,<liquid:uu_matter>*1060).fluidOutputs(<liquid:palladium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:silver>*1000).fluidInputs(<liquid:proton_flow>*47,<liquid:neutrons_flow>*60,<liquid:uu_matter>*1070).fluidOutputs(<liquid:silver>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:cadmium>*1000).fluidInputs(<liquid:proton_flow>*48,<liquid:neutrons_flow>*64,<liquid:uu_matter>*1120).fluidOutputs(<liquid:cadmium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:indium>*1000).fluidInputs(<liquid:proton_flow>*49,<liquid:neutrons_flow>*65,<liquid:uu_matter>*1140).fluidOutputs(<liquid:indium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:tin>*1000).fluidInputs(<liquid:proton_flow>*50,<liquid:neutrons_flow>*68,<liquid:uu_matter>*1180).fluidOutputs(<liquid:tin>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:antimony>*1000).fluidInputs(<liquid:proton_flow>*51,<liquid:neutrons_flow>*70,<liquid:uu_matter>*1210).fluidOutputs(<liquid:antimony>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:tellurium>*1000).fluidInputs(<liquid:proton_flow>*52,<liquid:neutrons_flow>*75,<liquid:uu_matter>*1270).fluidOutputs(<liquid:tellurium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:iodine>*1000).fluidInputs(<liquid:proton_flow>*53,<liquid:neutrons_flow>*74,<liquid:uu_matter>*1270).fluidOutputs(<liquid:iodine>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:xenon>*1000).fluidInputs(<liquid:proton_flow>*54,<liquid:neutrons_flow>*77,<liquid:uu_matter>*1310).fluidOutputs(<liquid:xenon>*1000).buildAndRegister();
///coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:caesium>*1000).fluidInputs(<liquid:proton_flow>*55,<liquid:neutrons_flow>*77,<liquid:uu_matter>*1320).fluidOutputs(<liquid:caesium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:barium>*1000).fluidInputs(<liquid:proton_flow>*56,<liquid:neutrons_flow>*81,<liquid:uu_matter>*1370).fluidOutputs(<liquid:barium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:lanthanum>*1000).fluidInputs(<liquid:proton_flow>*57,<liquid:neutrons_flow>*81,<liquid:uu_matter>*1380).fluidOutputs(<liquid:lanthanum>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:cerium>*1000).fluidInputs(<liquid:proton_flow>*58,<liquid:neutrons_flow>*82,<liquid:uu_matter>*1400).fluidOutputs(<liquid:cerium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:praseodymium>*1000).fluidInputs(<liquid:proton_flow>*59,<liquid:neutrons_flow>*81,<liquid:uu_matter>*1400).fluidOutputs(<liquid:praseodymium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:neodymium>*1000).fluidInputs(<liquid:proton_flow>*60,<liquid:neutrons_flow>*84,<liquid:uu_matter>*1440).fluidOutputs(<liquid:neodymium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:promethium>*1000).fluidInputs(<liquid:proton_flow>*61,<liquid:neutrons_flow>*83,<liquid:uu_matter>*1440).fluidOutputs(<liquid:promethium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:samarium>*1000).fluidInputs(<liquid:proton_flow>*62,<liquid:neutrons_flow>*88,<liquid:uu_matter>*1500).fluidOutputs(<liquid:samarium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:europium>*1000).fluidInputs(<liquid:proton_flow>*63,<liquid:neutrons_flow>*88,<liquid:uu_matter>*1510).fluidOutputs(<liquid:europium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:gadolinium>*1000).fluidInputs(<liquid:proton_flow>*64,<liquid:neutrons_flow>*93,<liquid:uu_matter>*1570).fluidOutputs(<liquid:gadolinium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:terbium>*1000).fluidInputs(<liquid:proton_flow>*65,<liquid:neutrons_flow>*93,<liquid:uu_matter>*1580).fluidOutputs(<liquid:terbium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:dysprosium>*1000).fluidInputs(<liquid:proton_flow>*66,<liquid:neutrons_flow>*96,<liquid:uu_matter>*1620).fluidOutputs(<liquid:dysprosium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:holmium>*1000).fluidInputs(<liquid:proton_flow>*67,<liquid:neutrons_flow>*97,<liquid:uu_matter>*1640).fluidOutputs(<liquid:holmium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:erbium>*1000).fluidInputs(<liquid:proton_flow>*68,<liquid:neutrons_flow>*99,<liquid:uu_matter>*1670).fluidOutputs(<liquid:erbium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:thulium>*1000).fluidInputs(<liquid:proton_flow>*69,<liquid:neutrons_flow>*99,<liquid:uu_matter>*1680).fluidOutputs(<liquid:thulium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:ytterbium>*1000).fluidInputs(<liquid:proton_flow>*70,<liquid:neutrons_flow>*103,<liquid:uu_matter>*1730).fluidOutputs(<liquid:ytterbium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:lutetium>*1000).fluidInputs(<liquid:proton_flow>*71,<liquid:neutrons_flow>*103,<liquid:uu_matter>*1740).fluidOutputs(<liquid:lutetium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:hafnium>*1000).fluidInputs(<liquid:proton_flow>*72,<liquid:neutrons_flow>*106,<liquid:uu_matter>*1780).fluidOutputs(<liquid:hafnium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:tantalum>*1000).fluidInputs(<liquid:proton_flow>*73,<liquid:neutrons_flow>*107,<liquid:uu_matter>*1800).fluidOutputs(<liquid:tantalum>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:tungsten>*1000).fluidInputs(<liquid:proton_flow>*74,<liquid:neutrons_flow>*109,<liquid:uu_matter>*1830).fluidOutputs(<liquid:tungsten>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:rhenium>*1000).fluidInputs(<liquid:proton_flow>*75,<liquid:neutrons_flow>*111,<liquid:uu_matter>*1860).fluidOutputs(<liquid:rhenium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:osmium>*1000).fluidInputs(<liquid:proton_flow>*76,<liquid:neutrons_flow>*114,<liquid:uu_matter>*1900).fluidOutputs(<liquid:osmium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:iridium>*1000).fluidInputs(<liquid:proton_flow>*77,<liquid:neutrons_flow>*115,<liquid:uu_matter>*1920).fluidOutputs(<liquid:iridium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:platinum>*1000).fluidInputs(<liquid:proton_flow>*78,<liquid:neutrons_flow>*117,<liquid:uu_matter>*1950).fluidOutputs(<liquid:platinum>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:gold>*1000).fluidInputs(<liquid:proton_flow>*79,<liquid:neutrons_flow>*117,<liquid:uu_matter>*1960).fluidOutputs(<liquid:gold>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:mercury>*1000).fluidInputs(<liquid:proton_flow>*80,<liquid:neutrons_flow>*120,<liquid:uu_matter>*2000).fluidOutputs(<liquid:mercury>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:thallium>*1000).fluidInputs(<liquid:proton_flow>*81,<liquid:neutrons_flow>*123,<liquid:uu_matter>*2040).fluidOutputs(<liquid:thallium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:lead>*1000).fluidInputs(<liquid:proton_flow>*82,<liquid:neutrons_flow>*125,<liquid:uu_matter>*2070).fluidOutputs(<liquid:lead>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:bismuth>*1000).fluidInputs(<liquid:proton_flow>*83,<liquid:neutrons_flow>*125,<liquid:uu_matter>*2080).fluidOutputs(<liquid:bismuth>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:polonium>*1000).fluidInputs(<liquid:proton_flow>*84,<liquid:neutrons_flow>*124,<liquid:uu_matter>*2080).fluidOutputs(<liquid:polonium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:astatine>*1000).fluidInputs(<liquid:proton_flow>*85,<liquid:neutrons_flow>*124,<liquid:uu_matter>*2090).fluidOutputs(<liquid:astatine>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:radon>*1000).fluidInputs(<liquid:proton_flow>*86,<liquid:neutrons_flow>*134,<liquid:uu_matter>*2200).fluidOutputs(<liquid:radon>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:francium>*1000).fluidInputs(<liquid:proton_flow>*87,<liquid:neutrons_flow>*134,<liquid:uu_matter>*2210).fluidOutputs(<liquid:francium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:radium>*1000).fluidInputs(<liquid:proton_flow>*88,<liquid:neutrons_flow>*136,<liquid:uu_matter>*2240).fluidOutputs(<liquid:radium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:actinium>*1000).fluidInputs(<liquid:proton_flow>*89,<liquid:neutrons_flow>*136,<liquid:uu_matter>*2250).fluidOutputs(<liquid:actinium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:thorium>*1000).fluidInputs(<liquid:proton_flow>*90,<liquid:neutrons_flow>*140,<liquid:uu_matter>*2300).fluidOutputs(<liquid:thorium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:protactinium>*1000).fluidInputs(<liquid:proton_flow>*91,<liquid:neutrons_flow>*138,<liquid:uu_matter>*2290).fluidOutputs(<liquid:protactinium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:uranium>*1000).fluidInputs(<liquid:proton_flow>*92,<liquid:neutrons_flow>*146,<liquid:uu_matter>*2380).fluidOutputs(<liquid:uranium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:uranium_238>*1000).fluidInputs(<liquid:proton_flow>*92,<liquid:neutrons_flow>*146,<liquid:uu_matter>*2380).fluidOutputs(<liquid:uranium_238>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:uranium_235>*1000).fluidInputs(<liquid:proton_flow>*92,<liquid:neutrons_flow>*143,<liquid:uu_matter>*2350).fluidOutputs(<liquid:uranium_235>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:neptunium>*1000).fluidInputs(<liquid:proton_flow>*93,<liquid:neutrons_flow>*144,<liquid:uu_matter>*2370).fluidOutputs(<liquid:neptunium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:plutonium>*1000).fluidInputs(<liquid:proton_flow>*94,<liquid:neutrons_flow>*152,<liquid:uu_matter>*2460).fluidOutputs(<liquid:plutonium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:plutonium_239>*1000).fluidInputs(<liquid:proton_flow>*94,<liquid:neutrons_flow>*145,<liquid:uu_matter>*2390).fluidOutputs(<liquid:plutonium_239>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:plutonium_241>*1000).fluidInputs(<liquid:proton_flow>*94,<liquid:neutrons_flow>*149,<liquid:uu_matter>*2430).fluidOutputs(<liquid:plutonium_241>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:americium>*1000).fluidInputs(<liquid:proton_flow>*95,<liquid:neutrons_flow>*150,<liquid:uu_matter>*2450).fluidOutputs(<liquid:americium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:curium>*1000).fluidInputs(<liquid:proton_flow>*96,<liquid:neutrons_flow>*153,<liquid:uu_matter>*2490).fluidOutputs(<liquid:curium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:berkelium>*1000).fluidInputs(<liquid:proton_flow>*97,<liquid:neutrons_flow>*152,<liquid:uu_matter>*2490).fluidOutputs(<liquid:berkelium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:californium>*1000).fluidInputs(<liquid:proton_flow>*98,<liquid:neutrons_flow>*153,<liquid:uu_matter>*2510).fluidOutputs(<liquid:californium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:einsteinium>*1000).fluidInputs(<liquid:proton_flow>*99,<liquid:neutrons_flow>*153,<liquid:uu_matter>*2520).fluidOutputs(<liquid:einsteinium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:fermium>*1000).fluidInputs(<liquid:proton_flow>*100,<liquid:neutrons_flow>*157,<liquid:uu_matter>*2570).fluidOutputs(<liquid:fermium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:mendelevium>*1000).fluidInputs(<liquid:proton_flow>*101,<liquid:neutrons_flow>*157,<liquid:uu_matter>*2580).fluidOutputs(<liquid:mendelevium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:nobelium>*1000).fluidInputs(<liquid:proton_flow>*102,<liquid:neutrons_flow>*157,<liquid:uu_matter>*2590).fluidOutputs(<liquid:nobelium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:lawrencium>*1000).fluidInputs(<liquid:proton_flow>*103,<liquid:neutrons_flow>*159,<liquid:uu_matter>*2620).fluidOutputs(<liquid:lawrencium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:rutherfordium>*1000).fluidInputs(<liquid:proton_flow>*104,<liquid:neutrons_flow>*161,<liquid:uu_matter>*2650).fluidOutputs(<liquid:rutherfordium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:dubnium>*1000).fluidInputs(<liquid:proton_flow>*105,<liquid:neutrons_flow>*163,<liquid:uu_matter>*2680).fluidOutputs(<liquid:dubnium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:seaborgium>*1000).fluidInputs(<liquid:proton_flow>*106,<liquid:neutrons_flow>*165,<liquid:uu_matter>*2710).fluidOutputs(<liquid:seaborgium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:bohrium>*1000).fluidInputs(<liquid:proton_flow>*107,<liquid:neutrons_flow>*163,<liquid:uu_matter>*2700).fluidOutputs(<liquid:bohrium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:hassium>*1000).fluidInputs(<liquid:proton_flow>*108,<liquid:neutrons_flow>*169,<liquid:uu_matter>*2770).fluidOutputs(<liquid:hassium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:meitnerium>*1000).fluidInputs(<liquid:proton_flow>*109,<liquid:neutrons_flow>*167,<liquid:uu_matter>*2760).fluidOutputs(<liquid:meitnerium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:darmstadtium>*1000).fluidInputs(<liquid:proton_flow>*110,<liquid:neutrons_flow>*171,<liquid:uu_matter>*2810).fluidOutputs(<liquid:darmstadtium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:roentgenium>*1000).fluidInputs(<liquid:proton_flow>*111,<liquid:neutrons_flow>*169,<liquid:uu_matter>*2800).fluidOutputs(<liquid:roentgenium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:copernicium>*1000).fluidInputs(<liquid:proton_flow>*112,<liquid:neutrons_flow>*173,<liquid:uu_matter>*2850).fluidOutputs(<liquid:copernicium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:nihonium>*1000).fluidInputs(<liquid:proton_flow>*113,<liquid:neutrons_flow>*171,<liquid:uu_matter>*2840).fluidOutputs(<liquid:nihonium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:flerovium>*1000).fluidInputs(<liquid:proton_flow>*114,<liquid:neutrons_flow>*175,<liquid:uu_matter>*2890).fluidOutputs(<liquid:flerovium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:moscovium>*1000).fluidInputs(<liquid:proton_flow>*115,<liquid:neutrons_flow>*173,<liquid:uu_matter>*2880).fluidOutputs(<liquid:moscovium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:livermorium>*1000).fluidInputs(<liquid:proton_flow>*116,<liquid:neutrons_flow>*177,<liquid:uu_matter>*2930).fluidOutputs(<liquid:livermorium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:tennessine>*1000).fluidInputs(<liquid:proton_flow>*117,<liquid:neutrons_flow>*177,<liquid:uu_matter>*2940).fluidOutputs(<liquid:tennessine>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:oganesson>*1000).fluidInputs(<liquid:proton_flow>*118,<liquid:neutrons_flow>*176,<liquid:uu_matter>*2940).fluidOutputs(<liquid:oganesson>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:tritanium>*1000).fluidInputs(<liquid:proton_flow>*119,<liquid:neutrons_flow>*178,<liquid:uu_matter>*2970).fluidOutputs(<liquid:tritanium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:duranium>*1000).fluidInputs(<liquid:proton_flow>*120,<liquid:neutrons_flow>*180,<liquid:uu_matter>*3000).fluidOutputs(<liquid:duranium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:trinium>*1000).fluidInputs(<liquid:proton_flow>*125,<liquid:neutrons_flow>*198,<liquid:uu_matter>*3230).fluidOutputs(<liquid:trinium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:naquadah>*1000).fluidInputs(<liquid:proton_flow>*174,<liquid:neutrons_flow>*352,<liquid:uu_matter>*5260).fluidOutputs(<liquid:naquadah>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:naquadahenriched>*1000).fluidInputs(<liquid:proton_flow>*174,<liquid:neutrons_flow>*354,<liquid:uu_matter>*5280).fluidOutputs(<liquid:naquadahenriched>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:naquadria>*1000).fluidInputs(<liquid:proton_flow>*174,<liquid:neutrons_flow>*348,<liquid:uu_matter>*5220).fluidOutputs(<liquid:naquadria>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:neutronium>*1000).fluidInputs(<liquid:proton_flow>*0,<liquid:neutrons_flow>*1000,<liquid:uu_matter>*10000).fluidOutputs(<liquid:neutronium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:adamantium>*1000).fluidInputs(<liquid:proton_flow>*750,<liquid:neutrons_flow>*1000,<liquid:uu_matter>*17500).fluidOutputs(<liquid:adamantium>*1000).buildAndRegister();
coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:vibranium>*1000).fluidInputs(<liquid:proton_flow>*850,<liquid:neutrons_flow>*900,<liquid:uu_matter>*17500).fluidOutputs(<liquid:vibranium>*1000).buildAndRegister();
//coper.recipeBuilder().duration(200).EUt(7864320).notConsumable(<liquid:taranium>*1000).fluidInputs(<liquid:proton_flow>*550,<liquid:neutrons_flow>*670,<liquid:uu_matter>*12200).fluidOutputs(<liquid:taranium>*1000).buildAndRegister();
