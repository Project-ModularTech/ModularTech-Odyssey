//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

#priority 2333
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

//======================================================科研======================================================
//熔炼加速
var furance1 = VanillaFactory.createItem("furance1");
furance1.maxStackSize = 1;
furance1.creativeTab = <creativetab:misc>;
furance1.register();

var furance2 = VanillaFactory.createItem("furance2");
furance2.maxStackSize = 1;
furance2.creativeTab = <creativetab:misc>;
furance2.register();

var furance3 = VanillaFactory.createItem("furance3");
furance3.maxStackSize = 1;
furance3.creativeTab = <creativetab:misc>;
furance3.register();

//电路专精
var circuit1 = VanillaFactory.createItem("circuit1");
circuit1.maxStackSize = 1;
circuit1.creativeTab = <creativetab:misc>;
circuit1.register();

var circuit2 = VanillaFactory.createItem("circuit2");
circuit2.maxStackSize = 1;
circuit2.creativeTab = <creativetab:misc>;
circuit2.register();

var circuit3 = VanillaFactory.createItem("circuit3");
circuit3.maxStackSize = 1;
circuit3.creativeTab = <creativetab:misc>;
circuit3.register();

//产物保护
var protect1 = VanillaFactory.createItem("protect1");
protect1.maxStackSize = 1;
protect1.creativeTab = <creativetab:misc>;
protect1.register();

var protect2 = VanillaFactory.createItem("protect2");
protect2.maxStackSize = 1;
protect2.creativeTab = <creativetab:misc>;
protect2.register();

var protect3 = VanillaFactory.createItem("protect3");
protect3.maxStackSize = 1;
protect3.creativeTab = <creativetab:misc>;
protect3.register();

//挖掘升级
var dig1 = VanillaFactory.createItem("dig1");
dig1.maxStackSize = 1;
dig1.creativeTab = <creativetab:misc>;
dig1.register();

var dig2 = VanillaFactory.createItem("dig2");
dig2.maxStackSize = 1;
dig2.creativeTab = <creativetab:misc>;
dig2.register();

var dig3 = VanillaFactory.createItem("dig3");
dig3.maxStackSize = 1;
dig3.creativeTab = <creativetab:misc>;
dig3.register();

//装配精通
var assemble1 = VanillaFactory.createItem("assemble1");
assemble1.maxStackSize = 1;
assemble1.creativeTab = <creativetab:misc>;
assemble1.register();

var assemble2 = VanillaFactory.createItem("assemble2");
assemble2.maxStackSize = 1;
assemble2.creativeTab = <creativetab:misc>;
assemble2.register();

var assemble3 = VanillaFactory.createItem("assemble3");
assemble3.maxStackSize = 1;
assemble3.creativeTab = <creativetab:misc>;
assemble3.register();

//装配精通
var tech1 = VanillaFactory.createItem("tech1");
tech1.maxStackSize = 1;
tech1.creativeTab = <creativetab:misc>;
tech1.register();

var tech2 = VanillaFactory.createItem("tech2");
tech2.maxStackSize = 1;
tech2.creativeTab = <creativetab:misc>;
tech2.register();

var tech3 = VanillaFactory.createItem("tech3");
tech3.maxStackSize = 1;
tech3.creativeTab = <creativetab:misc>;
tech3.register();

//=====================================================奖励箱=====================================================
var box1 = VanillaFactory.createItem("box1");
box1.maxStackSize = 64;
box1.creativeTab = <creativetab:misc>;
box1.register();

var box2 = VanillaFactory.createItem("box2");
box2.maxStackSize = 64;
box2.creativeTab = <creativetab:misc>;
box2.register();

var box3 = VanillaFactory.createItem("box3");
box3.maxStackSize = 64;
box3.creativeTab = <creativetab:misc>;
box3.register();

var box4 = VanillaFactory.createItem("box4");
box4.maxStackSize = 64;
box4.creativeTab = <creativetab:misc>;
box4.register();

