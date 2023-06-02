//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

#loader contenttweaker

#modloaded tconstruct

#priority 2602
#no_fix_recipe_book

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
import crafttweaker.entity.IEntityXp;
import mods.tconstruct.traits.OnToolDamage;

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;
import mods.contenttweaker.tconstruct.TraitBuilder;

//xiaoyu
val xiaoyuTrait = TraitBuilder.create("xiaoyu");
xiaoyuTrait.color = Color.fromHex("e3e15d").getIntColor(); 
xiaoyuTrait.localizedName = "xiaoyu生产线";
xiaoyuTrait.localizedDescription = "使用这件武器攻击敌人有极小概率掉落xiaoyu纪念品";
xiaoyuTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        if (Math.random() < 0.02) {
            val player as IPlayer = attacker;
            player.give(itemUtils.getItem("contenttweaker:xiaoyu"));
        }
    }
};
xiaoyuTrait.register();

//ximen
val ximenTrait = TraitBuilder.create("ximen");
ximenTrait.color = Color.fromHex("69c9c9").getIntColor(); 
ximenTrait.localizedName = "香香软软小ximen";
ximenTrait.localizedDescription = "使用这件武器攻击敌人有极小概率掉落ximen纪念品";
ximenTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        if (Math.random() < 0.02) {
            val player as IPlayer = attacker;
            player.give(itemUtils.getItem("contenttweaker:ximen"));
        }
    }
};
ximenTrait.register();

//shadow_zl
val shadow_zlTrait = TraitBuilder.create("shadow_zl");
shadow_zlTrait.color = Color.fromHex("ff99ff").getIntColor(); 
shadow_zlTrait.localizedName = "shadow_zl的惊天大坑";
shadow_zlTrait.localizedDescription = "使用这件武器攻击敌人有极小概率掉落shadow_zl纪念品";
shadow_zlTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        if (Math.random() < 0.02) {
            val player as IPlayer = attacker;
            player.give(itemUtils.getItem("contenttweaker:shadow_zl"));
        }
    }
};
shadow_zlTrait.register();

//吸血
val lifestealTrait = TraitBuilder.create("lifesteal");
lifestealTrait.color = Color.fromHex("b71c1c").getIntColor(); 
lifestealTrait.localizedName = "吸血";
lifestealTrait.localizedDescription = "吸取敌人的生命为你回复";
lifestealTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if (attacker instanceof IPlayer && wasHit && target instanceof IEntityMob && !target.isUndead) 
        {
            var heal as float = damageDealt * 0.2f;
            if (heal < 2.0f) {
                heal = 2.0f;
            }
            attacker.heal(heal);
        }
};
lifestealTrait.register();

//知识就是力量
var exp = TraitBuilder.create("exp");
exp.color = Color.fromHex("62de66").getIntColor(); 
exp.localizedName = "知识就是力量";
exp.localizedDescription = "你的等级越高，造成的伤害越高";
exp.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker instanceof IPlayer) {
        val player as IPlayer = attacker;
        var xpLevel = player.xp;
            return newDamage as float* (1.0f + xpLevel as float * 0.0015f) as float;
        }
    return newDamage;
};
exp.register();

//力量
val strengthTrait = TraitBuilder.create("strength");
strengthTrait.color = Color.fromHex("b71c1c").getIntColor(); 
strengthTrait.localizedName = "力量";
strengthTrait.localizedDescription = "你感到浑身充满了力量";
strengthTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if (owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if (isSelected) {
            ownerBase.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(60, 0, false, false));
        } 
    }
};
strengthTrait.register();

//疾风步
val speedTrait = TraitBuilder.create("speed");
speedTrait.color = Color.fromHex("2195f3").getIntColor(); 
speedTrait.localizedName = "疾风步";
speedTrait.localizedDescription = "你感到自己更加轻盈";
speedTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if (owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if (isSelected) {
            ownerBase.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(60, 1, false, false));
        } 
    }
};
speedTrait.register();

//光明之刃
val lightattackTrait = TraitBuilder.create("lightattack");
lightattackTrait.color = Color.fromHex("ffc107").getIntColor(); 
lightattackTrait.localizedName = "光明之刃";
lightattackTrait.localizedDescription = "在亮处能够造成更高的伤害,但在暗处伤害则会降低";
lightattackTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var lightLevel as int = attacker.world.getBlockLight(attacker.position3f as IBlockPos);
    return newDamage * (0.7f + 0.05f * lightLevel) as float;
};
lightattackTrait.register();

//噬主
val healthattackTrait = TraitBuilder.create("healthattack");
healthattackTrait.color = Color.fromHex("720899").getIntColor(); 
healthattackTrait.localizedName = "噬主";
healthattackTrait.localizedDescription ="在暴击时,会扣除你的生命值并大幅度增强这一次伤害,生命值过低时无效";
healthattackTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (isCritical) {
        if(attacker.health >=10){
        var sacrifice as float = attacker.health * 0.2f;
        var source as IDamageSource = crafttweaker.damage.IDamageSource.OUT_OF_WORLD();
        source.setDamageIsAbsolute();
        attacker.attackEntityFrom(source, sacrifice);
        return newDamage + sacrifice * 1.5 as float; 
        }
    }
    return newDamage;
};
healthattackTrait.register();

//命运
val destinyTrait = TraitBuilder.create("destiny");
destinyTrait.color = Color.fromHex("ffa000").getIntColor(); 
destinyTrait.localizedName = "命运";
destinyTrait.localizedDescription = "你的攻击伤害有概率翻倍,但也更有可能减半";
destinyTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var dmg = newDamage;
    var random as double = Math.random();
    if (random < 0.3) {
        dmg = newDamage * 2 as float; 
    } else if (random >= 0.3) {
        dmg = newDamage * 0.5as float; 
    }
    return dmg;
};
destinyTrait.register();

