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
 
global space_mining_machine_launch_station as RecipeMap = FactoryRecipeMap.start("space_mining_machine_launch_station_controller")
    .maxInputs(4)
    .maxOutputs(30)
	.maxFluidInputs(2)
	.maxFluidOutputs(4)
    .build();
Builder.start("space_mining_machine_launch_station", 32026)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
         return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "               FF FF               ",
            "               AAAAA               ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ", 
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "               D   D               ",
            "            FFFFF FFFFF            ",
            "            AAAAAAAAAAA            ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "            DDDDE EDDDD            ",
            "          FFFFFFF FFFFFFF          ",
            "          AAAAAAAAAAAAAAA          ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "          DD   DE ED   DD          ",
            "         FFFFFFD   DFFFFFF         ",
            "        AAAAAAAAAAAAAAAAAAA        ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               D   D               ",
            "         FFF           FFF         ",
            "       AAAAAAAAAAAAAAAAAAAAA       ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "                                   ",
            "      AAAAAAAAAAAAAAAAAAAAAAA      ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "                                   ",
            "                                   ",
            "     AAAAAAAAAAAAAAAAAAAAAAAAA     ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "              HDE EDH              ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "    AAAAAAAAAAAAAAAAAAAAAAAAAAA    ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "            HH DE ED HH            ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "               X X X               ",
            "               X X X               ",
            "               X X X               ",
            "               X X X               ",
            "   AAAAAAAAAAAAX X XAAAAAAAAAAAA   ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "         E               E         ",
            "         EHH           HHE         ",
            "         E               E         ",
            "         E               E         ",
            "         E               E         ",
            "         E               E         ",
            "         E     X X X     E         ",
            "         E     I I I     E         ",
            "         E     X X X     E         ",
            "   FF    E     X X X     E    FF   ",
            "   AAAAAAAAAAAAX X XAAAAAAAAAAAA   ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "          E             E          ",
            "          E             E          ",
            "          E             E          ",
            "          E             E          ",
            "          E             E          ",
            "         HE             EH         ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "   D                           D   ",
            "  FFF          F F F          FFF  ",
            "  AAAAAAAAAAAAA     AAAAAAAAAAAAA  ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "                                   ",
            "           E           E           ",
            "           E           E           ",
            "           E           E           ",
            "           E           E           ",
            "           E           E           ",
            "                                   ",
            "                                   ",
            "         H               H         ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "   D                           D   ",
            "  FFF          F F F          FFF  ",
            "  AAAAAAAAAAAAA     AAAAAAAAAAAAA  ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "             HH     HH             ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "        H                 H        ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "  D                             D  ",
            " FFF          FFFFFFF          FFF ",
            " AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                FFF                ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "             E       E             ",
            "             E       E             ",
            "             E       E             ",
            "             E       E             ",
            "             E       E             ",
            "             E       E             ",
            "             E       E             ",
            "            HE       EH            ",
            "             E       E             ",
            "             E       E             ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "        H                 H        ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "  D                             D  ",
            " FFF         FFFFFFFFF         FFF ",
            " AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ")
        .aisle(
            "                FFF                ",
            "                 E                 ",
            "                 E                 ",
            "                 E                 ",
            "                 E                 ",
            "                 E                 ",
            "               F   F               ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "                                   ",
            "                                   ",
            "                FFF                ",
            "                                   ",
            "                                   ",
            "            H         H            ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                FFF                ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "       H                   H       ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                XXX                ",
            "                X~X                ",
            "  D             XXX             D  ",
            " FFF        FFFFFFFFFFF        FFF ",
            " AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ")
        .aisle(
            "               F D F               ",
            "                 D                 ",
            "                 D                 ",
            "                 D                 ",
            "                 D                 ",
            "                 D                 ",
            "              F  D  F              ",
            "                 D                 ",
            "            D    D    D            ",
            "            D    D    D            ",
            "            D    D    D            ",
            "            D    D    D            ",
            "            D    D    D            ",
            "            D    D    D            ",
            "            D    D    D            ",
            "           DD    D    DD           ",
            "           D     D     D           ",
            "           D     D     D           ",
            "           D   F D F   D           ",
            "           D     C     D           ",
            "           D     C     D           ",
            "           D     C     D           ",
            "           D     C     D           ",
            "          DD     C     DD          ",
            "          D      C      D          ",
            "          D      C      D          ",
            "          D      C      D          ",
            "         DD      C      DD         ",
            "         D     FDCDF     D         ",
            "         D      DCD      D         ",
            "        DD      DCD      DD        ",
            "        D       DCD       D        ",
            "        D       DCD       D        ",
            "       DD      DDCDD      DD       ",
            "       D       D C D       D       ",
            "       D       D C D       D       ",
            "      DD       D C D       DD      ",
            "      D        D C D        D      ",
            "     DD XX     XDCDX     XX DD     ",
            "    DD  XI     XDCDX     IX  DD    ",
            " DDDD   XX     XDCDX     XX   DDDD ",
            "FFFD    XXFFFFFDDDDDFFFFFXX    DFFF",
            "AAAAAAAAXX  AAAXXXXXAAA  XXAAAAAAAA")
        .aisle(
            "              F     F              ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "             F       F             ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "           EE         EE           ",
            "           EE         EE           ",
            "           E           E           ",
            "           E           E           ",
            "           E  F     F  E           ",
            "           E           E           ",
            "           E           E           ",
            "           E           E           ",
            "          EE           EE          ",
            "          EE           EE          ",
            "          E             E          ",
            "          E             E          ",
            "         EE             EE         ",
            "         EE             EE         ",
            "         E    FD   DF    E         ",
            "        EE     D   D     EE        ",
            "        EE     D   D     EE        ",
            "        E      D   D      E        ",
            "       EE      D   D      EE       ",
            "       EE      D   D      EE       ",
            "       E                   E       ",
            "      EE                   EE      ",
            "      EE                   EE      ",
            "     EE                     EE     ",
            "    EEE       XD   DX       EEE    ",
            "   EEE        XD   DX        EEE   ",
            "  EE          XD   DX          EE  ",
            "FFF         FFFDDDDDFFF         FFF",
            "AAAAAAAA    AAAXXXXXAAA    AAAAAAAA")
        .aisle(
            "              FD   DF              ",
            "              ED   DE              ",
            "              ED   DE              ",
            "              ED   DE              ",
            "              ED   DE              ",
            "              ED   DE              ",
            "             F D   D F             ",
            "               D   D               ",
            "               D   D               ",
            "               D   D               ",
            "               D   D               ",
            "               D   D               ",
            "               D   D               ",
            "               D   D               ",
            "               D   D               ",
            "               D   D               ",
            "               D   D               ",
            "               D B D               ",
            "              FD - DF              ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "              FC - CF              ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "               C - C               ",
            "        XX    XC - CX    XX        ",
            "        XI    XC - CX    IX        ",
            "        XX    XC - CX    XX        ",
            "        XXFFFFFDDDDDFFFFFXX        ",
            "AAAAAAAAXX  AAAXXXXXAAA  XXAAAAAAAA")
        .aisle(
            "              F     F              ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "             F       F             ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "           EE         EE           ",
            "           EE         EE           ",
            "           E           E           ",
            "           E           E           ",
            "           E  F     F  E           ",
            "           E           E           ",
            "           E           E           ",
            "           E           E           ",
            "          EE           EE          ",
            "          EE           EE          ",
            "          E             E          ",
            "          E             E          ",
            "         EE             EE         ",
            "         EE             EE         ",
            "         E    FD   DF    E         ",
            "        EE     D   D     EE        ",
            "        EE     D   D     EE        ",
            "        E      D   D      E        ",
            "       EE      D   D      EE       ",
            "       EE      D   D      EE       ",
            "       E                   E       ",
            "      EE                   EE      ",
            "      EE                   EE      ",
            "     EE                     EE     ",
            "    EEE       XD   DX       EEE    ",
            "   EEE        XD   DX        EEE   ",
            "  EE          XD   DX          EE  ",
            "FFF         FFFDDDDDFFF         FFF",
            "AAAAAAAA    AAAXXXXXAAA    AAAAAAAA")
        .aisle(
            "               F D F               ",
            "                 D                 ",
            "                 D                 ",
            "                 D                 ",
            "                 D                 ",
            "                 D                 ",
            "              F  D  F              ",
            "                 D                 ",
            "            D    D    D            ",
            "            D    D    D            ",
            "            D    D    D            ",
            "            D    D    D            ",
            "            D    D    D            ",
            "            D    D    D            ",
            "            D    D    D            ",
            "           DD    D    DD           ",
            "           D     D     D           ",
            "           D     D     D           ",
            "           D   F D F   D           ",
            "           D     C     D           ",
            "           D     C     D           ",
            "           D     C     D           ",
            "           D     C     D           ",
            "          DD     C     DD          ",
            "          D      C      D          ",
            "          D      C      D          ",
            "          D      C      D          ",
            "         DD      C      DD         ",
            "         D     FDCDF     D         ",
            "         D      DCD      D         ",
            "        DD      DCD      DD        ",
            "        D       DCD       D        ",
            "        D       DCD       D        ",
            "       DD      DDCDD      DD       ",
            "       D       D C D       D       ",
            "       D       D C D       D       ",
            "      DD       D C D       DD      ",
            "      D        D C D        D      ",
            "     DD XX     XDCDX     XX DD     ",
            "    DD  XI     XDCDX     IX  DD    ",
            " DDDD   XX     XDCDX     XX   DDDD ",
            "FFFD    XXFFFFFDDDDDFFFFFXX    DFFF",
            "AAAAAAAAXX  AAAXXXXXAAA  XXAAAAAAAA")
        .aisle(
            "                FFF                ",
            "                 E                 ",
            "                 E                 ",
            "                 E                 ",
            "                 E                 ",
            "                 E                 ",
            "               F   F               ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "              E     E              ",
            "                                   ",
            "                                   ",
            "                FFF                ",
            "                                   ",
            "                                   ",
            "            H         H            ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                FFF                ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "       H                   H       ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                XXX                ",
            "                XXX                ",
            "  D             XXX             D  ",
            " FFF        FFFFFFFFFFF        FFF ",
            " AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                FFF                ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "             E       E             ",
            "             E       E             ",
            "             E       E             ",
            "             E       E             ",
            "             E       E             ",
            "             E       E             ",
            "             E       E             ",
            "            HE       EH            ",
            "             E       E             ",
            "             E       E             ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "        H                 H        ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "  D                             D  ",
            " FFF         FFFFFFFFF         FFF ",
            " AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "             HH     HH             ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "            E         E            ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "        H                 H        ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "  D                             D  ",
            " FFF          FFFFFFF          FFF ",
            " AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "                                   ",
            "           E           E           ",
            "           E           E           ",
            "           E           E           ",
            "           E           E           ",
            "           E           E           ",
            "                                   ",
            "                                   ",
            "         H               H         ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "   D                           D   ",
            "  FFF          F F F          FFF  ",
            "  AAAAAAAAAAAAA     AAAAAAAAAAAAA  ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "          E             E          ",
            "          E             E          ",
            "          E             E          ",
            "          E             E          ",
            "          E             E          ",
            "         HE             EH         ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "   D                           D   ",
            "  FFF          F F F          FFF  ",
            "  AAAAAAAAAAAAA     AAAAAAAAAAAAA  ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "         E               E         ",
            "         EHH           HHE         ",
            "         E               E         ",
            "         E               E         ",
            "         E               E         ",
            "         E               E         ",
            "         E     X X X     E         ",
            "         E     I I I     E         ",
            "         E     X X X     E         ",
            "   FF    E     X X X     E    FF   ",
            "   AAAAAAAAAAAAX X XAAAAAAAAAAAA   ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "            HH DE ED HH            ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "               X X X               ",
            "               X X X               ",
            "               X X X               ",
            "               X X X               ",
            "   AAAAAAAAAAAAX X XAAAAAAAAAAAA   ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "              HDE EDH              ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "    AAAAAAAAAAAAAAAAAAAAAAAAAAA    ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "                                   ",
            "                                   ",
            "     AAAAAAAAAAAAAAAAAAAAAAAAA     ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               DE ED               ",
            "                                   ",
            "                                   ",
            "      AAAAAAAAAAAAAAAAAAAAAAA      ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "               DE ED               ",
            "               D   D               ",
            "         FFF           FFF         ",
            "       AAAAAAAAAAAAAAAAAAAAA       ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                E E                ",
            "          DD   DE ED   DD          ",
            "         FFFFFFD   DFFFFFF         ",
            "        AAAAAAAAAAAAAAAAAAA        ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "            DDDDE EDDDD            ",
            "          FFFFFFF FFFFFFF          ",
            "          AAAAAAAAAAAAAAA          ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "               D   D               ",
            "            FFFFF FFFFF            ",
            "            AAAAAAAAAAA            ")
        .aisle(
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "                                   ",
            "               FF FF               ",
            "               AAAAA               ")
            .where("~", controller.self())
		    .where("B", <metastate:gregtech:boiler_casing:3>)
			.where("C", <metastate:gregtech:metal_casing:7>)
			.where("D", <metastate:gregtech:metal_casing:7>)
			.where("H", <metastate:gregtech:meta_block_frame_7:1>)
			.where("I", <metastate:gregtech:meta_block_frame_7:1>)
			.where("E", <metastate:gregtech:light_blue_lamp:0>)
			.where("F", <metastate:gregtech:metal_casing:6>)
			.where("A", <metastate:gregtech:metal_casing:7>)
            .where("X", CTPredicate.states(<metastate:gregtech:metal_casing:7>)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
			    | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(4).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1)
            )
			.where("-",CTPredicate.getAny())
            .where(" ",CTPredicate.getAny())
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(space_mining_machine_launch_station)
    .withBaseTexture(<metastate:gregtech:metal_casing:7>)
    .buildAndRegister();
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder() 
    .inputs(<gregtech:meta_item_1:220>*4,<gregtech:meta_item_1:235>*4,<gregtech:meta_block_frame_7:1>*16,<gregtech:meta_item_1:100>*4,<ore:circuitLuv>*8,<gregtech:meta_item_1:604>*32)
    .fluidInputs(<liquid:reinforced_epoxy_resin>* 5760)
    .outputs(<gregtech:machine:32026>)
	.circuit(3) 
    .duration(6000)
    .EUt(1960)
    .buildAndRegister();