var box5 = VanillaFactory.createItem("box5");
box5.maxStackSize = 64;
box5.creativeTab = <creativetab:misc>;
box5.register();

var box6 = VanillaFactory.createItem("box6");
box6.maxStackSize = 64;
box6.creativeTab = <creativetab:misc>;
box6.register();

var box7 = VanillaFactory.createItem("box7");
box7.maxStackSize = 64;
box7.creativeTab = <creativetab:misc>;
box7.register();

var box8 = VanillaFactory.createItem("box8");
box8.maxStackSize = 64;
box8.creativeTab = <creativetab:misc>;
box8.register();

var box9 = VanillaFactory.createItem("box9");
box9.maxStackSize = 64;
box9.creativeTab = <creativetab:misc>;
box9.register();

var box10 = VanillaFactory.createItem("box10");
box10.maxStackSize = 64;
box10.creativeTab = <creativetab:misc>;
box10.register();

var box_oh = VanillaFactory.createItem("box_oh");
box_oh.maxStackSize = 64;
box_oh.creativeTab = <creativetab:misc>;
box_oh.register();

var box_zl = VanillaFactory.createItem("box_zl");
box_zl.maxStackSize = 64;
box_zl.creativeTab = <creativetab:misc>;
box_zl.register();

var box_huaji = VanillaFactory.createItem("box_huaji");
box_huaji.maxStackSize = 64;
box_huaji.creativeTab = <creativetab:misc>;
box_huaji.register();

var box_toby = VanillaFactory.createItem("box_toby");
box_toby.maxStackSize = 64;
box_toby.creativeTab = <creativetab:misc>;
box_toby.register();

//======================================================物品======================================================
//能量锭
var energy_ingot = VanillaFactory.createItem("energy_ingot");
energy_ingot.maxStackSize = 64;
energy_ingot.creativeTab = <creativetab:misc>;
energy_ingot.register();

//紫晶锭
var purpleingot = VanillaFactory.createItem("purpleingot");
purpleingot.maxStackSize = 64;
purpleingot.creativeTab = <creativetab:misc>;
purpleingot.register();

//金晶锭
var goldeningot = VanillaFactory.createItem("goldeningot");
goldeningot.maxStackSize = 64;
goldeningot.creativeTab = <creativetab:misc>;
goldeningot.register();

//绿晶锭
var greeningot = VanillaFactory.createItem("greeningot");
greeningot.maxStackSize = 64;
greeningot.creativeTab = <creativetab:misc>;
greeningot.register();

//红晶锭
var redingot = VanillaFactory.createItem("redingot");
redingot.maxStackSize = 64;
redingot.creativeTab = <creativetab:misc>;
redingot.register();

//蓝晶锭
var blueingot = VanillaFactory.createItem("blueingot");
blueingot.maxStackSize = 64;
blueingot.creativeTab = <creativetab:misc>;
blueingot.register();

//蕴魔合金锭
var magicalingot = VanillaFactory.createItem("magicalingot");
magicalingot.maxStackSize = 64;
magicalingot.creativeTab = <creativetab:misc>;
magicalingot.register();

//机械构件
var part = VanillaFactory.createItem("part");
part.maxStackSize = 64;
part.creativeTab = <creativetab:misc>;
part.register();

//红宝石
var ruby = VanillaFactory.createItem("ruby");
ruby.maxStackSize = 64;
ruby.creativeTab = <creativetab:misc>;
ruby.register();

//锂电池(合成用)
var li_cell = VanillaFactory.createItem("li_cell");
li_cell.maxStackSize = 64;
li_cell.creativeTab = <creativetab:misc>;
li_cell.register();

//教皇锭
var zl_ingot = VanillaFactory.createItem("zl_ingot");
zl_ingot.maxStackSize = 64;
zl_ingot.creativeTab = <creativetab:misc>;
zl_ingot.register();

