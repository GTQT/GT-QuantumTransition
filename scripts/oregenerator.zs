#loader gregtech

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.material.Material;
import mods.gregtech.ore.OrePrefix;
import mods.gregtech.StoneType;

MaterialBuilder(32050, "moon_stone").dust().color(0x636362).build();
val oreMoonStone as OrePrefix = OrePrefix.registerOrePrefix("oreMoonStone", 1);
oreMoonStone.addSecondaryMaterial(<material:moon_stone>, 1);
StoneType.create(16, "moon_stone", "oreMoonStone", <material:moon_stone>, "galacticraftcore:basic_block_moon:basictypemoon=moon_stone");

MaterialBuilder(32051, "mars_stone").dust().color(0x341001).build();
val oreMarsStone as OrePrefix = OrePrefix.registerOrePrefix("oreMarsStone", 1);
oreMarsStone.addSecondaryMaterial(<material:mars_stone>, 1);
StoneType.create(17, "mars_stone", "oreMarsStone", <material:mars_stone>, "galacticraftplanets:mars:basictypemars=mars_stone");

MaterialBuilder(32052, "venus_stone").dust().color(0x3f3530).build();
val oreVenusStone as OrePrefix = OrePrefix.registerOrePrefix("oreVenusStone", 1);
oreVenusStone.addSecondaryMaterial(<material:venus_stone>, 1);
StoneType.create(18, "venus_stone", "oreVenusStone", <material:venus_stone>, "galacticraftplanets:venus:basictypevenus=venus_rock_1");

MaterialBuilder(32053, "asteroids_stone").dust().color(0x3f3530).build();
val oreAsteroidsStone as OrePrefix = OrePrefix.registerOrePrefix("oreAsteroidsStone", 1);
oreAsteroidsStone.addSecondaryMaterial(<material:asteroids_stone>, 1);
StoneType.create(19, "asteroids_stone", "oreAsteroidsStone", <material:asteroids_stone>, "galacticraftplanets:asteroids_block:basictypeasteroids=asteroid_rock_1");

MaterialBuilder(32054, "mercury_stone").dust().color(0x636362).build();
val oreMercuryStone as OrePrefix = OrePrefix.registerOrePrefix("oreMercuryStone", 1);
oreMercuryStone.addSecondaryMaterial(<material:mercury_stone>, 1);
StoneType.create(20, "mercury_stone", "oreMercuryStone", <material:mercury_stone>, "extraplanets:mercury:basictypemercury=mercury_stone");

MaterialBuilder(32055, "ceres_stone").dust().color(0x636362).build();
val oreCeresStone as OrePrefix = OrePrefix.registerOrePrefix("oreCeresStone", 1);
oreCeresStone.addSecondaryMaterial(<material:ceres_stone>, 1);
StoneType.create(21, "ceres_stone", "oreCeresStone", <material:ceres_stone>, "extraplanets:ceres:basictypeceres=ceres_stone");

MaterialBuilder(32056, "jupiter_stone").dust().color(0x636362).build();
val oreJupiterStone as OrePrefix = OrePrefix.registerOrePrefix("oreJupiterStone", 1);
oreJupiterStone.addSecondaryMaterial(<material:jupiter_stone>, 1);
StoneType.create(22, "jupiter_stone", "oreJupiterStone", <material:jupiter_stone>, "extraplanets:jupiter:basictypejupiter=jupiter_stone");

MaterialBuilder(32057, "saturn_stone").dust().color(0x636362).build();
val oreSaturnStone as OrePrefix = OrePrefix.registerOrePrefix("oreSaturnStone", 1);
oreSaturnStone.addSecondaryMaterial(<material:saturn_stone>, 1);
StoneType.create(23, "saturn_stone", "oreSaturnStone", <material:saturn_stone>, "extraplanets:saturn:basictypesaturn=saturn_stone");

MaterialBuilder(32058, "uranus_stone").dust().color(0x636362).build();
val oreUranusStone as OrePrefix = OrePrefix.registerOrePrefix("oreUranusStone", 1);
oreUranusStone.addSecondaryMaterial(<material:uranus_stone>, 1);
StoneType.create(24, "uranus_stone", "oreUranusStone", <material:uranus_stone>, "extraplanets:uranus:basictypeuranus=uranus_stone");

MaterialBuilder(32059, "neptune_stone").dust().color(0x636362).build();
val oreNeptuneStone as OrePrefix = OrePrefix.registerOrePrefix("oreNeptuneStone", 1);
oreNeptuneStone.addSecondaryMaterial(<material:neptune_stone>, 1);
StoneType.create(25, "neptune_stone", "oreNeptuneStone", <material:neptune_stone>, "extraplanets:neptune:basictypeneptune=neptune_stone");

MaterialBuilder(32060, "pluto_stone").dust().color(0x636362).build();
val orePlutoStone as OrePrefix = OrePrefix.registerOrePrefix("orePlutoStone", 1);
orePlutoStone.addSecondaryMaterial(<material:pluto_stone>, 1);
StoneType.create(26, "pluto_stone", "orePlutoStone", <material:pluto_stone>, "extraplanets:pluto:basictypepluto=pluto_stone");

MaterialBuilder(32061, "eris_stone").dust().color(0x636362).build();
val oreErisStone as OrePrefix = OrePrefix.registerOrePrefix("oreErisStone", 1);
oreErisStone.addSecondaryMaterial(<material:eris_stone>, 1);
StoneType.create(27, "eris_stone", "oreErisStone", <material:eris_stone>, "extraplanets:eris:basictypeeris=eris_stone");

