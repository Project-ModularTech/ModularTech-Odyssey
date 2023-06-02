//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

#loader contenttweaker 

#modloaded tconstruct
#modloaded conarm
#modloaded plustic
#modloaded tconevo

#priority 2200
#no_fix_recipe_book

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;

import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;

function getDrawSpeed(inversed as float) as float {
    return (1.0f / inversed as float) as float;
}

//红晶锭
val redingot = MaterialBuilder.create("redingot");
redingot.color = Color.fromHex("b71c1c").getIntColor(); 
redingot.craftable = true;
redingot.castable = false;
redingot.representativeItem = <item:contenttweaker:redingot>;
redingot.addItem(<item:contenttweaker:redingot>);
redingot.localizedName ="赤晶锭";
redingot.addHeadMaterialStats(428, 5.4, 8.1, 4);
redingot.addHandleMaterialStats(1.2, 106);
redingot.addExtraMaterialStats(90);
redingot.addBowMaterialStats(getDrawSpeed(1.8) as float, 1.8, 6.8);
redingot.addArrowShaftMaterialStats(0.8, 55);
redingot.addMaterialTrait("lifesteal", "head");
redingot.addMaterialTrait("strength", "head");
redingot.addMaterialTrait("lifesteal", "bow");
redingot.addMaterialTrait("strength", "bow");
redingot.addMaterialTrait("lifesteal", "handle");
redingot.addMaterialTrait("lifesteal", "extra");
redingot.addProjectileMaterialStats();
redingot.register();

//绿晶锭
val greeningot = MaterialBuilder.create("greeningot");
greeningot.color = Color.fromHex("62de66").getIntColor(); 
greeningot.craftable = true;
greeningot.castable = false;
greeningot.representativeItem = <item:contenttweaker:greeningot>;
greeningot.addItem(<item:contenttweaker:greeningot>);
greeningot.localizedName ="绿晶锭";
greeningot.addHeadMaterialStats(128, 6.5, 6.8, 4);
greeningot.addHandleMaterialStats(1.2, 106);
greeningot.addExtraMaterialStats(128);
greeningot.addBowMaterialStats(getDrawSpeed(1.2) as float, 1.2, 5.4);
greeningot.addArrowShaftMaterialStats(1.0, 58);
greeningot.addProjectileMaterialStats();
greeningot.addMaterialTrait("exp", "head");
greeningot.addMaterialTrait("exp", "bow");
greeningot.addMaterialTrait("exp", "handle");
greeningot.addMaterialTrait("exp", "extra");
greeningot.addProjectileMaterialStats();
greeningot.register();

//蓝晶锭
val blueingot = MaterialBuilder.create("blueingot");
blueingot.color = Color.fromHex("2195f3").getIntColor(); 
blueingot.craftable = true;
blueingot.castable = false;
blueingot.representativeItem = <item:contenttweaker:blueingot>;
blueingot.addItem(<item:contenttweaker:blueingot>);
blueingot.localizedName ="蓝晶锭";
blueingot.addHeadMaterialStats(428, 7.2, 14,6);
blueingot.addHandleMaterialStats(1.4, 106);
blueingot.addExtraMaterialStats(77);
blueingot.addBowMaterialStats(getDrawSpeed(0.9) as float, 1.2, 4.1);
blueingot.addArrowShaftMaterialStats(1.0, 48);
blueingot.addProjectileMaterialStats();
blueingot.addMaterialTrait("lightweight", "head");
blueingot.addMaterialTrait("speed", "head");
blueingot.addMaterialTrait("lightweight", "bow");
blueingot.addMaterialTrait("speed", "bow");
blueingot.addMaterialTrait("lightweight", "handle");
blueingot.addMaterialTrait("speed", "handle");
blueingot.addMaterialTrait("lightweight", "extra");
blueingot.addMaterialTrait("speed", "extra");
blueingot.addProjectileMaterialStats();
blueingot.register();

//金晶锭
val goldeningot = MaterialBuilder.create("goldeningot");
goldeningot.color = Color.fromHex("ffc107").getIntColor(); 
goldeningot.craftable = true;
goldeningot.castable = false;
goldeningot.representativeItem = <item:contenttweaker:goldeningot>;
goldeningot.addItem(<item:contenttweaker:goldeningot>);
goldeningot.localizedName ="金晶锭";
goldeningot.addHeadMaterialStats(328, 8.4, 8.1,5);
goldeningot.addHandleMaterialStats(1.3, 112);
goldeningot.addExtraMaterialStats(102);
goldeningot.addBowMaterialStats(getDrawSpeed(1.4) as float, 1.7, 5.1);
goldeningot.addArrowShaftMaterialStats(1.2, 58);
goldeningot.addProjectileMaterialStats();
goldeningot.addMaterialTrait("lightattack", "head");
goldeningot.addMaterialTrait("lightattack", "bow");
goldeningot.addMaterialTrait("lightattack", "handle");
goldeningot.addMaterialTrait("lightattack", "extra");
goldeningot.addMaterialTrait("destiny", "handle");
goldeningot.addMaterialTrait("destiny", "extra");
goldeningot.addProjectileMaterialStats();
goldeningot.register();