//热教皇锭
var zl_hotingot = VanillaFactory.createItem("zl_hotingot");
zl_hotingot.maxStackSize = 64;
zl_hotingot.creativeTab = <creativetab:misc>;
zl_hotingot.register();

//热龙锭
var draconium_hotingot = VanillaFactory.createItem("draconium_hotingot");
draconium_hotingot.maxStackSize = 64;
draconium_hotingot.creativeTab = <creativetab:misc>;
draconium_hotingot.register();

//热觉醒龙锭
var dragon_hotingot = VanillaFactory.createItem("dragon_hotingot");
dragon_hotingot.maxStackSize = 64;
dragon_hotingot.creativeTab = <creativetab:misc>;
dragon_hotingot.register();

//觉醒龙络合物
var dragon_matter = VanillaFactory.createItem("dragon_matter");
dragon_matter.maxStackSize = 64;
dragon_matter.creativeTab = <creativetab:misc>;
dragon_matter.register();

//觉醒龙精华
var dragon_matter2 = VanillaFactory.createItem("dragon_matter2");
dragon_matter2.maxStackSize = 64;
dragon_matter2.creativeTab = <creativetab:misc>;
dragon_matter2.register();

//觉醒龙尘
var dragon_dust2 = VanillaFactory.createItem("dragon_dust2");
dragon_dust2.maxStackSize = 64;
dragon_dust2.creativeTab = <creativetab:misc>;
dragon_dust2.register();

//教皇粉
var zl_dust = VanillaFactory.createItem("zl_dust");
zl_dust.maxStackSize = 64;
zl_dust.creativeTab = <creativetab:misc>;
zl_dust.register();

//不锈钢锭
var stainless_ingot = VanillaFactory.createItem("stainless_ingot");
stainless_ingot.maxStackSize = 64;
stainless_ingot.creativeTab = <creativetab:misc>;
stainless_ingot.register();

//蕴魔不锈钢锭
var mana_stainless_ingot = VanillaFactory.createItem("mana_stainless_ingot");
mana_stainless_ingot.maxStackSize = 64;
mana_stainless_ingot.creativeTab = <creativetab:misc>;
mana_stainless_ingot.register();

//不锈钢板
var stainless_plate = VanillaFactory.createItem("stainless_plate");
stainless_plate.maxStackSize = 64;
stainless_plate.creativeTab = <creativetab:misc>;
stainless_plate.register();

//不锈钢杆
var stainless_rod = VanillaFactory.createItem("stainless_rod");
stainless_rod.maxStackSize = 64;
stainless_rod.creativeTab = <creativetab:misc>;
stainless_rod.register();

//金铜合金锭
var gold_copper_ingot = VanillaFactory.createItem("gold_copper_ingot");
gold_copper_ingot.maxStackSize = 64;
gold_copper_ingot.creativeTab = <creativetab:misc>;
gold_copper_ingot.register();

//指北针
var north_compass = VanillaFactory.createItem("north_compass");
north_compass.maxStackSize = 64;
north_compass.creativeTab = <creativetab:misc>;
north_compass.register();

//海蓝宝石精华
var aquamarine_essence = VanillaFactory.createItem("aquamarine_essence");
aquamarine_essence.maxStackSize = 64;
aquamarine_essence.creativeTab = <creativetab:misc>;
aquamarine_essence.register();

//树脂板
var resinplate = VanillaFactory.createItem("resinplate");
resinplate.maxStackSize = 64;
resinplate.creativeTab = <creativetab:misc>;
resinplate.register();

//不锈钢粉
var stainless_steel_dust = VanillaFactory.createItem("stainless_steel_dust");
stainless_steel_dust.maxStackSize = 64;
stainless_steel_dust.creativeTab = <creativetab:misc>;
stainless_steel_dust.register();

//铬粉
var chrome_dust = VanillaFactory.createItem("chrome_dust");
chrome_dust.maxStackSize = 64;
chrome_dust.creativeTab = <creativetab:misc>;
chrome_dust.register();

