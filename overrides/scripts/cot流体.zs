//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

#priority 1000

#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

//不稳定的虚空涌流
var void_liquid = VanillaFactory.createFluid("void_liquid", Color.fromHex("7b1c8c").getIntColor());
void_liquid.colorize = true;
void_liquid.temperature = 300;
void_liquid.luminosity = 7;
void_liquid.stillLocation = "base:fluids/liquid";
void_liquid.flowingLocation = "base:fluids/liquid_flow";
void_liquid.register();

//能量流体
var energy_liquid = VanillaFactory.createFluid("energy_liquid", Color.fromHex("57ebb5").getIntColor());
energy_liquid.colorize = true;
energy_liquid.temperature = 300;
energy_liquid.luminosity = 7;
energy_liquid.stillLocation = "base:fluids/liquid";
energy_liquid.flowingLocation = "base:fluids/liquid_flow";
energy_liquid.register();

//熔融流明精华
var lumium_liquid = VanillaFactory.createFluid("lumium_liquid", Color.fromHex("dede56").getIntColor());
lumium_liquid.colorize = true;
lumium_liquid.temperature = 300;
lumium_liquid.luminosity = 7;
lumium_liquid.stillLocation = "base:fluids/liquid";
lumium_liquid.flowingLocation = "base:fluids/liquid_flow";
lumium_liquid.register();

//熔融模块化合金
var modular_liquid = VanillaFactory.createFluid("modular_liquid", Color.fromHex("dddedb").getIntColor());
modular_liquid.colorize = true;
modular_liquid.temperature = 300;
modular_liquid.luminosity = 7;
modular_liquid.stillLocation = "base:fluids/liquid";
modular_liquid.flowingLocation = "base:fluids/liquid_flow";
modular_liquid.register();

//甲苯
var toluene_liquid = VanillaFactory.createFluid("toluene_liquid", Color.fromHex("471700").getIntColor());
toluene_liquid.colorize = true;
toluene_liquid.temperature = 300;
toluene_liquid.luminosity = 7;
toluene_liquid.stillLocation = "base:fluids/liquid";
toluene_liquid.flowingLocation = "base:fluids/liquid_flow";
toluene_liquid.register();

//润滑油
var lubricant = VanillaFactory.createFluid("lubricant", Color.fromHex("f7e6a9").getIntColor());
lubricant.colorize = true;
lubricant.temperature = 300;
lubricant.luminosity = 7;
lubricant.stillLocation = "base:fluids/liquid";
lubricant.flowingLocation = "base:fluids/liquid_flow";
lubricant.register();

//黎明石精华
var liming = VanillaFactory.createFluid("liming", Color.fromHex("d98d23").getIntColor());
liming.colorize = true;
liming.temperature = 300;
liming.luminosity = 7;
liming.stillLocation = "base:fluids/liquid";
liming.flowingLocation = "base:fluids/liquid_flow";
liming.register();

//魔法泉水
var mana_water = VanillaFactory.createFluid("mana_water", Color.fromHex("29bfff").getIntColor());
mana_water.colorize = true;
mana_water.temperature = 300;
mana_water.luminosity = 9;
mana_water.stillLocation = "base:fluids/liquid";
mana_water.flowingLocation = "base:fluids/liquid_flow";
mana_water.register();

//永恒精华
var eternal_essence = VanillaFactory.createFluid("eternal_essence", Color.fromHex("9a78e3").getIntColor());
eternal_essence.colorize = true;
eternal_essence.temperature = 1000000;
eternal_essence.luminosity = 15;
eternal_essence.stillLocation = "base:fluids/liquid";
eternal_essence.flowingLocation = "base:fluids/liquid_flow";
eternal_essence.register();