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
 
global large_hadron_collider as RecipeMap = FactoryRecipeMap.start("large_hadron_collider")
    .maxInputs(3)
	.maxOutputs(3)
    .maxFluidInputs(3)
    .maxFluidOutputs(3)
    .build();
 
Builder.start("large_hadron_collider", 32002)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("                              A   A                              ", "                              AAAAA                              ", "                              AAAAA                              ", "                              A   A                              ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ")
            .aisle("                                                                 ", "                              AGGGA                              ", "                              AGGGA                              ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ")
            .aisle("                                                                 ", "                              AGGGA                              ", "                              AGGGA                              ", "                               KKK                               ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ")
            .aisle("                              A   A                              ", "                              AGGGA                              ", "                              AZZZA                              ", "                              AZZZA                              ", "                              ZZZZZ                              ", "                              ZZZZZ                              ", "                              ZZZZZ                              ", "                                                                 ", "                                                                 ")
            .aisle("KAAAAAK                       K   K                       KAAAAAK", "KAZZZAKK                      KGGGK                      KKAZZZAK", " AZZZA KK                     KZZZK                     KK AZZZA ", "  AAAA  KK                    ZKKKZ                    KK  AAAA  ", "    KK   KK        KJKJKJKJKJZK   KZJKJKJKJKJK        KK   KK    ", "     KKKKKKKKKKKKKKKJKJKJKJKJZK K KZJKJKJKJKJKKKKKKKKKKKKKKK     ", "                   KJKJKJKJKJZK   KZJKJKJKJKJK                   ", "                              ZZZZZ                              ", "                               ZZZ                               ")
            .aisle("AAAAAA                                                     AAAAAA", "AAJJKA                                                     AKJJAA", "KAJJKA                        ZZZZZ                        AKJJAK", " AAAAAA            KJKJKJKJKJZK   KZJKJKJKJKJK            AAAAAA ", "   AAAAAALLLLLLLLLLJ                         JLLLLLLLLLLAAAAAA   ", "    AAAAKJKJKJKJKJKJ          K K K          JKJKJKJKJKJKAAAA    ", "     KLLLLLLLLLLLLLJ                         JLLLLLLLLLLLLLK     ", "                   KJKJKJKJKJZK   KZJKJKJKJKJK                   ", "                              ZZZZZ                              ")
            .aisle("AAAAAA                                                     AAAAAA", "ADDDKA                                                     AKDDDA", "KADDKA                        ZZZZZ                        AKDDAK", " ADDKAAKKKKKKKKKKKKKJKJKJKJKJZK K KZJKJKJKJKJKKKKKKKKKKKKKAAKDDA ", "  ADDAAAAJKJKJKJKJKJ          K K K          JKJKJKJKJKJAAAADDA  ", "   ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDA   ", "    AAAAAJKJKJKJKJKJ          K K K          JKJKJKJKJKJAAAAA    ", "     KKKKKKKKKKKKKKKJKJKJKJKJZK K KZJKJKJKJKJKKKKKKKKKKKKKKK     ", "                              ZZZZZ                              ")
            .aisle("AAAAAA                                                     AAAAAA", "AAJJKA                                                     AKJJAA", "KAJJKA                        ZZZZZ                        AKJJAK", " AAAAAA            KJKJKJKJKJZK   KZJKJKJKJKJK            AAAAAA ", "   AAAAAALLLLLLLLLLJ                         JLLLLLLLLLLAAAAAA   ", "    AAAAKJKJKJKJKJKJ          K K K          JKJKJKJKJKJKAAAA    ", "     KLLLLLLLLLLLLLJ                         JLLLLLLLLLLLLLK     ", "                   KJKJKJKJKJZK   KZJKJKJKJKJK                   ", "                              ZZZZZ                              ")
            .aisle("KAAAAAK                       K   K                       KAAAAAK", "KAZZZAKK                      KGGGK                      KKAZZZAK", " AZZZA KK                     KZZZK                     KK AZZZA ", "  AAAA  KK                    ZKKKZ                    KK  AAAA  ", "    KK   KK        KJKJKJKJKJZK   KZJKJKJKJKJK        KK   KK    ", "     KKKKKKKKKKKKKKKJKJKJKJKJZK K KZJKJKJKJKJKKKKKKKKKKKKKKK     ", "                   KJKJKJKJKJZK   KZJKJKJKJKJK                   ", "                              ZZZZZ                              ", "                               ZZZ                               ")
            .aisle("                              A   A                              ", "                              AGGGA                              ", "                              AZZZA                              ", "                              AZZZA                              ", "                              ZZZZZ                              ", "                              ZZZZZ                              ", "                              ZZZZZ                              ", "                                                                 ", "                                                                 ")
            .aisle("                                                                 ", "                              AGGGA                              ", "                              AGGGA                              ", "                               KKK                               ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ")
            .aisle("                                                                 ", "                              AGGGA                              ", "                              AGGGA                              ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ")
            .aisle("                              A   A                              ", "                              AACAA                              ", "                              AAAAA                              ", "                              A   A                              ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ", "                                                                 ")
            .where("C", controller.self())
            .where("K", <metastate:gregtech:meta_block_frame_2010:4>)
            .where("G", <metastate:contenttweaker:berylliumdetector>)
            .where("Z", <metastate:contenttweaker:stella_anvil_module>)
            .where("J", <metastate:contenttweaker:advanced_electromagnetic_acceleration_pipe_box>)
            .where("D", <metastate:contenttweaker:neutron_tube_casing>)
            .where("L", <metastate:contenttweaker:accelerator_force_field_containment_mechanical_block>)
            .where("A", CTPredicate.states(<metastate:contenttweaker:indestructible_casing>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
            )
            .where(" ", CTPredicate.getAir())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(large_hadron_collider)
    .withBaseTexture(<metastate:contenttweaker:indestructible_casing>)
    .buildAndRegister();