//星辰石
var starstone = VanillaFactory.createItem("starstone");
starstone.maxStackSize = 64;
starstone.creativeTab = <creativetab:misc>;
starstone.register();

//======================================================电路======================================================
//基础集成电路
var basiccircuit = VanillaFactory.createItem("basiccircuit");
basiccircuit.maxStackSize = 64;
basiccircuit.creativeTab = <creativetab:misc>;
basiccircuit.register();

//进阶集成电路
var advancedcircuit = VanillaFactory.createItem("advancedcircuit");
advancedcircuit.maxStackSize = 64;
advancedcircuit.creativeTab = <creativetab:misc>;
advancedcircuit.register();

//精英集成电路
var epiccircuit = VanillaFactory.createItem("epiccircuit");
epiccircuit.maxStackSize = 64;
epiccircuit.creativeTab = <creativetab:misc>;
epiccircuit.register();

//大师集成电路
var mastercircuit = VanillaFactory.createItem("mastercircuit");
mastercircuit.maxStackSize = 64;
mastercircuit.creativeTab = <creativetab:misc>;
mastercircuit.register();

//极限集成电路
var extremecircuit = VanillaFactory.createItem("extremecircuit");
extremecircuit.maxStackSize = 64;
extremecircuit.creativeTab = <creativetab:misc>;
extremecircuit.register();

//量子集成电路
var quantumcircuit = VanillaFactory.createItem("quantumcircuit");
quantumcircuit.maxStackSize = 64;
quantumcircuit.creativeTab = <creativetab:misc>;
quantumcircuit.register();

//超量子集成电路
var superquantumcircuit = VanillaFactory.createItem("superquantumcircuit");
superquantumcircuit.maxStackSize = 64;
superquantumcircuit.creativeTab = <creativetab:misc>;
superquantumcircuit.register();

//寰宇集成电路
var cosmiccircuit = VanillaFactory.createItem("cosmiccircuit");
cosmiccircuit.maxStackSize = 64;
cosmiccircuit.creativeTab = <creativetab:misc>;
cosmiccircuit.register();

//无尽集成电路
var infinitecircuit = VanillaFactory.createItem("infinitecircuit");
infinitecircuit.maxStackSize = 64;
infinitecircuit.creativeTab = <creativetab:misc>;
infinitecircuit.register();

//压缩树脂板
var compressedresinplate = VanillaFactory.createItem("compressedresinplate");
compressedresinplate.maxStackSize = 64;
compressedresinplate.creativeTab = <creativetab:misc>;
compressedresinplate.register();

//基础电路基板
var basiccircuitplate = VanillaFactory.createItem("basiccircuitplate");
basiccircuitplate.maxStackSize = 64;
basiccircuitplate.creativeTab = <creativetab:misc>;
basiccircuitplate.register();

//进阶电路基板
var advancedcircuitplate = VanillaFactory.createItem("advancedcircuitplate");
advancedcircuitplate.maxStackSize = 64;
advancedcircuitplate.creativeTab = <creativetab:misc>;
advancedcircuitplate.register();

//精英电路基板
var epiccircuitplate = VanillaFactory.createItem("epiccircuitplate");
epiccircuitplate.maxStackSize = 64;
epiccircuitplate.creativeTab = <creativetab:misc>;
epiccircuitplate.register();

//大师电路基板
var mastercircuitplate = VanillaFactory.createItem("mastercircuitplate");
mastercircuitplate.maxStackSize = 64;
mastercircuitplate.creativeTab = <creativetab:misc>;
mastercircuitplate.register();

//极限电路基板
var extremecircuitplate = VanillaFactory.createItem("extremecircuitplate");
extremecircuitplate.maxStackSize = 64;
extremecircuitplate.creativeTab = <creativetab:misc>;
extremecircuitplate.register();

//量子电路基板
var quantumcircuitplate = VanillaFactory.createItem("quantumcircuitplate");
quantumcircuitplate.maxStackSize = 64;
quantumcircuitplate.creativeTab = <creativetab:misc>;
quantumcircuitplate.register();