//地球
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:astro_miner>*2)
	.notConsumable(<minecraft:stone>*1)
	.fluidInputs(<liquid:fuelgc>*20)
	.chancedOutput(<gregtech:ore_grossular_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_garnierite_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_coal_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_cinnabar_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_calcite_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_blue_topaz_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_certus_quartz_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_almandine_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_asbestos_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_sapphire_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_saltpeter_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_salt_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_ruby_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_rock_salt_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrolusite_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_lazurite_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnesite_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_green_sapphire_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_gypsum_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_zeolite_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_lapis_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_opal_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_olivine_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_glauconite_sand_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_topaz_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_sodalite_0>, 2500, 100)
	.chancedOutput(<gregtech:ore_redstone_0>, 2500, 100)
	.circuit(1)
	.EUt(960)
    .duration(20) 
    .buildAndRegister(); 
//月球T1
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftcore:rocket_t1>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>)
	.fluidInputs(<liquid:fuelgc>*25)
	.chancedOutput(<gregtech:ore_preciousalloy_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_wulfenite_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_molybdenite_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_powellite_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_certus_quartz_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_bauxite_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_ilmenite_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_aluminium_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_calcium_difluoride_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_tin_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_barite_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_copper_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrite_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_iron_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_chalcopyrite_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_galena_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_silver_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_lead_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_meteoric_iron_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_kyanite_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_mica_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_fullers_earth_1>, 2500, 100)
	.chancedOutput(<gregtech:ore_gypsum_1>, 2500, 100)
	.circuit(2)
	.EUt(960)
    .duration(20) 
    .buildAndRegister(); 
