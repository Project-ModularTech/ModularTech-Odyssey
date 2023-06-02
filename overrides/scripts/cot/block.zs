//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包
//The script is create by ohxihh, No one is allowed to distribute modified scripts or apply them to your modpack without the permission of ohxihh.

//Fixed Version by Oganesson897.

#priority 1467
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

//教皇块-ZL Block
val zl as Block = VanillaFactory.createBlock("zl_block", <blockmaterial:iron>);
zl.fullBlock = true;
zl.setLightOpacity(255);
zl.translucent = true;
zl.setLightValue(0);
zl.setBlockHardness(8);
zl.setBlockResistance(300.0);
zl.setToolClass("pickaxe");
zl.setToolLevel(4);
zl.setBlockSoundType(<soundtype:metal>);
zl.register();

//教皇矿-ZL Ore
val zl_ore as Block = VanillaFactory.createBlock("zl_ore", <blockmaterial:iron>);
zl_ore.fullBlock = true;
zl_ore.setLightOpacity(255);
zl_ore.translucent = true;
zl_ore.setLightValue(0);
zl_ore.setBlockHardness(8);
zl_ore.setBlockResistance(300.0);
zl_ore.setToolClass("shovel");
zl_ore.setToolLevel(4);
zl_ore.setBlockSoundType(<soundtype:metal>);
zl_ore.register();

//深溟矿-Shen Ming Ore
val shenming_ore as Block = VanillaFactory.createBlock("shenming_ore", <blockmaterial:iron>);
shenming_ore.fullBlock = true;
shenming_ore.setLightOpacity(255);
shenming_ore.translucent = true;
shenming_ore.setLightValue(0);
shenming_ore.setBlockHardness(8);
shenming_ore.setBlockResistance(300.0);
shenming_ore.setToolClass("pickaxe");
shenming_ore.setToolLevel(4);
shenming_ore.setBlockSoundType(<soundtype:metal>);
shenming_ore.register();

//模块化合金块-Modular Alloy Block
val MB as Block = VanillaFactory.createBlock("modularblock", <blockmaterial:iron>);
MB.fullBlock = true;
MB.setLightOpacity(255);
MB.translucent = true;
MB.setLightValue(0);
MB.setBlockHardness(10);
MB.setBlockResistance(300.0);
MB.setToolClass("pickaxe");
MB.setToolLevel(3);
MB.setBlockSoundType(<soundtype:metal>);
MB.register();

//树脂覆盖的机械框架-Resin Covered Mechanical Frame
val RB as Block = VanillaFactory.createBlock("resinmachineblock", <blockmaterial:iron>);
RB.fullBlock = false;
RB.setLightOpacity(255);
RB.translucent = true;
RB.setLightValue(0);
RB.setBlockHardness(10);
RB.setBlockResistance(200.0);
RB.setToolClass("pickaxe");
RB.setToolLevel(3);
RB.setBlockSoundType(<soundtype:metal>);
RB.register();

//铬矿-Chromium Ore
val CO as Block = VanillaFactory.createBlock("chrome_ore", <blockmaterial:iron>);
CO.fullBlock = false;
CO.setLightOpacity(255);
CO.translucent = true;
CO.setLightValue(0);
CO.setBlockHardness(8);
CO.setBlockResistance(200.0);
CO.setToolClass("pickaxe");
CO.setToolLevel(4);
CO.setBlockSoundType(<soundtype:metal>);
CO.register();

//银河能量块-Galaxy Energy Block
val GB as Block = VanillaFactory.createBlock("galaxy_block", <blockmaterial:iron>);
GB.fullBlock = false;
GB.setLightOpacity(255);
GB.translucent = true;
GB.setLightValue(3);
GB.setBlockHardness(8);
GB.setBlockResistance(200.0);
GB.setToolClass("pickaxe");
GB.setToolLevel(4);
GB.setBlockSoundType(<soundtype:metal>);
GB.register();

//宇宙能量块-Universe Energy Block
val UB as Block = VanillaFactory.createBlock("universe_block", <blockmaterial:iron>);
UB.fullBlock = false;
UB.setLightOpacity(255);
UB.translucent = true;
UB.setLightValue(3);
UB.setBlockHardness(8);
UB.setBlockResistance(200.0);
UB.setToolClass("pickaxe");
UB.setToolLevel(4);
UB.setBlockSoundType(<soundtype:metal>);
UB.register();