//超量子电路基板
var superquantumcircuitplate = VanillaFactory.createItem("superquantumcircuitplate");
superquantumcircuitplate.maxStackSize = 64;
superquantumcircuitplate.creativeTab = <creativetab:misc>;
superquantumcircuitplate.register();

//寰宇电路基板
var cosmiccircuitplate = VanillaFactory.createItem("cosmiccircuitplate");
cosmiccircuitplate.maxStackSize = 64;
cosmiccircuitplate.creativeTab = <creativetab:misc>;
cosmiccircuitplate.register();

//无尽电路基板
var infinitecircuitplate = VanillaFactory.createItem("infinitecircuitplate");
infinitecircuitplate.maxStackSize = 64;
infinitecircuitplate.creativeTab = <creativetab:misc>;
infinitecircuitplate.register();

//一级蕴魔结晶
var mana_crystal1 = VanillaFactory.createItem("mana_crystal1");
mana_crystal1.maxStackSize = 64;
mana_crystal1.creativeTab = <creativetab:misc>;
mana_crystal1.register();

//二级蕴魔结晶
var mana_crystal2 = VanillaFactory.createItem("mana_crystal2");
mana_crystal2.maxStackSize = 64;
mana_crystal2.creativeTab = <creativetab:misc>;
mana_crystal2.register();

//三级蕴魔结晶
var mana_crystal3 = VanillaFactory.createItem("mana_crystal3");
mana_crystal3.maxStackSize = 64;
mana_crystal3.creativeTab = <creativetab:misc>;
mana_crystal3.register();

//锻造石板
var forgeplate = VanillaFactory.createItem("forgeplate");
forgeplate.maxStackSize = 64;
forgeplate.creativeTab = <creativetab:misc>;
forgeplate.register();

//诅咒石板
var curseplate = VanillaFactory.createItem("curseplate");
curseplate.maxStackSize = 64;
curseplate.creativeTab = <creativetab:misc>;
curseplate.register();

//灵魂石板
var soulplate = VanillaFactory.createItem("soulplate");
soulplate.maxStackSize = 64;
soulplate.creativeTab = <creativetab:misc>;
soulplate.register();

//灵魂结晶
var soulgem = VanillaFactory.createItem("soulgem");
soulgem.maxStackSize = 64;
soulgem.creativeTab = <creativetab:misc>;
soulgem.register();

//灵魂宝石
var soulgem2 = VanillaFactory.createItem("soulgem2");
soulgem2.maxStackSize = 64;
soulgem2.creativeTab = <creativetab:misc>;
soulgem2.register();

//血染的机械核心
var blood_machine_core = VanillaFactory.createItem("blood_machine_core");
blood_machine_core.maxStackSize = 64;
blood_machine_core.creativeTab = <creativetab:misc>;
blood_machine_core.register();

//科研点
var nova = VanillaFactory.createItem("nova");
nova.maxStackSize = 64;
nova.creativeTab = <creativetab:misc>;
nova.register();

//科研币
var nova2 = VanillaFactory.createItem("nova2");
nova2.maxStackSize = 64;
nova2.creativeTab = <creativetab:misc>;
nova2.register();

//绿宝石粉
var emerald_dust = VanillaFactory.createItem("emerald_dust");
emerald_dust.maxStackSize = 64;
emerald_dust.creativeTab = <creativetab:misc>;
emerald_dust.register();

//银河能量锭
var galaxy_ingot = VanillaFactory.createItem("galaxy_ingot");
galaxy_ingot.maxStackSize = 64;
galaxy_ingot.creativeTab = <creativetab:misc>;
galaxy_ingot.register();

//宇宙能量锭
var universe_ingot = VanillaFactory.createItem("universe_ingot");
universe_ingot.maxStackSize = 64;
universe_ingot.creativeTab = <creativetab:misc>;
universe_ingot.register();