//火卫一
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:rocket_t2>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>*2)
	.fluidInputs(<liquid:fuelgc>*40)
	.chancedOutput(<gregtech:ore_sulfur_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_sphalerite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_tungstate_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_lithium_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_salt_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_tungstate_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_spodumene_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_desh_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_cinnabar_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_nether_quartz_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_certus_quartz_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_pitchblende_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_lead_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_gold_1:1>, 2500, 100)	
	.chancedOutput(<gregtech:ore_silver_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_copper_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_brown_limonite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_yellow_limonite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_banded_iron_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_malachite_1:1>, 2500, 100)
	.circuit(2)
	.EUt(1920)
    .duration(20) 
    .buildAndRegister(); 
//火卫二
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:rocket_t2>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>*2)
	.fluidInputs(<liquid:fuelgc>*40)
	.chancedOutput(<gregtech:ore_tetrahedrite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_iron_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_sphalerite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_tungstate_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_lithium_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_stibnite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_brown_limonite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_lepidolite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_gold_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_arsenopyrite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_desh_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_emerald_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_certus_quartz_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_pitchblende_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_uraninite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_copper_1:1>, 2500, 100)	
	.chancedOutput(<gregtech:ore_garnierite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_calcium_difluoride_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_cobaltite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_pentlandite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnetite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_vanadium_magnetite_1:1>, 2500, 100)
	.circuit(3)
	.EUt(1920)
    .duration(20) 
    .buildAndRegister(); 