//紫晶锭
val purpleingot = MaterialBuilder.create("purpleingot");
purpleingot.color = Color.fromHex("720899").getIntColor(); 
purpleingot.craftable = true;
purpleingot.castable = false;
purpleingot.representativeItem = <item:contenttweaker:purpleingot>;
purpleingot.addItem(<item:contenttweaker:purpleingot>);
purpleingot.localizedName ="紫晶锭";
purpleingot.addHeadMaterialStats(644, 5.4, 11.1,5);
purpleingot.addHandleMaterialStats(0.7, 82);
purpleingot.addExtraMaterialStats(20);
purpleingot.addBowMaterialStats(getDrawSpeed(1.4) as float, 1.8, 9.1);
purpleingot.addArrowShaftMaterialStats(1.2, 48);
purpleingot.addProjectileMaterialStats();
purpleingot.addMaterialTrait("healthattack", "head");
purpleingot.addMaterialTrait("healthattack", "bow");
purpleingot.addMaterialTrait("healthattack", "handle");
purpleingot.addMaterialTrait("healthattack", "extra");
purpleingot.addProjectileMaterialStats();
purpleingot.register();

//xiaoyu
val xiaoyu = MaterialBuilder.create("xiaoyu");
xiaoyu.color = Color.fromHex("e3e15d").getIntColor(); 
xiaoyu.craftable = true;
xiaoyu.castable = false;
xiaoyu.representativeItem = <item:contenttweaker:xiaoyu>;
xiaoyu.addItem(<item:contenttweaker:xiaoyu>);
xiaoyu.localizedName ="xiaoyu";
xiaoyu.addHeadMaterialStats(233, 2.33, 2.33, 4);
xiaoyu.addHandleMaterialStats(1.0, 66);
xiaoyu.addExtraMaterialStats(66);
xiaoyu.addArrowShaftMaterialStats(0.6, 23);
xiaoyu.addMaterialTrait("xiaoyu", "head");
xiaoyu.addMaterialTrait("cheap", "head");
xiaoyu.addMaterialTrait("xiaoyu", "handle");
xiaoyu.addMaterialTrait("cheap", "handle");
xiaoyu.addMaterialTrait("xiaoyu", "extra");
xiaoyu.addMaterialTrait("cheap", "extra");
xiaoyu.addProjectileMaterialStats();
xiaoyu.register();

//ximen
val ximen = MaterialBuilder.create("ximen");
ximen.color = Color.fromHex("69c9c9").getIntColor(); 
ximen.craftable = true;
ximen.castable = false;
ximen.representativeItem = <item:contenttweaker:ximen>;
ximen.addItem(<item:contenttweaker:ximen>);
ximen.localizedName ="ximen";
ximen.addHeadMaterialStats(233, 2.33, 2.33, 4);
ximen.addHandleMaterialStats(1.0, 66);
ximen.addExtraMaterialStats(66);
ximen.addArrowShaftMaterialStats(0.6, 23);
ximen.addMaterialTrait("ximen", "head");
ximen.addMaterialTrait("tasty", "head");
ximen.addMaterialTrait("ximen", "handle");
ximen.addMaterialTrait("tasty", "handle");
ximen.addMaterialTrait("ximen", "extra");
ximen.addMaterialTrait("tasty", "extra");
ximen.addProjectileMaterialStats();
ximen.register();

//shadow_zl
val shadow_zl = MaterialBuilder.create("shadow_zl");
shadow_zl.color = Color.fromHex("ff99ff").getIntColor(); 
shadow_zl.craftable = true;
shadow_zl.castable = false;
shadow_zl.representativeItem = <item:contenttweaker:shadow_zl>;
shadow_zl.addItem(<item:contenttweaker:shadow_zl>);
shadow_zl.localizedName ="shadow_zl";
shadow_zl.addHeadMaterialStats(233, 2.33, 2.33, 4);
shadow_zl.addHandleMaterialStats(1.0, 66);
shadow_zl.addExtraMaterialStats(66);
shadow_zl.addArrowShaftMaterialStats(0.6, 23);
shadow_zl.addMaterialTrait("shadow_zl", "head");
shadow_zl.addMaterialTrait("flammable", "head");
shadow_zl.addMaterialTrait("shadow_zl", "handle");
shadow_zl.addMaterialTrait("flammable", "handle");
shadow_zl.addMaterialTrait("shadow_zl", "extra");
shadow_zl.addMaterialTrait("flammable", "extra");
shadow_zl.addProjectileMaterialStats();
shadow_zl.register();