//黑曜石TNT
var tnt1 = VanillaFactory.createItem("tnt1");
tnt1.maxStackSize = 64;
tnt1.creativeTab = <creativetab:misc>;
tnt1.register();

//纯净水晶花
var cf = VanillaFactory.createItem("crystal_flower");
cf.maxStackSize = 64;
cf.creativeTab = <creativetab:misc>;
cf.register();

//终极量子组件
var ultimate_quantum_component = VanillaFactory.createItem("ultimate_quantum_component");
ultimate_quantum_component.maxStackSize = 64;
ultimate_quantum_component.creativeTab = <creativetab:misc>;
ultimate_quantum_component.register();

//红宝石粉
var ruby_dust = VanillaFactory.createItem("ruby_dust");
ruby_dust.maxStackSize = 64;
ruby_dust.creativeTab = <creativetab:misc>;
ruby_dust.register();

//虚空水晶
var crystal_1 = VanillaFactory.createItem("crystal_1");
crystal_1.maxStackSize = 64;
crystal_1.creativeTab = <creativetab:misc>;
crystal_1.register();

var crystal_2 = VanillaFactory.createItem("crystal_2");
crystal_2.maxStackSize = 64;
crystal_2.creativeTab = <creativetab:misc>;
crystal_2.register();

var crystal_3 = VanillaFactory.createItem("crystal_3");
crystal_3.maxStackSize = 64;
crystal_3.creativeTab = <creativetab:misc>;
crystal_3.register();

var crystal_4 = VanillaFactory.createItem("crystal_4");
crystal_4.maxStackSize = 64;
crystal_4.creativeTab = <creativetab:misc>;
crystal_4.register();

var crystal_5 = VanillaFactory.createItem("crystal_5");
crystal_5.maxStackSize = 64;
crystal_5.creativeTab = <creativetab:misc>;
crystal_5.register();

var crystal_6 = VanillaFactory.createItem("crystal_6");
crystal_6.maxStackSize = 64;
crystal_6.creativeTab = <creativetab:misc>;
crystal_6.register();

//星图
var star1 = VanillaFactory.createItem("star1");
star1.maxStackSize = 64;
star1.creativeTab = <creativetab:misc>;
star1.register();

var star2 = VanillaFactory.createItem("star2");
star2.maxStackSize = 64;
star2.creativeTab = <creativetab:misc>;
star2.register();

var star3 = VanillaFactory.createItem("star3");
star3.maxStackSize = 64;
star3.creativeTab = <creativetab:misc>;
star3.register();

var star4 = VanillaFactory.createItem("star4");
star4.maxStackSize = 64;
star4.creativeTab = <creativetab:misc>;
star4.register();

var star5 = VanillaFactory.createItem("star5");
star5.maxStackSize = 64;
star5.creativeTab = <creativetab:misc>;
star5.register();

var star6 = VanillaFactory.createItem("star6");
star6.maxStackSize = 64;
star6.creativeTab = <creativetab:misc>;
star6.register();

var star7 = VanillaFactory.createItem("star7");
star7.maxStackSize = 64;
star7.creativeTab = <creativetab:misc>;
star7.register();

var star8 = VanillaFactory.createItem("star8");
star8.maxStackSize = 64;
star8.creativeTab = <creativetab:misc>;
star8.register();

var star9 = VanillaFactory.createItem("star9");
star9.maxStackSize = 64;
star9.creativeTab = <creativetab:misc>;
star9.register();

var star10 = VanillaFactory.createItem("star10");
star10.maxStackSize = 64;
star10.creativeTab = <creativetab:misc>;
star10.register();

var star11 = VanillaFactory.createItem("star11");
star11.maxStackSize = 64;
star11.creativeTab = <creativetab:misc>;
star11.register();

var star12 = VanillaFactory.createItem("star12");
star12.maxStackSize = 64;
star12.creativeTab = <creativetab:misc>;
star12.register();

var star13 = VanillaFactory.createItem("star13");
star13.maxStackSize = 64;
star13.creativeTab = <creativetab:misc>;
star13.register();