//火星T2
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:rocket_t2>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>*2)
	.fluidInputs(<liquid:fuelgc>*40)
	.chancedOutput(<gregtech:ore_sulfur_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_sphalerite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_tungstate_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_lithium_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_rock_salt_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_salt_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_lepidolite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_spodumene_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_redstone_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_cinnabar_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_nether_quartz_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_certus_quartz_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_pitchblende_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_uraninite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_gold_1:1>, 2500, 100)	
	.chancedOutput(<gregtech:ore_garnierite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_nickel_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_cobaltite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_pentlandite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnetite_1:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_vanadium_magnetite_1:1>, 2500, 100)
	.circuit(1)
	.EUt(1920)
    .duration(20) 
    .buildAndRegister(); 
	
//金星T3
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:rocket_t3>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>*4)
	.fluidInputs(<liquid:fuelgc>*100)
	.chancedOutput(<gregtech:ore_nether_quartz_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_barite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_certus_quartz_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_pitchblende_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_uraninite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_palladium_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_garnierite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_cobaltite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_pentlandite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_plutonium_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_bastnasite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_monazite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_neodymium_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_galena_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_dragon_essence_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_amethyst_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_brookite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_ardite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_stibnite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_sphalerite_1:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_bauxite_1:2>, 2500, 100)
	.circuit(1)
	.EUt(3840)
    .duration(20) 
    .buildAndRegister(); 
