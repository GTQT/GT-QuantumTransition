#loader contenttweaker

#modloaded tconstruct

#priority 202

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityMob;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import crafttweaker.world.IBlockPos;
import crafttweaker.item.WeightedItemStack;

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;
import mods.contenttweaker.tconstruct.TraitBuilder;

val attacked = TraitBuilder.create("attacked");
attacked.color = Color.fromHex("e53935").getIntColor(); 
attacked.localizedName = "最后一击";
attacked.localizedDescription = (
    "§o斩杀！§r\n" +
    "§f当敌方生命值低于10%时直接斩杀对手。");
attacked.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if(isNull(target) || !target instanceof IEntityLivingBase || !attacker instanceof IPlayer || damage < 0.1) {
        return;
    }
    var player as IPlayer = attacker;
    var threshold as float = 0.1f;
    if(target.isBoss) {
        threshold = 0.1f;
    }
    if((target.health as float / target.maxHealth as float) as float < threshold) {
        var source as IDamageSource = IDamageSource.createPlayerDamage(player);
        source.setDamageIsAbsolute();
        target.attackEntityFrom(source, 2147483647.0f);
    }
};
attacked.register();

val gambling = TraitBuilder.create("gambling");
gambling.color = Color.fromHex("ffa000").getIntColor(); 
gambling.localizedName = "赌博";
gambling.localizedDescription = (
    "§o是你给最后一击还是敌人给你最后一击？§r\n" +
    "§f你的武器有15%概率打出双倍伤害，还有30%打出二分之一的伤害");
gambling.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(!(Math.random() as double > 0.15)) {
        return newDamage * 2 as float; 
    }
    if(!(Math.random() as double > 0.30)) {
        return newDamage * 0.5 as float; 
    }
    return newDamage;
};
gambling.register();

val exppowerful = TraitBuilder.create("exppowerful");
exppowerful.color = Color.fromHex("76ff03").getIntColor(); 
exppowerful.localizedName = "EXP的力量";
exppowerful.localizedDescription = (
    "§o知识带给我力量！§r\n" +
    "§f根据攻击者的经验等级提升伤害。每一级提供额外的0.2%伤害，最高300级。");
exppowerful.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(attacker instanceof IPlayer) {
        var player as IPlayer = attacker;
        var xpLevel = player.xp;
        if(xpLevel > 300) {
            xpLevel = 300;
        }
        return newDamage as float * (1.0 as float + xpLevel as float * 0.002 as float) as float;
    }
    return newDamage;
};
exppowerful.register();