MaterialBuilder(32062, "europa_stone").dust().color(0x636362).build();
val oreEuropaStone as OrePrefix = OrePrefix.registerOrePrefix("oreEuropaStone", 1);
oreEuropaStone.addSecondaryMaterial(<material:europa_stone>, 1);
StoneType.create(28, "europa_stone", "oreEuropaStone", <material:europa_stone>, "extraplanets:europa:basictypeeuropa=europa_stone");

MaterialBuilder(32063, "iapetus_stone").dust().color(0x636362).build();
val oreIapetusStone as OrePrefix = OrePrefix.registerOrePrefix("oreIapetusStone", 1);
oreIapetusStone.addSecondaryMaterial(<material:iapetus_stone>, 1);
StoneType.create(29, "iapetus_stone", "oreIapetusStone", <material:iapetus_stone>, "extraplanets:iapetus:basictypeiapetus=iapetus_stone");

MaterialBuilder(32064, "titania_stone").dust().color(0x636362).build();
val oreTitaniaStone as OrePrefix = OrePrefix.registerOrePrefix("oreTitaniaStone", 1);
oreTitaniaStone.addSecondaryMaterial(<material:titania_stone>, 1);
StoneType.create(30, "titania_stone", "oreTitaniaStone", <material:titania_stone>, "extraplanets:titania:basictypetitania=titania_stone");

MaterialBuilder(32065, "oberon_stone").dust().color(0x636362).build();
val oreOberonStone as OrePrefix = OrePrefix.registerOrePrefix("oreOberonStone", 1);
oreOberonStone.addSecondaryMaterial(<material:oberon_stone>, 1);
StoneType.create(31, "oberon_stone", "oreOberonStone", <material:oberon_stone>, "extraplanets:oberon:basictypeoberon=oberon_stone");

MaterialBuilder(32066, "titan_stone").dust().color(0x636362).build();
val oreTitanStone as OrePrefix = OrePrefix.registerOrePrefix("oreTitanStone", 1);
oreTitanStone.addSecondaryMaterial(<material:titan_stone>, 1);
StoneType.create(32, "titan_stone", "oreTitanStone", <material:titan_stone>, "extraplanets:titan:basictypetitan=titan_stone");

MaterialBuilder(32067, "rhea_stone").dust().color(0x636362).build();
val oreRheaStone as OrePrefix = OrePrefix.registerOrePrefix("oreRheaStone", 1);
oreRheaStone.addSecondaryMaterial(<material:rhea_stone>, 1);
StoneType.create(33, "rhea_stone", "oreRheaStone", <material:rhea_stone>, "extraplanets:rhea:basictyperhea=rhea_stone");

MaterialBuilder(32068, "ganymede_stone").dust().color(0x636362).build();
val oreGanymedeStone as OrePrefix = OrePrefix.registerOrePrefix("oreGanymedeStone", 1);
oreGanymedeStone.addSecondaryMaterial(<material:ganymede_stone>, 1);
StoneType.create(34, "ganymede_stone", "oreGanymedeStone", <material:ganymede_stone>, "extraplanets:ganymede:basictypeganymede=ganymede_stone");

MaterialBuilder(32069, "callisto_stone").dust().color(0x636362).build();
val oreCallistoStone as OrePrefix = OrePrefix.registerOrePrefix("oreCallistoStone", 1);
oreCallistoStone.addSecondaryMaterial(<material:callisto_stone>, 1);
StoneType.create(35, "callisto_stone", "oreCallistoStone", <material:callisto_stone>, "extraplanets:callisto:basictypecallisto=callisto_stone");

MaterialBuilder(32070, "triton_stone").dust().color(0x636362).build();
val oreTritonStone as OrePrefix = OrePrefix.registerOrePrefix("oreTritonStone", 1);
oreTritonStone.addSecondaryMaterial(<material:triton_stone>, 1);
StoneType.create(36, "triton_stone", "oreTritonStone", <material:triton_stone>, "extraplanets:triton:basictypetriton=triton_stone");

MaterialBuilder(32071, "phobos_stone").dust().color(0x636362).build();
val orePhobosStone as OrePrefix = OrePrefix.registerOrePrefix("orePhobosStone", 1);
orePhobosStone.addSecondaryMaterial(<material:phobos_stone>, 1);
StoneType.create(37, "phobos_stone", "orePhobosStone", <material:phobos_stone>, "extraplanets:phobos:basictypephobos=phobos_stone");

MaterialBuilder(32072, "deimos_stone").dust().color(0x636362).build();
val oreDeimosStone as OrePrefix = OrePrefix.registerOrePrefix("oreDeimosStone", 1);
oreDeimosStone.addSecondaryMaterial(<material:deimos_stone>, 1);
StoneType.create(38, "deimos_stone", "oreDeimosStone", <material:deimos_stone>, "extraplanets:deimos:basictypedeimos=deimos_stone");

MaterialBuilder(32073, "io_stone").dust().color(0x636362).build();
val oreIoStone as OrePrefix = OrePrefix.registerOrePrefix("oreIoStone", 1);
oreIoStone.addSecondaryMaterial(<material:io_stone>, 1);
StoneType.create(39, "io_stone", "oreIoStone", <material:io_stone>, "extraplanets:io:basictypeio=io_stone");