//水星T3
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<galacticraftplanets:rocket_t3>)
    .notConsumable(<galacticraftcore:landing_pad>*9)
    .notConsumable(<galacticraftplanets:astro_miner>*4)
	.fluidInputs(<liquid:fuelgc>*100)
	.chancedOutput(<gregtech:ore_pitchblende_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_tungstate_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_molybdenite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_brookite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_quartzite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_barite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnesite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_soapstone_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_olivine_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_tantalite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrochlore_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_nickel_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_cobaltite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_nether_star_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_dragon_essence_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_vanadium_magnetite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_iridosmine_8020_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnetite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_apatite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_chalcopyrite_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_iron_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_copper_1:4>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_1:4>, 2500, 100)
	.circuit(2)
	.EUt(3840)
    .duration(20) 
    .buildAndRegister(); 
//木星T4
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier4_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*8)
	.fluidInputs(<liquid:fuelgc>*400)	
	.chancedOutput(<gregtech:ore_nether_star_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_platinum_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_chromite_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_cooperite_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_palladium_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrolusite_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_platinum_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_thorium_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_uraninite_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_pyrite_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_chalcopyrite_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrolusite_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_tungstate_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_ilmenite_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_pollucite_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_bastnasite_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_iridosmine_8020_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_1:6>, 2500, 100)	
	.chancedOutput(<gregtech:ore_sulfur_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_opal_1:6>, 4000, 100)
	.chancedOutput(<gregtech:ore_chalcopyrite_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_iron_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_copper_1:6>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_1:6>, 2500, 100)
	.circuit(1)
	.EUt(15360)
    .duration(20) 
    .buildAndRegister(); 
//木卫一T4
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier4_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*8)
	.fluidInputs(<liquid:fuelgc>*400)	
	.chancedOutput(<gregtech:ore_aluminium_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnetite_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_cooperite_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_sand_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_platinum_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_palladium_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_monazite_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_fullers_earth_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_spessartine_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_plutonium_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_molybdenum_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_nickel_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_chalcopyrite_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrolusite_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_tungstate_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_ilmenite_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_pollucite_2:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_bastnasite_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_iridosmine_8020_2:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_2:7>, 2500, 100)
	.circuit(2)
	.EUt(15360)
    .duration(20) 
    .buildAndRegister(); 
//木卫二T4
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier4_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*8)
	.fluidInputs(<liquid:fuelgc>*400)	
	.chancedOutput(<gregtech:ore_aluminium_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnetite_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_cooperite_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_sand_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_platinum_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_palladium_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_monazite_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_fullers_earth_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_spessartine_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_plutonium_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_molybdenum_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_nickel_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_chalcopyrite_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrolusite_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_tungstate_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_pollucite_1:12>, 4000, 100)
	.chancedOutput(<gregtech:ore_bastnasite_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_iridosmine_8020_1:12>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_1:12>, 2500, 100)
	.circuit(3)
	.EUt(15360)
    .duration(20) 
    .buildAndRegister(); 
//木卫三T4
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier4_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*8)
	.fluidInputs(<liquid:fuelgc>*400)	
	.chancedOutput(<gregtech:ore_aluminium_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_magnetite_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_cooperite_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_cassiterite_sand_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_platinum_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_palladium_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_monazite_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_fullers_earth_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_spessartine_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_plutonium_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_chalcopyrite_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrolusite_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_tungstate_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_ilmenite_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_pollucite_2:2>, 4000, 100)
	.chancedOutput(<gregtech:ore_bastnasite_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_iridosmine_8020_2:2>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_2:2>, 2500, 100)
	.circuit(4)
	.EUt(15360)
    .duration(20) 
    .buildAndRegister(); 
//木卫四T4
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier4_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*8)
	.fluidInputs(<liquid:fuelgc>*400)	
	.chancedOutput(<gregtech:ore_aluminium_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnetite_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_cooperite_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_preciousalloy_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_sand_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_platinum_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_palladium_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_scheelite_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_monazite_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_fullers_earth_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_spessartine_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_molybdenum_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_nickel_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_chalcopyrite_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_naquadah_mix_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_molybdenum_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_pyrolusite_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_tungstate_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_ilmenite_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_pollucite_2:3>, 4000, 100)
	.chancedOutput(<gregtech:ore_bastnasite_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_iridosmine_8020_2:3>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_2:3>, 2500, 100)
	.circuit(5)
	.EUt(15360)
    .duration(20) 
    .buildAndRegister(); 

//土星T5
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier5_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*16)
	.fluidInputs(<liquid:fuelgc>*800)	
	.chancedOutput(<gregtech:ore_naquadah_mix_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnetite_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_vanadium_magnetite_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_gold_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_ilmenite_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_platinum_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_graphite_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_diamond_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_dragon_essence_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_electrotine_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_opal_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_spessartine_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_desh_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_beryllium_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_emerald_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_thorium_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_stibnite_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_arsenopyrite_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_vanadium_magnetite_1:7>, 4000, 100)
	.chancedOutput(<gregtech:ore_bauxite_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_iridosmine_8020_1:7>, 2500, 100)
	.chancedOutput(<gregtech:ore_cinnabar_1:7>, 2500, 100)
	.circuit(1)
	.EUt(61440)
    .duration(20) 
    .buildAndRegister(); 
//土卫五T5
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier5_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*16)
	.fluidInputs(<liquid:fuelgc>*800)	
	.chancedOutput(<gregtech:ore_naquadah_mix_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnetite_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_vanadium_magnetite_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_gold_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_ilmenite_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_platinum_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_graphite_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_diamond_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_coal_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_electrotine_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_opal_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_spessartine_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_nether_star_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_beryllium_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_emerald_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_dragon_essence_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_stibnite_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_arsenopyrite_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_vanadium_magnetite_2:1>, 4000, 100)
	.chancedOutput(<gregtech:ore_bauxite_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_iridosmine_8020_2:1>, 2500, 100)
	.chancedOutput(<gregtech:ore_cinnabar_2:1>, 2500, 100)
	.circuit(2)
	.EUt(61440)
    .duration(20) 
    .buildAndRegister(); 
//土卫六T5
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier5_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*16)
	.fluidInputs(<liquid:fuelgc>*800)	
	.chancedOutput(<gregtech:ore_naquadah_mix_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnetite_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_vanadium_magnetite_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_gold_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_ilmenite_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_platinum_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_graphite_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_diamond_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_dragon_essence_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_electrotine_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_opal_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_spessartine_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_desh_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_beryllium_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_emerald_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_thorium_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_stibnite_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_arsenopyrite_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_vanadium_magnetite_2:0>, 4000, 100)
	.chancedOutput(<gregtech:ore_bauxite_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_iridosmine_8020_2:0>, 2500, 100)
	.chancedOutput(<gregtech:ore_nether_star_2:0>, 2500, 100)
	.circuit(3)
	.EUt(61440)
    .duration(20) 
    .buildAndRegister(); 
//土卫八T5
space_mining_machine_launch_station.recipeBuilder() 
    .notConsumable(<extraplanets:item_tier5_rocket>)
    .notConsumable(<extraplanets:advanced_launch_pad>*16)
    .notConsumable(<galacticraftplanets:astro_miner>*16)
	.fluidInputs(<liquid:fuelgc>*800)	
	.chancedOutput(<gregtech:ore_naquadah_mix_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_magnetite_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_vanadium_magnetite_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_gold_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_tetrahedrite_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_ilmenite_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_platinum_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_graphite_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_diamond_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_coal_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_electrotine_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_dragon_essence_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_spessartine_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_scheelite_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_desh_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_beryllium_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_emerald_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_thorium_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_nether_star_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_cassiterite_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_arsenopyrite_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_uraninite_1:13>, 4000, 100)
	.chancedOutput(<gregtech:ore_bauxite_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_iridosmine_8020_1:13>, 2500, 100)
	.chancedOutput(<gregtech:ore_pitchblende_1:13>, 2500, 100)
	.circuit(4)
	.EUt(61440)
    .duration(20) 
    .buildAndRegister(); 

//天王星T6
//天卫三T6
//天卫四T6