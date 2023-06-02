//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

//导包
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;

import mods.enderio.SagMill;
import mods.enderio.AlloySmelter;

import mods.nuclearcraft.manufactory;
import mods.nuclearcraft.alloy_furnace;
import mods.nuclearcraft.salt_mixer;
import mods.nuclearcraft.melter;
import mods.nuclearcraft.crystallizer;
import mods.nuclearcraft.pressurizer;

import mods.avaritia.ExtremeCrafting;
import mods.avaritia.Compressor;

import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.AlchemyArray;

import mods.appliedenergistics2.Grinder;

#modloaded immersiveengineering

//========================================================================================原版========================================================================================
//地狱岩磨沙砾副产烈焰粉
mods.immersiveengineering.Crusher.addRecipe(<minecraft:gravel>, <minecraft:netherrack>, 1000, <minecraft:blaze_powder>, 0.05);

//纸
recipes.remove(<minecraft:paper>);
recipes.addShapeless(<minecraft:paper> * 4, [<ore:lumber>,<ore:lumber>]);
recipes.addShapeless(<minecraft:paper> * 3, [<minecraft:reeds>,<minecraft:reeds>,<minecraft:reeds>]);
recipes.addShapeless(<minecraft:paper> * 2, [<minecraft:book>]);
recipes.addShapeless(<minecraft:paper> * 2, [<ore:dustWood>,<ore:dustWood>,<ore:dustWood>,<ore:dustWood>,<minecraft:water_bucket>]);

//炼药锅
recipes.remove(<minecraft:cauldron>);
recipes.addShaped(<minecraft:cauldron>, [[<thermalfoundation:material:32>, null, <thermalfoundation:material:32>],[<thermalfoundation:material:32>, null, <thermalfoundation:material:32>], [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]]);

//鞘翅
recipes.addShaped(<minecraft:elytra>, [[<thermalfoundation:material:1026>, <netheriteroad:netherite_ingot>, <thermalfoundation:material:1026>],[<enderutilities:enderpart>, null, <enderutilities:enderpart>], [<minecraft:feather>, null, <minecraft:feather>]]);

//TNT
recipes.remove(<minecraft:tnt>);

//绿宝石磨粉/富集
SagMill.addRecipe([<contenttweaker:emerald_dust>],[100 as float],<minecraft:emerald>,"MULTIPLY_OUTPUT", 4000);
mods.mekanism.enrichment.addRecipe(<contenttweaker:emerald_dust>,<minecraft:emerald>);

//移除铁轨熔炼
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:rail>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:golden_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:gold>,<minecraft:golden_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:activator_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:osmium>,<minecraft:rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:detector_rail>);

//粘土
mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:clay>, <minecraft:dirt>, <liquid:water>*2000);
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:clay>,<minecraft:dirt>, <liquid:water>*1000, 4000);

//移除地毯燃料值
var burns as IItemStack[]=[
<minecraft:carpet>,
<minecraft:carpet:1>,
<minecraft:carpet:2>,
<minecraft:carpet:3>,
<minecraft:carpet:4>,
<minecraft:carpet:5>,
<minecraft:carpet:6>,
<minecraft:carpet:7>,
<minecraft:carpet:8>,
<minecraft:carpet:15>,
<minecraft:carpet:14>,
<minecraft:carpet:13>,
<minecraft:carpet:12>,
<minecraft:carpet:11>,
<minecraft:carpet:10>,
<minecraft:carpet:9>
];  
for burn in burns{
furnace.setFuel(burn, 0);
}

//==========================================================================================JEI==========================================================================================
//蓝图/工程师装配台
mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device0:2>);
mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}));
mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}));
mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}));

//矿物粉碎机
mods.jei.JEI.removeAndHide(<tinker_io:ore_crusher>);

//末影工作台/末影发电机
mods.jei.JEI.removeAndHide(<extendedcrafting:ender_alternator>);
mods.jei.JEI.removeAndHide(<extendedcrafting:ender_crafter>);

//融合机
mods.jei.JEI.removeAndHide(<mekanism:machineblock:2>);
mods.jei.JEI.removeAndHide(<mekanism:machineblock:5>.withTag({recipeType: 4}));
mods.jei.JEI.removeAndHide(<mekanism:machineblock:6>.withTag({recipeType: 4}));
mods.jei.JEI.removeAndHide(<mekanism:machineblock:7>.withTag({recipeType: 4}));
mods.jei.JEI.removeAndHide(<mekanism:machineblock3:7>.withTag({recipeType: 4, mekData: {}}));
mods.jei.JEI.removeAndHide(<mekanism:machineblock3:8>.withTag({recipeType: 4}));

//=========================================================================================RF工具=========================================================================================
//机器框架
recipes.remove(<rftools:machine_frame>);
recipes.addShaped(<rftools:machine_frame> * 4, [[<thermalfoundation:material:32>, <enderio:item_material:32>, <thermalfoundation:material:32>],[<thermalfoundation:material:33>, <enderio:item_material>, <thermalfoundation:material:33>], [<thermalfoundation:material:352>, <enderio:item_material:32>, <thermalfoundation:material:352>]]);

//模块化存储器
recipes.remove(<rftools:modular_storage>);
recipes.addShaped(<rftools:modular_storage>, [[<minecraft:quartz>, <minecraft:redstone>, <minecraft:quartz>],[<ironchest:iron_chest:2>, <thermaldynamics:retriever>, <ironchest:iron_chest:2>], [<minecraft:quartz>, <minecraft:redstone>, <minecraft:quartz>]]);

//燃煤发电机
recipes.remove(<rftools:coalgenerator>);
recipes.addShaped(<rftools:coalgenerator>, [[<minecraft:coal>, <minecraft:redstone_torch>, <minecraft:coal>],[<minecraft:coal>, <immersiveengineering:metal_decoration0:6>, <minecraft:coal>], [<minecraft:coal>, <minecraft:redstone_torch>, <minecraft:coal>]]);

//末影能发电机
recipes.remove(<rftools:endergenic>);
recipes.addShaped(<rftools:endergenic>, [[<thermalfoundation:glass_alloy:7>, <rftools:infused_enderpearl>, <thermalfoundation:glass_alloy:7>],[<rftools:infused_enderpearl>, <mekanism:basicblock:8>, <rftools:infused_enderpearl>], [<thermalfoundation:glass_alloy:7>, <rftools:infused_enderpearl>, <thermalfoundation:glass_alloy:7>]]);

//存储检测器
recipes.remove(<rftools:storage_scanner>);
recipes.addShaped(<rftools:storage_scanner>, [[<thermaldynamics:retriever>, <minecraft:ender_pearl>, <thermaldynamics:retriever>],[<minecraft:gold_ingot>, <ironchest:iron_chest>, <minecraft:gold_ingot>], [<thermaldynamics:retriever>, <minecraft:ender_pearl>, <thermaldynamics:retriever>]]);

//======================================================================================纪念品======================================================================================
//九夏
recipes.addShaped(<contenttweaker:jiuxia2025>, [[<minecraft:potato>, <minecraft:golden_carrot>, <minecraft:potato>],[<minecraft:golden_carrot>, <botania:manacookie>, <minecraft:golden_carrot>], [<minecraft:potato>, <minecraft:golden_carrot>, <minecraft:potato>]]);
//Sumlotus
recipes.addShaped(<contenttweaker:sumlotus>, [[<minecraft:chorus_fruit>, <modularmachinery:blockcasing:4>, <minecraft:chorus_fruit>],[<modularmachinery:blockcasing:4>, <minecraft:poisonous_potato>, <modularmachinery:blockcasing:4>], [<minecraft:chorus_fruit>, <modularmachinery:blockcasing:4>, <minecraft:chorus_fruit>]]);
//ZhiXiaoMa
recipes.addShaped(<contenttweaker:zhixiaoma>, [[<minecraft:carrot>, <botania:manacookie>, <minecraft:carrot>],[<botania:manacookie>, <minecraft:fish>, <botania:manacookie>], [<minecraft:carrot>, <botania:manacookie>, <minecraft:carrot>]]);
//xiaoyu
recipes.addShaped(<contenttweaker:xiaoyu>, [[<minecraft:fish>, <minecraft:bread>, <minecraft:fish>],[<minecraft:bread>, <minecraft:cake>, <minecraft:bread>], [<minecraft:fish>, <minecraft:bread>, <minecraft:fish>]]);
//ximen
recipes.addShaped(<contenttweaker:ximen>, [[<minecraft:reeds>, <minecraft:golden_carrot>, <minecraft:reeds>],[<minecraft:reeds>, <minecraft:golden_apple>, <minecraft:reeds>], [<minecraft:reeds>, <minecraft:reeds>, <minecraft:reeds>]]);
//chengzhenjie
recipes.addShaped(<contenttweaker:chengzhenjie>, [[<contenttweaker:basiccircuit>, <contenttweaker:basiccircuit>, <contenttweaker:basiccircuit>],[<contenttweaker:basiccircuit>, <minecraft:cake>, <contenttweaker:basiccircuit>], [<contenttweaker:basiccircuit>, <contenttweaker:basiccircuit>, <contenttweaker:basiccircuit>]]);
//CapsH_
recipes.addShaped(<contenttweaker:capsh>, [[<botania:manacookie>, <minecraft:sugar>, <botania:manacookie>],[<minecraft:sugar>, <minecraft:fermented_spider_eye>, <minecraft:sugar>], [<botania:manacookie>, <minecraft:sugar>, <botania:manacookie>]]);
//shadow_zl
recipes.addShaped(<contenttweaker:shadow_zl>, [[<minecraft:iron_block>, <minecraft:mutton>, <minecraft:iron_block>],[<minecraft:mutton>, <ore:dyePink>, <minecraft:mutton>], [<minecraft:iron_block>, <minecraft:mutton>, <minecraft:iron_block>]]);
//秋明
recipes.addShaped(<contenttweaker:tyumen>, [[<minecraft:egg>, <minecraft:iron_sword>, <minecraft:egg>],[<minecraft:iron_sword>, <minecraft:cooked_chicken>, <minecraft:iron_sword>], [<minecraft:egg>, <minecraft:iron_sword>, <minecraft:egg>]]);
//msk
recipes.addShaped(<contenttweaker:msk>, [[<minecraft:egg>, <minecraft:baked_potato>, <minecraft:egg>],[<minecraft:baked_potato>, <minecraft:cooked_chicken>, <minecraft:baked_potato>], [<minecraft:egg>, <minecraft:baked_potato>, <minecraft:egg>]]);
//末一
recipes.addShaped(<contenttweaker:moyi>, [[<astralsorcery:itemcraftingcomponent>, <nuclearcraft:dark_chocolate>, <astralsorcery:itemcraftingcomponent>],[<nuclearcraft:dark_chocolate>, <thermalfoundation:material:135>, <nuclearcraft:dark_chocolate>], [<astralsorcery:itemcraftingcomponent>, <nuclearcraft:dark_chocolate>, <astralsorcery:itemcraftingcomponent>]]);
//Oganesson897
recipes.addShaped(<contenttweaker:oganesson897>, [[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>],[<minecraft:tnt>, <minecraft:potato>, <minecraft:tnt>], [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>]]);
//XB_Asuna
recipes.addShaped(<contenttweaker:xb_asuna>, [[<minecraft:chorus_fruit>, <minecraft:ender_pearl>, <minecraft:chorus_fruit>],[<minecraft:ender_pearl>, <botania:flower:10>, <minecraft:ender_pearl>], [<minecraft:chorus_fruit>, <minecraft:ender_pearl>, <minecraft:chorus_fruit>]]);
//ionite
recipes.addShaped(<contenttweaker:ionite>, [[<environmentaltech:ionite>, <ancientspellcraft:crystal_shard_ice>, <environmentaltech:ionite>],[<ancientspellcraft:crystal_shard_ice>, <biomesoplenty:flower_1:4>, <ancientspellcraft:crystal_shard_ice>], [<environmentaltech:ionite>, <ancientspellcraft:crystal_shard_ice>, <environmentaltech:ionite>]]);
//ibicir
recipes.addShaped(<contenttweaker:ibicir>, [[<minecraft:paper>, <minecraft:experience_bottle>, <minecraft:paper>],[<minecraft:experience_bottle>, <minecraft:golden_apple>, <minecraft:experience_bottle>], [<minecraft:paper>, <minecraft:experience_bottle>, <minecraft:paper>]]);
//Loaf_Hime
recipes.addShaped(<contenttweaker:loaf_hime>, [[<minecraft:cooked_fish>, <minecraft:bread>, <minecraft:cooked_fish>],[<minecraft:bread>, <mekanism:salt>, <minecraft:bread>], [<minecraft:cooked_fish>, <minecraft:bread>, <minecraft:cooked_fish>]]);

//==========================================================================================沉浸==========================================================================================
//移除工作台造板/齿轮
mods.unidict.removalByKind.get("Crafting").remove("plate");
mods.unidict.removalByKind.get("Crafting").remove("gear");

//窑砖
recipes.remove(<immersiveengineering:stone_decoration:10>);
mods.immersiveengineering.BottlingMachine.addRecipe(<immersiveengineering:stone_decoration:10>, <immersiveengineering:stone_decoration>, <liquid:clay>*2000);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:stone_decoration:10>,<immersiveengineering:stone_decoration>, <liquid:clay>*1000, 4000);

//石墨电极
mods.thermalexpansion.Compactor.addStorageRecipe(<immersiveengineering:graphite_electrode>,<immersiveengineering:material:19>*4, 4000);

//移除工作台造金属棒
recipes.remove(<immersiveengineering:material:1>);
recipes.remove(<immersiveengineering:material:2>);
recipes.remove(<immersiveengineering:material:3>);

//MEK富集仓制作金属线
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:128>,<immersiveengineering:material:20>*3);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:161>,<immersiveengineering:material:21>*3);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:132>,<immersiveengineering:material:22>*3);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:160>,<immersiveengineering:material:23>*3);

//工业大麻纤维
recipes.addShapeless(<immersiveengineering:material:4>, [<immersiveengineering:seed>, <immersiveengineering:seed>,<immersiveengineering:seed>]);

//传送带
recipes.remove(<immersiveengineering:conveyor>);
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})]);
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [[null, null, null],[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>], [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>]]);

//绝缘传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"}), [<ore:scaffoldingSteel>,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]);

//抽取传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}), [<ore:plankTreatedWood>,<immersiveengineering:cloth_device:2>,<immersiveengineering:material:8>,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]);

//绝缘抽取传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}),<ore:scaffoldingSteel>]);

//分流传送带
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}), [[null, null, null],[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <minecraft:iron_ingot>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})], [null, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), null]]);

//卸货传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),<minecraft:hopper>]);

//绝缘卸货传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"}), [<ore:scaffoldingSteel>,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"})]);

//垂直传送带
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}) * 3, [[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <minecraft:iron_ingot>, null],[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), null, null], [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <minecraft:iron_ingot>, null]]);

//绝缘垂直传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}),<ore:scaffoldingSteel>]);

//红石合金
mods.immersiveengineering.AlloySmelter.addRecipe(<enderio:item_alloy_ingot:3>, <minecraft:redstone>, <ore:itemSilicon>, 600);

//电路板
recipes.addShaped(<immersiveengineering:material:27>*2, [[<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>],[<immersiveengineering:material:26>, <immersiveengineering:stone_decoration:8>, <immersiveengineering:material:26>], [<ore:itemSilicon>,<ore:itemSilicon>,<ore:itemSilicon>]]);

//真空管
recipes.addShaped(<immersiveengineering:material:26>, [[<tconstruct:clear_glass>, <threng:material>, <tconstruct:clear_glass>],[<tconstruct:clear_glass>, <thermalfoundation:material:261>, <tconstruct:clear_glass>], [<tconstruct:clear_glass>, <immersiveengineering:metal_decoration0>, <tconstruct:clear_glass>]]);

//园艺玻璃罩
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped(<immersiveengineering:metal_device1:13>, [[<thermalfoundation:glass:7>, <immersiveengineering:material:26>, <thermalfoundation:glass:7>],[<thermalfoundation:glass:7>, null, <thermalfoundation:glass:7>], [<contenttweaker:advancedcircuit>, <nuclearcraft:part:10>, <contenttweaker:advancedcircuit>]]);

//钢栅栏
recipes.addShaped(<immersiveengineering:metal_decoration1>*3, [[null, null, null],[<thermalfoundation:material:160>, <immersiveengineering:material:9>, <thermalfoundation:material:160>], [<thermalfoundation:material:160>, <immersiveengineering:material:9>, <thermalfoundation:material:160>]]);

//绝缘玻璃(流体转置)
recipes.remove(<immersiveengineering:stone_decoration:8>);
recipes.addShaped(<immersiveengineering:stone_decoration:8>, [[null, <contenttweaker:resinplate>, null],[<contenttweaker:resinplate>, <tconstruct:clear_glass>, <contenttweaker:resinplate>], [null, <contenttweaker:resinplate>, null]]);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:stone_decoration:8>,<tconstruct:clear_glass>, <liquid:resin>*200, 8000);

//工程师工具箱
recipes.remove(<immersiveengineering:toolbox>);

//麻凝土
recipes.removeShaped(<immersiveengineering:stone_decoration:4>*6, [[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],[<immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>], [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:4>*3, [[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],[<immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>], [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]]);

//铁质机械零件
recipes.remove(<immersiveengineering:material:8>);
mods.tconstruct.Casting.addTableRecipe(<immersiveengineering:material:8>,<thermalfoundation:material:256>,<liquid:iron>,576,true,100);

//钢质机械零件
recipes.remove(<immersiveengineering:material:9>);
recipes.addShaped(<immersiveengineering:material:9>, [[<thermalfoundation:material:352>, <immersiveengineering:material:17>, <thermalfoundation:material:352>],[<immersiveengineering:material:17>, <immersiveengineering:material:8>, <immersiveengineering:material:17>], [<thermalfoundation:material:352>, <immersiveengineering:material:17>, <thermalfoundation:material:352>]]);

//轻型工程块
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4>*2, [[<immersiveengineering:stone_decoration:4>, <immersiveengineering:material:5>, <immersiveengineering:stone_decoration:4>],[<immersiveengineering:material:8>, <thermalfoundation:material:291>, <immersiveengineering:material:8>], [<immersiveengineering:stone_decoration:4>, <immersiveengineering:material:5>, <immersiveengineering:stone_decoration:4>]]);

//红石工程块
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3>*2, [[<minecraft:comparator>, <immersiveengineering:material:8>, <minecraft:repeater>],[<immersiveengineering:stone_decoration:4>,<immersiveengineering:metal_decoration1>, <immersiveengineering:stone_decoration:4>], [<minecraft:repeater>, <immersiveengineering:material:8>, <minecraft:comparator>]]);

//重型工程块
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5>*2, [[<immersiveengineering:stone_decoration:4>, <immersiveengineering:material:9>, <immersiveengineering:stone_decoration:4>],[<immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal_decoration0:4>], [<immersiveengineering:stone_decoration:4>, <immersiveengineering:material:9>, <immersiveengineering:stone_decoration:4>]]);

//钢脚手架
mods.tconstruct.Casting.addBasinRecipe(<immersiveengineering:metal_decoration1:1>,<thermalexpansion:frame:64>,<liquid:steel>,576,true,600);

//高炉砖
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [[<minecraft:nether_brick>, <ore:sandstone>, <minecraft:nether_brick>],[<ore:sandstone>, <immersiveengineering:stone_decoration>, <ore:sandstone>], [<minecraft:nether_brick>, <ore:sandstone>, <minecraft:nether_brick>]]);

//钢线
recipes.remove(<immersiveengineering:material:23>);

//冲压模具
recipes.addShaped(<immersiveengineering:mold:7>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <tconstruct:cast>, <thermalfoundation:material:352>], [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <immersiveengineering:tool:1>.reuse()]]);
recipes.addShaped(<immersiveengineering:mold:6>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <tconstruct:cast>, <thermalfoundation:material:352>], [<thermalfoundation:material:352>, <immersiveengineering:tool:1>.reuse(), <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:5>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <tconstruct:cast>, <thermalfoundation:material:352>], [<immersiveengineering:tool:1>.reuse(), <thermalfoundation:material:352>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:4>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <tconstruct:cast>, <immersiveengineering:tool:1>.reuse()], [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:3>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<immersiveengineering:tool:1>.reuse(), <tconstruct:cast>, <thermalfoundation:material:352>], [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:2>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <immersiveengineering:tool:1>.reuse()],[<thermalfoundation:material:352>, <tconstruct:cast>, <thermalfoundation:material:352>], [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:1>, [[<thermalfoundation:material:352>, <immersiveengineering:tool:1>.reuse(), <thermalfoundation:material:352>],[<immersiveengineering:material:2>, <tconstruct:cast>, <immersiveengineering:material:2>], [<thermalfoundation:material:352>,<immersiveengineering:material:2>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:0>, [[<immersiveengineering:tool:1>.reuse(), <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <tconstruct:cast>, <thermalfoundation:material:352>], [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]]);

//燧石粉碎制造火药(粉碎机)
mods.immersiveengineering.Crusher.addRecipe(<minecraft:gunpowder>, <minecraft:flint>, 4000);

//==========================================================================================匠魂==========================================================================================
//水泥
recipes.remove(<tconstruct:soil>);
recipes.addShaped(<tconstruct:soil>*8, [[<ore:gravel>, <ore:sand>, <ore:gravel>],[<ore:sand>, <immersiveengineering:stone_decoration:4>, <ore:sand>], [<ore:gravel>, <ore:sand>, <ore:gravel>]]);

//冶炼炉加速器
recipes.remove(<simplesmelteryaccelerator:smeltery_accelerator>);
recipes.addShaped(<simplesmelteryaccelerator:smeltery_accelerator>, [[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],[<tconstruct:materials>, <embers:ancient_motive_core>, <tconstruct:materials>], [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);

//钢板
recipes.addShapeless(<thermalfoundation:material:352>, [<immersiveengineering:tool>.reuse(),<thermalfoundation:material:160>,<thermalfoundation:material:160>]);

//熔岩史莱姆树苗
recipes.addShaped(<tconstruct:slime_sapling:2>, [[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>],[<minecraft:blaze_powder>, <tconstruct:slime_sapling:1>, <minecraft:blaze_powder>], [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>]]);
recipes.addShaped(<tconstruct:slime_sapling:2>, [[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>],[<minecraft:blaze_powder>, <tconstruct:slime_sapling>, <minecraft:blaze_powder>], [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>]]);

//通透玻璃(感应炉)
mods.thermalexpansion.InductionSmelter.addRecipe(<tconstruct:clear_glass>*2, <minecraft:sand>, <minecraft:sand>, 4000);

//极寒之凛冰
mods.tconstruct.Melting.addRecipe(<liquid:cryotheum>*250,<ore:dustCryotheum>,300);

//空白模具(金属冲压机)
recipes.remove(<tconstruct:pattern>);
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:pattern>, <immersiveengineering:treated_wood>, <immersiveengineering:mold>, 1000, 4);

//板铸模(粉碎机)
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.immersiveengineering.Crusher.addRecipe(<tconstruct:cast_custom:3>, <tconstruct:cast>,4000);
mods.thermalexpansion.Pulverizer.addRecipe(<tconstruct:cast_custom:3>,<tconstruct:cast>, 3000);

//齿轮铸模
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
recipes.addShapeless(<immersiveengineering:mold:1>, [<tconstruct:cast_custom:4>]);
recipes.addShapeless(<tconstruct:cast_custom:4>, [<immersiveengineering:mold:1>]);

//铜/青铜齿轮
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:256>,<embers:archaic_circuit>,<liquid:copper>,576,false,100);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:291>,<embers:archaic_circuit>,<liquid:bronze>,576,false,100);

//智能输出端
recipes.remove(<tinker_io:smart_output>);
recipes.addShaped(<tinker_io:smart_output>, [[<ore:blockSeared>, <modularmachinery:itemmodularium>, <ore:blockSeared>],[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>], [<ore:blockSeared>, <modularmachinery:itemmodularium>, <ore:blockSeared>]]);

//熔融极寒末影
mods.tconstruct.Alloy.addRecipe(<liquid:gelid_enderium>*144,[<liquid:cryotheum>*1000,<liquid:enderium>*144]);
mods.nuclearcraft.salt_mixer.addRecipe([<liquid:cryotheum>*1000,<liquid:enderium>*144,<liquid:gelid_enderium>*144]);

//聚合矩阵
recipes.remove(<tconevo:material>);
recipes.addShaped(<tconevo:material>, [[<tconstruct:ingots:2>, <contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>],[<minecraft:redstone>, <minecraft:glowstone_dust>, <enderio:item_material:20>], [<enderio:item_material:20>, <mekanism:polyethene>, <ore:slimeball>]]);

//======================================================================================余烬======================================================================================
//灰烬能量催化器
recipes.remove(<embers:ember_activator>);
recipes.addShaped(<embers:ember_activator>, [[<thermalfoundation:material:163>, <thermalfoundation:material:163>, <thermalfoundation:material:163>],[<minecraft:iron_ingot>, <embers:ancient_motive_core>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>]]);

//锅炉
recipes.remove(<embers:boiler>);
recipes.addShaped(<embers:boiler>, [[<thermalfoundation:material:161>, <thermalfoundation:material:161>, <thermalfoundation:material:161>],[<thermalfoundation:material:160>, <embers:ember_activator>, <thermalfoundation:material:160>], [<thermalfoundation:material:160>, <minecraft:furnace>, <thermalfoundation:material:160>]]);

//太古电路
recipes.remove(<embers:archaic_circuit>);
recipes.addShaped(<embers:archaic_circuit>, [[null, <embers:archaic_brick>, null],[<embers:archaic_brick>, <embers:ancient_motive_core>, <embers:archaic_brick>], [null, <embers:archaic_brick>, null]]);
recipes.addShaped(<embers:archaic_circuit>, [[null, <bloodmagic:slate:1>, null],[<bloodmagic:slate:1>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <bloodmagic:slate:1>], [null, <bloodmagic:slate:1>, null]]);

//大气能量测量表
recipes.remove(<embers:ember_detector>);
recipes.addShaped(<embers:ember_detector>, [[null, <minecraft:iron_ingot>, null],[<thermalfoundation:material:128>, <embers:ember_gauge>, <thermalfoundation:material:128>], [<thermalfoundation:material:128>, <minecraft:iron_ingot>, <thermalfoundation:material:128>]]);

//太古动力核心
recipes.addShaped(<embers:ancient_motive_core>, [[<embers:archaic_brick>, <embers:crystal_ember>, <embers:archaic_brick>],[<embers:crystal_ember>, <minecraft:magma_cream>, <embers:crystal_ember>], [<embers:archaic_brick>, <embers:crystal_ember>, <embers:archaic_brick>]]);

//古代砖块
recipes.addShaped(<embers:archaic_brick> * 16, [[<tconstruct:soil>, <minecraft:brick_block>, <tconstruct:soil>],[<embers:block_caminite_brick>, <thermalfoundation:storage_alloy>, <embers:block_caminite_brick>], [<tconstruct:soil>, <minecraft:brick_block>, <tconstruct:soil>]]);

//灰烬晶体开采机
recipes.remove(<embers:ember_bore>);
recipes.addShaped(<embers:ember_bore>, [[<embers:archaic_bricks>, <minecraft:hopper>, <embers:archaic_bricks>],[<embers:block_caminite_brick>, <embers:stone_edge>, <embers:block_caminite_brick>], [<minecraft:stone_pickaxe>, <minecraft:iron_pickaxe>, <minecraft:stone_pickaxe>]]);

//机械核心
recipes.remove(<embers:mech_core>);
recipes.addShaped(<embers:mech_core>, [[<immersiveengineering:sheetmetal:8>, <contenttweaker:north_compass>, <immersiveengineering:sheetmetal:8>],[<minecraft:blaze_powder>, <embers:ancient_motive_core>, <minecraft:blaze_powder>], [<immersiveengineering:sheetmetal:8>,<thermalfoundation:material:355>, <immersiveengineering:sheetmetal:8>]]);
mods.immersiveengineering.BottlingMachine.addRecipe(<embers:mech_core>, <contenttweaker:blood_machine_core>, <liquid:water>*2000);

//搅拌机[WIP]
recipes.remove(<embers:mixer>);
recipes.addShaped(<embers:mixer>, [[<thermalfoundation:material:259>, <immersiveengineering:metal_decoration2:5>, <thermalfoundation:material:259>],[<immersiveengineering:stone_decoration:10>, <immersiveengineering:metal_decoration2:5>, <immersiveengineering:stone_decoration:10>], [<embers:block_caminite_brick>, <embers:mech_core>, <embers:block_caminite_brick>]]);

//铁匠锤
recipes.remove(<embers:tinker_hammer>);
recipes.addShaped(<embers:tinker_hammer>, [[<immersiveengineering:material:5>, <thermalfoundation:material:288>, <immersiveengineering:material:5>],[<thermalfoundation:material:259>, <immersiveengineering:tool>, <thermalfoundation:material:259>], [null, <immersiveengineering:material:2>, null]]);

//压印锤
recipes.remove(<embers:stamper>);
recipes.addShaped(<embers:stamper>, [[<embers:plate_caminite>, <immersiveengineering:metal_decoration0:5>, <embers:plate_caminite>],[<embers:plate_caminite>, <minecraft:piston>, <embers:plate_caminite>], [<embers:plate_caminite>, <immersiveengineering:metal_decoration0:3>, <embers:plate_caminite>]]);

//压印基座
recipes.remove(<embers:stamper_base>);
recipes.addShaped(<embers:stamper_base>, [[<embers:plate_caminite>, null, <embers:plate_caminite>],[<embers:plate_caminite>, <embers:stamp_flat>, <embers:plate_caminite>], [<embers:plate_caminite>, <embers:block_tank>, <embers:plate_caminite>]]);

//流体储罐
recipes.remove(<embers:block_tank>);
recipes.addShaped(<embers:block_tank>, [[<embers:plate_caminite>, null, <embers:plate_caminite>],[<thermalfoundation:material:352>, <minecraft:cauldron>, <thermalfoundation:material:352>], [<embers:plate_caminite>, <immersiveengineering:material:8>, <embers:plate_caminite>]]);

//黎明石(盐混合器/结晶器)
mods.nuclearcraft.salt_mixer.addRecipe([<liquid:gold>*144,<liquid:copper>*144,<liquid:liming>*288]);
mods.nuclearcraft.crystallizer.addRecipe([<liquid:liming>*144,<embers:ingot_dawnstone>]);

//炼金处理仓
recipes.remove(<chambers:alchemy_chamber>);
recipes.addShaped(<chambers:alchemy_chamber>, [[<embers:alchemy_pedestal>, <contenttweaker:extremecircuit>, <embers:alchemy_pedestal>],[<embers:winding_gears>, <embers:alchemy_tablet>, <embers:winding_gears>], [<embers:alchemy_pedestal>, <contenttweaker:extremecircuit>, <embers:alchemy_pedestal>]]);
recipes.addShaped(<chambers:alchemy_chamber>, [[<embers:alchemy_pedestal>, <contenttweaker:extremecircuit>, <embers:alchemy_pedestal>],[<tconevo:metal:34>, <embers:alchemy_tablet>, <tconevo:metal:29>], [<embers:alchemy_pedestal>, <contenttweaker:extremecircuit>, <embers:alchemy_pedestal>]]);

//注入合成处理仓
recipes.remove(<chambers:fusion_chamber>);
recipes.addShaped(<chambers:fusion_chamber>, [[<draconicevolution:draconic_energy_core>, <contenttweaker:extremecircuit>, <draconicevolution:draconic_energy_core>],[<tconevo:metal:10>, <draconicevolution:fusion_crafting_core>, <tconevo:metal:10>], [<draconicevolution:draconic_energy_core>, <contenttweaker:extremecircuit>, <draconicevolution:draconic_energy_core>]]);

//====================================================================================合成拓展====================================================================================
//黑铁锭
recipes.removeShapeless(<extendedcrafting:material>, [<ore:ingotIron>, <ore:dyeBlack>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<extendedcrafting:material>, <ore:ingotSteel> , <immersiveengineering:material:7>, 200, 200);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:160>, <extendedcrafting:material>*2);

//末影锭
recipes.removeShapeless(<extendedcrafting:material:36>, [ <minecraft:iron_ingot>, <minecraft:ender_pearl>]);
AlloySmelter.addRecipe(<extendedcrafting:material:36>*3, [<enderio:item_material:16>,<thermalfoundation:material:167>*2,<enderutilities:enderpart:1>],12000, 4.0f);

//末影之星(流体转置)
mods.thermalexpansion.Transposer.addFillRecipe(<extendedcrafting:material:40>,<minecraft:nether_star>, <liquid:gelid_enderium>*576, 8000);

//黑铁板
recipes.remove(<extendedcrafting:material:2>);
mods.immersiveengineering.MetalPress.addRecipe(<extendedcrafting:material:2>, <extendedcrafting:material>, <immersiveengineering:mold>, 1000, 2);
mods.thermalexpansion.Compactor.addPressRecipe(<extendedcrafting:material:2>, <extendedcrafting:material>, 4000);
mods.mekanism.compressor.addRecipe(<extendedcrafting:material>, <gas:liquidosmium>*200, <extendedcrafting:material:2>*3);

//流明精华
recipes.removeShapeless(<extendedcrafting:material:7> * 2, [<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:gunpowder>]);
mods.tconstruct.Alloy.addRecipe(<liquid:lumium_liquid>*100,[<liquid:redstone>*100,<liquid:glowstone>*500]);
mods.tconstruct.Casting.addTableRecipe(<extendedcrafting:material:7>,<minecraft:gunpowder>,<liquid:lumium_liquid>,100,true,100);

//自动化接口
recipes.addShaped(<extendedcrafting:interface>, [[<extendedcrafting:material>, <extendedcrafting:material:9>, <extendedcrafting:material>],[<contenttweaker:advancedcircuit>, <extendedcrafting:frame>, <contenttweaker:advancedcircuit>], [<extendedcrafting:material>, <extendedcrafting:material:2>, <extendedcrafting:material>]]);

//合成核心
recipes.remove(<extendedcrafting:crafting_core>);
recipes.addShaped(<extendedcrafting:crafting_core>, [[<extendedcrafting:storage>, <extendedcrafting:material:12>, <extendedcrafting:storage>],[<mekanism:controlcircuit:2>, <avaritia:double_compressed_crafting_table>, <mekanism:controlcircuit:2>], [<extendedcrafting:storage>, <extendedcrafting:frame>, <extendedcrafting:storage>]]);

//基座
recipes.remove(<extendedcrafting:pedestal>);
recipes.addShaped(<extendedcrafting:pedestal>, [[null, <extendedcrafting:material:16>, null],[null, <avaritia:double_compressed_crafting_table>, null], [<extendedcrafting:material:2>, <extendedcrafting:storage>, <extendedcrafting:material:2>]]);

//基础合成组件
recipes.remove(<extendedcrafting:material:14>);
recipes.addShapeless(<extendedcrafting:material:14>, [<extendedcrafting:material:2>,<extendedcrafting:material:7>,<minecraft:iron_ingot>,<thermalfoundation:material:132>]);

//======================================================================================杂项======================================================================================
//挖掘强化
recipes.remove(<oeintegration:excavatemodifier>);
recipes.addShaped(<oeintegration:excavatemodifier>, [[<thermalfoundation:material:357>, <embers:ingot_dawnstone>, <tconstruct:ingots:2>],[<nuclearcraft:ingot:7>, <immersiveengineering:material:9>, <nuclearcraft:ingot:7>], [<tconstruct:ingots:2>, <embers:ingot_dawnstone>, <thermalfoundation:material:357>]]);

//彩虹符文
recipes.remove(<quark:rune:16>);
mods.botania.RuneAltar.addRecipe(<quark:rune:16>, [<quark:rune>,<quark:rune:2>,<quark:rune:11>,<quark:rune:3>,<quark:rune:5>,<quark:rune:4>,<quark:rune:1>,<quark:rune:14>], 30000);

//炭灰红石
recipes.addShapeless(<deepmoblearning:soot_covered_redstone> * 2, [<minecraft:redstone>,<thermalfoundation:material:768>]);

//铬粉富集
mods.mekanism.enrichment.addRecipe(<contenttweaker:chrome_ore>,<contenttweaker:chrome_dust>*2);

//并行控制器(4*)
recipes.addShaped(<modularmachinery:blockparallelcontroller>, [[<appliedenergistics2:crafting_accelerator>, <contenttweaker:epiccircuit>, <appliedenergistics2:crafting_accelerator>],[<contenttweaker:epiccircuit>, <threng:material:6>, <contenttweaker:epiccircuit>], [<appliedenergistics2:crafting_accelerator>, <contenttweaker:epiccircuit>, <appliedenergistics2:crafting_accelerator>]]);

//凋零灰
mods.thermalexpansion.Pulverizer.addRecipe(<quark:black_ash>, <tconstruct:materials:17>, 4000);

//蕴魔不锈钢
AlloySmelter.addRecipe(<contenttweaker:mana_stainless_ingot>*3, [<contenttweaker:stainless_ingot>,<botania:manaresource:7>],8000, 2.0f);

//衰变聚爆矩阵
recipes.remove(<matteroverdrive:weapon_module_barrel:4>);
recipes.addShaped(<matteroverdrive:weapon_module_barrel:4>, [[null, <matteroverdrive:isolinear_circuit:3>, null],[<minecraft:nether_star>, <contenttweaker:advancedcircuit>, <minecraft:nether_star>], [<contenttweaker:tnt1>, <minecraft:dragon_egg>, <contenttweaker:tnt1>]]);

//飞龙/神龙屏蔽项链
recipes.remove(<draconicadditions:wyvern_shield_necklace>);
recipes.remove(<draconicadditions:draconic_shield_necklace>);
recipes.addShapeless(<draconicadditions:wyvern_shield_necklace>, [<draconicadditions:basic_shield_necklace>,<tconevo:metal>]);
recipes.addShapeless(<draconicadditions:draconic_shield_necklace>, [<draconicadditions:wyvern_shield_necklace>,<tconevo:metal:5>]);

//环氧树脂板
mods.tconstruct.Casting.addTableRecipe(<cregtech:epoxy_resin_sheet>,<tconstruct:cast_custom:3>,<liquid:epoxy_resin>,144,false,80);

//不锈钢板
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:stainless_plate>, <contenttweaker:stainless_ingot>, 8000);
mods.nuclearcraft.pressurizer.addRecipe([<contenttweaker:stainless_ingot>,<contenttweaker:stainless_plate>]);

//不锈钢杆
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:stainless_rod>*2, <contenttweaker:stainless_ingot>, <immersiveengineering:mold:2>,2000);

//大理石矿辞移除
<ore:stoneMarble>.remove(<quark:marble>);

//充能柚子
mods.thermalexpansion.Infuser.addRecipe(<contenttweaker:bat>,<cuisine:food:11>,16000);

//柚子有机灌注
mods.thermalexpansion.Insolator.addRecipe(<cuisine:food:11>*2,<thermalfoundation:fertilizer>, <cuisine:food:11>,4800);
mods.thermalexpansion.Insolator.addRecipe(<cuisine:food:11>*4,<thermalfoundation:fertilizer:1>, <cuisine:food:11>,7200);
mods.thermalexpansion.Insolator.addRecipe(<cuisine:food:11>*6,<thermalfoundation:fertilizer:2>, <cuisine:food:11>,9600);

//工业大麻有机灌注
mods.thermalexpansion.Insolator.addRecipe(<immersiveengineering:material:4>*4,<thermalfoundation:fertilizer>, <immersiveengineering:seed>,4800,<immersiveengineering:seed>,100);
mods.thermalexpansion.Insolator.addRecipe(<immersiveengineering:material:4>*8,<thermalfoundation:fertilizer:1>, <immersiveengineering:seed>,7200,<immersiveengineering:seed>,125);
mods.thermalexpansion.Insolator.addRecipe(<immersiveengineering:material:4>*12,<thermalfoundation:fertilizer:2>, <immersiveengineering:seed>,9600,<immersiveengineering:seed>,150);

//微光苋灌注重制
mods.thermalexpansion.Insolator.removeRecipe(<thermalfoundation:fertilizer:2>, <astralsorcery:blockcustomflower>);
mods.thermalexpansion.Insolator.addRecipe(<minecraft:glowstone_dust>*1,<thermalfoundation:fertilizer>, <astralsorcery:blockcustomflower>,12000,<astralsorcery:blockcustomflower>,100);
mods.thermalexpansion.Insolator.addRecipe(<minecraft:glowstone_dust>*2,<thermalfoundation:fertilizer:1>, <astralsorcery:blockcustomflower>,24000,<astralsorcery:blockcustomflower>,100);
mods.thermalexpansion.Insolator.addRecipe(<minecraft:glowstone_dust>*4,<thermalfoundation:fertilizer:2>, <astralsorcery:blockcustomflower>,48000,<astralsorcery:blockcustomflower>,100);

//大理石转换
recipes.addShapeless(<quark:marble>, [<astralsorcery:blockmarble>]);

//扫描器
recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>, [[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>],[<tconstruct:ingots:2>, <minecraft:redstone>, <tconstruct:ingots:2>], [<modularmachinery:itemmodularium>, <tconstruct:ingots:2>, <modularmachinery:itemmodularium>]]);

//YABBA储物桶
recipes.remove(<yabba:item_barrel>);
recipes.addShaped(<yabba:item_barrel> * 2, [[<botania:livingwood>, <enderutilities:enderpart:70>, <botania:livingwood>],[<enderutilities:barrel>, <enderutilities:enderpart:72>, <enderutilities:barrel>], [<botania:livingwood>, <enderutilities:enderpart:71>, <botania:livingwood>]]);

//YABBA储物桶空白升级
recipes.remove(<yabba:upgrade_blank>);
recipes.addShaped(<yabba:upgrade_blank>, [[<ore:slimeball>, <modularrouters:blank_module>, <ore:slimeball>],[<modularrouters:blank_upgrade>, <enderio:item_dark_steel_upgrade>, <modularrouters:blank_upgrade>], [<ore:slimeball>, <modularrouters:blank_upgrade>, <ore:slimeball>]]);

//YABBA奇异桶
recipes.remove(<yabba:antibarrel>);
recipes.addShaped(<yabba:antibarrel>, [[<enderutilities:enderpart:1>, <enderutilities:storage_0:7>, <enderutilities:enderpart:1>],[<enderutilities:storage_0:7>, <minecraft:ender_chest>, <enderutilities:storage_0:7>], [<enderutilities:enderpart:1>, <enderutilities:storage_0:7>, <enderutilities:enderpart:1>]]);

//YABBA储物桶连接器
recipes.remove(<yabba:item_barrel_connector>);
recipes.addShaped(<yabba:item_barrel_connector>, [[<environmentaltech:connector>, <yabba:upgrade_blank>, <environmentaltech:connector>],[<yabba:item_barrel>, <appliedenergistics2:part:220>, <yabba:item_barrel>], [<environmentaltech:connector>, <yabba:upgrade_blank>, <environmentaltech:connector>]]);

//YABBA储物桶容量升级
recipes.remove(<yabba:upgrade_iron_tier>);
recipes.remove(<yabba:upgrade_gold_tier>);
recipes.remove(<yabba:upgrade_diamond_tier>);
recipes.remove(<yabba:upgrade_star_tier>);
recipes.addShaped(<yabba:upgrade_iron_tier>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <yabba:upgrade_blank>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<yabba:upgrade_gold_tier>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],[<minecraft:gold_ingot>, <yabba:upgrade_blank>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
recipes.addShaped(<yabba:upgrade_diamond_tier>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, <yabba:upgrade_blank>, <minecraft:diamond>], [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);
recipes.addShaped(<yabba:upgrade_star_tier>, [[<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>],[<minecraft:nether_star>, <yabba:upgrade_blank>, <minecraft:nether_star>], [<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>]]);

//通量粉尘
mods.immersiveengineering.ArcFurnace.addRecipe(<fluxnetworks:flux>, <minecraft:redstone> , null, 20, 200);
mods.mekanism.enrichment.addRecipe(<minecraft:redstone>, <fluxnetworks:flux>*2);

//滤网基座
recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped(<waterstrainer:strainer_base>, [[<modularmachinery:itemmodularium>, <minecraft:web>, <modularmachinery:itemmodularium>],[<minecraft:hopper>, <minecraft:hopper>, <minecraft:hopper>], [<thermalfoundation:storage_alloy>, <immersiveengineering:wooden_device0>, <thermalfoundation:storage_alloy>]]);

//指北针
recipes.addShaped(<contenttweaker:north_compass>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[null, <minecraft:redstone>, null], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);

//移除锯末直接造纸
recipes.removeShaped(<minecraft:paper> * 6, [[null, null, null],[<thermalfoundation:material:800>, <thermalfoundation:material:800>, <thermalfoundation:material:800>], [null, null, null]]);

//阿卡什手册
recipes.remove(<akashictome:tome>);
recipes.addShapeless(<akashictome:tome>.withTag({"akashictome:is_morphing": 1 as byte, "akashictome:data": {tconstruct: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, astralsorcery: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "astralsorcery:itemjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "astralsorcery"}, Damage: 0 as short}, theoneprobe: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "theoneprobe:probenote", Count: 1 as byte, tag: {"akashictome:definedMod": "theoneprobe"}, Damage: 0 as short}, ftbquests: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, immersiveengineering: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, valkyrielib: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, rftools: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, ebwizardry: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "ebwizardry:wizard_handbook", Count: 1 as byte, tag: {"akashictome:definedMod": "ebwizardry"}, Damage: 0 as short}, extendedcrafting: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "extendedcrafting:guide", Count: 1 as byte, tag: {TopicsPage: 0, "akashictome:definedMod": "extendedcrafting", EntryId: 0, EntryPage: 0}, Damage: 0 as short}, botania: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "botania:lexicon", Count: 1 as byte, tag: {"knowledge.minecraft": 1 as byte, "akashictome:definedMod": "botania", "knowledge.alfheim": 1 as byte, "knowledge.dream": 1 as byte, "knowledge.relic": 1 as byte}, Damage: 0 as short}, rustic: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "rustic:book", Count: 1 as byte, tag: {"akashictome:definedMod": "rustic"}, Damage: 0 as short}, bloodmagic1: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "bloodmagic:sanguine_book", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodmagic1"}, Damage: 0 as short}, touhou_little_maid: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "touhou_little_maid", "patchouli:book": "touhou_little_maid:memorizable_gensokyo"}, Damage: 0 as short}, cookingforblockheads: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads"}, Damage: 0 as short}, rftoolscontrol: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "rftoolscontrol:rftoolscontrol_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftoolscontrol"}, Damage: 0 as short}, conarm: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, cuisine: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "cuisine:manual", Count: 1 as byte, tag: {"akashictome:definedMod": "cuisine"}, Damage: 0 as short}, embers: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "embers:codex", Count: 1 as byte, tag: {"akashictome:definedMod": "embers"}, Damage: 0 as short}, cfm: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "cfm:item_recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cfm"}, Damage: 0 as short}, cookingforblockheads1: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:displayName": "傻瓜烹饪手册 I", "akashictome:definedMod": "cookingforblockheads1", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a傻瓜烹饪手册 I§r）"}}, Damage: 1 as short}, ancientspellcraft: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "ancientspellcraft", "patchouli:book": "ancientspellcraft:manual"}, Damage: 0 as short}, cookingforblockheads2: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads2"}, Damage: 2 as short}, deepmoblearning: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "deepmoblearning", "patchouli:book": "deepmoblearning:book"}, Damage: 0 as short}, rftools1: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, modularrouters: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "guideapi:modularrouters-guidebook", Count: 1 as byte, tag: {"akashictome:displayName": "Modular Routers Guide", "akashictome:definedMod": "modularrouters", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§aModular Routers Guide§r）"}, "G-API_Category_Page": 0, "G-API_Category": 1, "G-API_Entry_Page": 0}, Damage: 0 as short}, bloodmagic: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "guideapi:bloodmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodmagic"}, Damage: 0 as short}}}), [<minecraft:stick>,<minecraft:stick>]);

//肉
recipes.addShapeless(<biomesoplenty:fleshchunk> * 4, [<biomesoplenty:flesh>]);

//末影人灵魂瓶
mods.thermalexpansion.Enchanter.addRecipe(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:enderman"})*4,<enderio:item_soul_vial>*4, <deepmoblearning:pristine_matter_enderman>, 8000, 3200, false);

//箱子转换
recipes.addShapeless(<minecraft:chest>, [<ore:chestWood>]);

//魔法泉水精炼
mods.thermalexpansion.Refinery.addRecipe(<liquid:fluidedmana>,<botania:manaresource:23>,<liquid:mana_water>*1000, 8000);

//巫术学魔力水晶
mods.mekanism.enrichment.addRecipe(<ebwizardry:crystal_ore>,<ebwizardry:magic_crystal>*3);

//时间之瓶
recipes.remove(<tiab:timeinabottle>);
recipes.addShaped(<tiab:timeinabottle>, [[<nuclearcraft:upgrade>, <minecraft:diamond>, <modularrouters:upgrade:1>],[<thermalfoundation:storage_alloy>, <minecraft:glass_bottle>, <thermalfoundation:storage_alloy>], [<thermalfoundation:storage_alloy>, <minecraft:clock>, <thermalfoundation:storage_alloy>]]);

//科研币
recipes.addShapeless(<contenttweaker:nova> * 9, [<contenttweaker:nova2>]);
recipes.addShaped(<contenttweaker:nova2>, [[<contenttweaker:nova>, <contenttweaker:nova>, <contenttweaker:nova>],[<contenttweaker:nova>, <contenttweaker:nova>, <contenttweaker:nova>], [<contenttweaker:nova>, <contenttweaker:nova>, <contenttweaker:nova>]]);

//水槽
recipes.remove(<cookingforblockheads:sink>);
recipes.addShaped(<cookingforblockheads:sink>, [[<minecraft:iron_trapdoor>, <minecraft:iron_trapdoor>, <minecraft:iron_trapdoor>],[<minecraft:hardened_clay>, <nuclearcraft:water_source_compact>, <minecraft:hardened_clay>], [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]]);

//套索
recipes.remove(<tinymobfarm:lasso>);
recipes.addShaped(<tinymobfarm:lasso>, [[null, <avaritia:resource>, null],[<enderutilities:enderpart:0>, <minecraft:lead>, <enderutilities:enderpart:0>], [null, <avaritia:resource>, null]]);

//机你太美控制器
recipes.addShaped(<modularmachinery:chicken_controller>, [[<contenttweaker:compressedresinplate>, <contenttweaker:compressedresinplate>, <contenttweaker:compressedresinplate>],[<minecraft:egg>, <contenttweaker:modularblock>, <minecraft:egg>], [<contenttweaker:compressedresinplate>, <contenttweaker:compressedresinplate>, <contenttweaker:compressedresinplate>]]);

//蒸馏塔控制器
recipes.addShaped(<modularmachinery:distillation_tower_controller>, [[<cregtech:cleanstainlesssteelmachinecasing>, <enderio:item_fluid_filter>, <cregtech:cleanstainlesssteelmachinecasing>],[<cregtech:cleanstainlesssteelmachinecasing>, <mekanism:basicblock:8>, <cregtech:cleanstainlesssteelmachinecasing>], [<cregtech:cleanstainlesssteelmachinecasing>, <enderio:item_fluid_filter>, <cregtech:cleanstainlesssteelmachinecasing>]]);

//流体加热机控制器
recipes.addShaped(<modularmachinery:fluid_heater_controller>, [[<mekanism:reinforcedalloy>, <cregtech:steelmachingcasing>, <mekanism:reinforcedalloy>],[<cregtech:steelmachingcasing>, <contenttweaker:modularblock>, <cregtech:steelmachingcasing>], [<mekanism:reinforcedalloy>, <mekanism:machineblock3:4>, <mekanism:reinforcedalloy>]]);

//并行计算机控制器
recipes.addShaped(<modularmachinery:parallel_computer_controller>, [[<modularmachinery:computer_controller>, <modularmachinery:computer_controller>, <modularmachinery:computer_controller>],[<modularmachinery:computer_controller>, <mekanism:controlcircuit:3>, <modularmachinery:computer_controller>], [<modularmachinery:computer_controller>, <modularmachinery:computer_controller>, <modularmachinery:computer_controller>]]);

//高温烘干室控制器
recipes.addShaped(<modularmachinery:hot_room_controller>, [[<modularmachinery:blockcasing>, <modularmachinery:blockcasing:1>, <modularmachinery:blockcasing>],[<modularmachinery:blockcasing:2>, <contenttweaker:modularblock>, <modularmachinery:blockcasing:2>], [<minecraft:magma>, <minecraft:magma>, <minecraft:magma>]]);

//压缩加速机控制器
recipes.addShaped(<modularmachinery:compressed_speeder_controller>, [[<modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>],[<modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>], [<modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>]]);

//牛牛机控制器
recipes.addShaped(<modularmachinery:niu_niu_controller>, [[<mekanism:glowplasticblock:14>, <cookingforblockheads:milk_jar>, <mekanism:glowplasticblock:14>],[<cookingforblockheads:milk_jar>, <contenttweaker:modularblock>, <cookingforblockheads:milk_jar>], [<mekanism:glowplasticblock:14>, <cookingforblockheads:milk_jar>, <mekanism:glowplasticblock:14>]]);

//艾雅法拉控制器
recipes.addShaped(<modularmachinery:zl2_controller>, [[<minecraft:wool:6>, <contenttweaker:shadow_zl>, <minecraft:wool:6>],[<contenttweaker:shadow_zl>, <contenttweaker:modularblock>, <contenttweaker:shadow_zl>], [<minecraft:wool:6>, <contenttweaker:shadow_zl>, <minecraft:wool:6>]]);

//工业蒸汽机控制器
recipes.addShaped(<modularmachinery:water_fire_controller>, [[<nuclearcraft:turbine_rotor_blade_steel>, <contenttweaker:advancedcircuit>, <nuclearcraft:turbine_rotor_blade_steel>],[<contenttweaker:advancedcircuit>, <contenttweaker:modularblock>, <contenttweaker:advancedcircuit>], [<plustic:osmiridiumblock>, <contenttweaker:advancedcircuit>, <plustic:osmiridiumblock>]]);

//虚空矿物采掘机控制器
recipes.addShaped(<modularmachinery:vein_miner_controller>, [[<minecraft:diamond_pickaxe>, <environmentaltech:connector>, <minecraft:diamond_pickaxe>],[<contenttweaker:basiccircuit>, <contenttweaker:modularblock>, <contenttweaker:basiccircuit>], [<minecraft:diamond_pickaxe>, <environmentaltech:connector>, <minecraft:diamond_pickaxe>]]);

//魔力凝聚器控制器
recipes.addShaped(<modularmachinery:mana_creation_controller>, [[<extrabotany:quantummanabuffer>, <contenttweaker:mana_crystal2>, <extrabotany:quantummanabuffer>],[<contenttweaker:mana_crystal2>, <modularmachinery:mana_fusion_controller>, <contenttweaker:mana_crystal2>], [<extrabotany:quantummanabuffer>, <contenttweaker:mana_crystal2>, <extrabotany:quantummanabuffer>]]);

//教皇块
recipes.addShapeless(<contenttweaker:zl_ingot> * 9, [<contenttweaker:zl_block>]);
recipes.addShaped(<contenttweaker:zl_block>, [[<contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>],[<contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>], [<contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>]]);

//银河能量块
recipes.addShapeless(<contenttweaker:galaxy_ingot> * 9, [<contenttweaker:galaxy_block>]);
recipes.addShaped(<contenttweaker:galaxy_block>, [[<contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>],[<contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>], [<contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>]]);

//宇宙能量块
recipes.addShapeless(<contenttweaker:universe_ingot> * 9, [<contenttweaker:universe_block>]);
recipes.addShaped(<contenttweaker:universe_block>, [[<contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>],[<contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>], [<contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>]]);

//能量金属
recipes.addShapeless(<contenttweaker:energy_ingot> * 9, [<tconevo:metal_block:7>]);
recipes.addShaped(<tconevo:metal_block:7>, [[<contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>],[<contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>], [<contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>]]);

//红晶锭
recipes.addShaped(<contenttweaker:redingot> * 2, [[<contenttweaker:ruby_dust>, <enderio:item_alloy_ingot:3>, <contenttweaker:ruby_dust>],[<enderio:item_alloy_ingot:3>, <contenttweaker:starstone>, <enderio:item_alloy_ingot:3>], [<contenttweaker:ruby_dust>, <enderio:item_alloy_ingot:3>, <contenttweaker:ruby_dust>]]);
AlloySmelter.addRecipe(<contenttweaker:redingot>*4, [<contenttweaker:ruby_dust>*4,<contenttweaker:starstone>,<enderio:item_alloy_ingot:3>*4],12000, 4.0f);

//ohxihh的头
recipes.addShapeless(<minecraft:skull:3>.withTag({SkullOwner: {Id: "1936e770-14bd-30f0-b41c-863e10b9c30b", Name: "ohxihh"}}), [<minecraft:skull:1>]);

//终极合成组件
recipes.remove(<extendedcrafting:material:17>);

//觉醒龙精华
recipes.addShaped(<contenttweaker:dragon_matter>, [[<contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>],[<contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>], [<contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>]]);
recipes.addShapeless(<contenttweaker:dragon_matter2> * 9, [<contenttweaker:dragon_matter>]);

//觉醒龙尘
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:dragon_dust2>,<contenttweaker:dragon_matter2>, <liquid:cloud_seed_concentrated>*500, 8000);

//物质转换器控制器
recipes.addShaped(<modularmachinery:matter_transformer_controller>, [[<tconevo:metal:5>, <contenttweaker:mastercircuit>, <tconevo:metal:5>],[<contenttweaker:mastercircuit>, <contenttweaker:modularblock>, <contenttweaker:mastercircuit>], [<tconevo:metal:5>, <contenttweaker:mastercircuit>, <tconevo:metal:5>]]);

//机械电路板
recipes.addShaped(<modularmachinery:blockcasing:5>, [[<mekanism:controlcircuit:2>, <contenttweaker:epiccircuit>, <mekanism:controlcircuit:2>],[<contenttweaker:epiccircuit>, <modularmachinery:blockcasing:4>, <contenttweaker:epiccircuit>], [<mekanism:controlcircuit:2>, <contenttweaker:epiccircuit>, <mekanism:controlcircuit:2>]]);

//机械通风口
recipes.addShaped(<modularmachinery:blockcasing:1>, [[<immersiveengineering:metal_decoration0:4>, <modularmachinery:blockcasing:4>, <immersiveengineering:metal_decoration0:4>],[<modularmachinery:blockcasing:4>, <immersiveengineering:wooden_device1:1>, <modularmachinery:blockcasing:4>], [<immersiveengineering:metal_decoration0:4>, <modularmachinery:blockcasing:4>, <immersiveengineering:metal_decoration0:4>]]);

//银河能量锭
AlloySmelter.addRecipe(<contenttweaker:galaxy_ingot>, [<avaritia:resource:1>,<draconicevolution:draconic_ingot>*4,<avaritia:resource:4>*8],36000, 4.0f);

//黑曜石TNT
mods.jei.JEI.removeAndHide(<mekanism:obsidiantnt>);
recipes.addShaped(<contenttweaker:tnt1>, [[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

//中子粒
recipes.remove(<avaritia:resource:3>);

//中子锭
recipes.remove(<avaritia:resource:4>);
mods.thermalexpansion.Factorizer.removeRecipeCombine(<avaritia:resource:3> * 9);

//炭灰机器外壳
recipes.remove(<deepmoblearning:machine_casing>);
recipes.addShaped(<deepmoblearning:machine_casing>, [[<deepmoblearning:soot_covered_plate>, <plustic:osgloglasblock>, <deepmoblearning:soot_covered_plate>],[<plustic:osmiridiumblock>, <nuclearcraft:part:12>, <plustic:osmiridiumblock>], [<deepmoblearning:soot_covered_plate>, <plustic:osgloglasblock>, <deepmoblearning:soot_covered_plate>]]);

//通量核心
recipes.remove(<fluxnetworks:fluxcore>);
recipes.addShaped(<fluxnetworks:fluxcore>*4, [[<minecraft:obsidian>, <fluxnetworks:flux>, <minecraft:obsidian>],[<thermalfoundation:material:1025>, <minecraft:ender_eye>, <thermalfoundation:material:1025>], [<minecraft:obsidian>, <fluxnetworks:flux>, <minecraft:obsidian>]]);

//陨石
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/appliedenergistics2:sky_stone_block", <appliedenergistics2:sky_stone_block>*8, 400, 100, 
[
	<astralsorcery:blockmarble>, <astralsorcery:blockmarble>,<astralsorcery:blockmarble>,
	<astralsorcery:blockmarble>, <extendedcrafting:storage>,<astralsorcery:blockmarble>, 
	<astralsorcery:blockmarble>, <astralsorcery:blockmarble>,<astralsorcery:blockmarble>
]);

//月之石
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/contenttweaker:starstone", <contenttweaker:starstone>, 400, 100, 
[
	<astralsorcery:blockmarble>, <astralsorcery:blockmarble>,<astralsorcery:blockmarble>,
	<astralsorcery:blockmarble>, <ore:dustSkyStone>,<astralsorcery:blockmarble>, 
	<astralsorcery:blockmarble>, <astralsorcery:blockmarble>,<astralsorcery:blockmarble>
]);

//锇萤黑曜合金
AlloySmelter.addRecipe(<plustic:osgloglasingot>, [<mekanism:ingot:1>,<mekanism:ingot>,<mekanism:ingot:3>],12000, 4.0f);

//基础集成电路
recipes.addShaped(<contenttweaker:basiccircuit>, [[<immersiveengineering:material:20>, <extendedcrafting:material:8>, <immersiveengineering:material:20>],[<immersiveengineering:material:20>, <contenttweaker:compressedresinplate>, <immersiveengineering:material:20>], [<immersiveengineering:material:20>, <immersiveengineering:material:27>, <immersiveengineering:material:20>]]);

//进阶集成电路
recipes.addShaped(<contenttweaker:advancedcircuit>, [[<immersiveengineering:wirecoil:7>, <extendedcrafting:material:9>, <immersiveengineering:wirecoil:7>],[<plustic:osmiridiumingot>, <contenttweaker:advancedcircuitplate>, <plustic:osmiridiumingot>], [<immersiveengineering:wirecoil:7>, <immersiveengineering:material:27>, <immersiveengineering:wirecoil:7>]]);

//末影珍珠堆叠上限
<minecraft:ender_pearl>.maxStackSize = 64;

//流体桶堆叠
<forge:bucketfilled>.maxStackSize = 64;

//大型蒸汽
recipes.addShaped(<modularmachinery:large_boiler_controller>, [[<immersiveengineering:sheetmetal:6>, <immersiveengineering:sheetmetal:6>, null],[<immersiveengineering:sheetmetal:6>, <immersiveengineering:sheetmetal:6>, null], [null, null, null]]);

//土高炉控制器
recipes.addShaped(<modularmachinery:primitive_blast_furnace_controller>, [[<minecraft:brick_block>, <minecraft:brick_block>, null],[<minecraft:brick_block>, <minecraft:brick_block>, null], [null, null, null]]);

//树脂处理工厂控制器
recipes.addShaped(<modularmachinery:factory_controller>, [[<thermalfoundation:material:657>, <thermalexpansion:device:3>, <thermalfoundation:material:657>],[<thermalexpansion:augment:288>, <contenttweaker:modularblock>, <thermalexpansion:augment:288>], [<thermalfoundation:material:657>, <thermalexpansion:machine:2>, <thermalfoundation:material:657>]]);

//====================================================================================应用能源====================================================================================
//ME驱动器
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [[<thermalfoundation:material:132>, <appliedenergistics2:material:24>, <thermalfoundation:material:132>],[<appliedenergistics2:part:16>, <appliedenergistics2:chest>, <appliedenergistics2:part:16>], [<thermalfoundation:material:132>, <appliedenergistics2:material:24>, <thermalfoundation:material:132>]]);

//分子装配室
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler> * 2, [[<nuclearcraft:ingot:7>, <botania:managlass>, <nuclearcraft:ingot:7>],[<appliedenergistics2:crafting_unit>, <thermalexpansion:machine:11>, <appliedenergistics2:crafting_unit>], [<nuclearcraft:ingot:7>, <botania:managlass>, <nuclearcraft:ingot:7>]]);

//无线设置工具
recipes.remove(<ae2stuff:wireless_kit>);
recipes.addShaped(<ae2stuff:wireless_kit>, [[<ae2wtlib:infinity_booster_card>, <appliedenergistics2:material:41>, <ae2wtlib:infinity_booster_card>],[<appliedenergistics2:material:9>, <appliedenergistics2:certus_quartz_wrench>, <appliedenergistics2:material:9>], [<ae2wtlib:infinity_booster_card>, <appliedenergistics2:material:9>, <ae2wtlib:infinity_booster_card>]]);

//无线增幅卡
recipes.remove(<ae2wtlib:infinity_booster_card>);
recipes.addShaped(<ae2wtlib:infinity_booster_card> * 8, [[null, <appliedenergistics2:material:41>, null],[<appliedenergistics2:material:9>, <appliedenergistics2:material:28>, <appliedenergistics2:material:9>], [null, <rftools:infused_enderpearl>, null]]);

//无线接收器
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [[null, <appliedenergistics2:material:9>, null],[<mekanism:ingot:1>, <environmentaltech:connector>, <mekanism:ingot:1>], [null, <mekanism:ingot:1>, null]]);

//充能赛特斯石英产高纯赛特斯石英
mods.threng.Centrifuge.addRecipe(<appliedenergistics2:material:10>*2,<appliedenergistics2:material:1>);

//石英磨具磨焦煤粉
Grinder.addRecipe(<immersiveengineering:material:17>, <immersiveengineering:material:6>, 5);
Grinder.addRecipe(<immersiveengineering:material:17>*9, <immersiveengineering:stone_decoration:3>, 15);

//充能赛特斯石英磨粉
mods.thermalexpansion.Pulverizer.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>, 4000);

//压印模板
recipes.addShaped(<appliedenergistics2:material:13>, [[<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:10>, <appliedenergistics2:smooth_sky_stone_block>],[<appliedenergistics2:material:10>, <tconstruct:large_plate>.withTag({Material: "aquamarine"}), <appliedenergistics2:material:10>], [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:10>, <appliedenergistics2:smooth_sky_stone_block>]]);
recipes.addShaped(<appliedenergistics2:material:15>, [[<appliedenergistics2:smooth_sky_stone_block>, <minecraft:gold_ingot>, <appliedenergistics2:smooth_sky_stone_block>],[<minecraft:gold_ingot>, <tconstruct:large_plate>.withTag({Material: "aquamarine"}), <minecraft:gold_ingot>], [<appliedenergistics2:smooth_sky_stone_block>, <minecraft:gold_ingot>, <appliedenergistics2:smooth_sky_stone_block>]]);
recipes.addShaped(<appliedenergistics2:material:19>, [[<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:5>, <appliedenergistics2:smooth_sky_stone_block>],[<appliedenergistics2:material:5>, <tconstruct:large_plate>.withTag({Material: "aquamarine"}), <appliedenergistics2:material:5>], [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:5>, <appliedenergistics2:smooth_sky_stone_block>]]);
recipes.addShaped(<appliedenergistics2:material:14>, [[<appliedenergistics2:smooth_sky_stone_block>, <minecraft:diamond>, <appliedenergistics2:smooth_sky_stone_block>],[<minecraft:diamond>, <tconstruct:large_plate>.withTag({Material: "aquamarine"}), <minecraft:diamond>], [<appliedenergistics2:smooth_sky_stone_block>, <minecraft:diamond>, <appliedenergistics2:smooth_sky_stone_block>]]);

//ME箱子
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [[<ore:blockGlass>, <appliedenergistics2:part:380>,<ore:blockGlass>],[<appliedenergistics2:part:16>, <ironchest:iron_chest:6>, <appliedenergistics2:part:16>], [<thermalfoundation:material:132>,<appliedenergistics2:material:12>, <thermalfoundation:material:132>]]);

//ME控制器
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [[<appliedenergistics2:material:12>, <thermalfoundation:material:132>, <appliedenergistics2:material:12>],[<contenttweaker:basiccircuit>, <appliedenergistics2:material:24>, <contenttweaker:basiccircuit>], [<appliedenergistics2:material:12>, <thermalfoundation:material:132>, <appliedenergistics2:material:12>]]);

//存储组件(4.16.64.256.1024.4096.16384)
recipes.remove(<appliedenergistics2:material:38>);
recipes.remove(<appliedenergistics2:material:37>);
recipes.remove(<appliedenergistics2:material:36>);
recipes.remove(<aeadditions:storage.component>);
recipes.remove(<aeadditions:storage.component:1>);
recipes.remove(<aeadditions:storage.component:2>);
recipes.remove(<aeadditions:storage.component:3>);
recipes.addShaped(<appliedenergistics2:material:36>, [[<thermalfoundation:material:132>, <appliedenergistics2:material:9>, <thermalfoundation:material:132>],[<appliedenergistics2:material:35>, <appliedenergistics2:material:23>, <appliedenergistics2:material:35>], [<thermalfoundation:material:132>, <appliedenergistics2:material:35>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:material:37>, [[<enderutilities:enderpart>, <appliedenergistics2:material:9>, <enderutilities:enderpart>],[<appliedenergistics2:material:36>, <appliedenergistics2:material:23>, <appliedenergistics2:material:36>], [<enderutilities:enderpart>, <appliedenergistics2:material:36>, <enderutilities:enderpart>]]);
recipes.addShaped(<appliedenergistics2:material:38>, [[<nuclearcraft:ingot:7>, <appliedenergistics2:material:41>, <nuclearcraft:ingot:7>],[<appliedenergistics2:material:37>, <appliedenergistics2:material:23>, <appliedenergistics2:material:37>], [<nuclearcraft:ingot:7>, <appliedenergistics2:material:37>, <nuclearcraft:ingot:7>]]);
recipes.addShaped(<aeadditions:storage.component>, [[<contenttweaker:stainless_ingot>, <appliedenergistics2:material:41>, <contenttweaker:stainless_ingot>],[<appliedenergistics2:material:38>, <appliedenergistics2:material:23>, <appliedenergistics2:material:38>], [<contenttweaker:stainless_ingot>, <appliedenergistics2:material:38>, <contenttweaker:stainless_ingot>]]);
recipes.addShaped(<aeadditions:storage.component:1>, [[<draconicevolution:draconic_ingot>, <yabba:item_barrel_connector>, <draconicevolution:draconic_ingot>],[<aeadditions:storage.component>, <appliedenergistics2:material:23>, <aeadditions:storage.component>], [<draconicevolution:draconic_ingot>, <aeadditions:storage.component>, <draconicevolution:draconic_ingot>]]);
recipes.addShaped(<aeadditions:storage.component:2>, [[<draconicevolution:draconic_ingot>, <yabba:item_barrel_connector>, <draconicevolution:draconic_ingot>],[<aeadditions:storage.component:1>, <appliedenergistics2:material:23>, <aeadditions:storage.component:1>], [<draconicevolution:draconic_ingot>, <aeadditions:storage.component:1>, <draconicevolution:draconic_ingot>]]);
recipes.addShaped(<aeadditions:storage.component:3>, [[<tconevo:metal:5>, <yabba:item_barrel_connector>, <tconevo:metal:5>],[<aeadditions:storage.component:2>, <appliedenergistics2:material:23>, <aeadditions:storage.component:2>], [<tconevo:metal:5>, <aeadditions:storage.component:2>, <tconevo:metal:5>]]);

//流体转置洗去线缆颜色
var group1 as IItemStack[]=[
<appliedenergistics2:part>,
<appliedenergistics2:part:1>,
<appliedenergistics2:part:2>,
<appliedenergistics2:part:3>,
<appliedenergistics2:part:4>,
<appliedenergistics2:part:5>,
<appliedenergistics2:part:6>,
<appliedenergistics2:part:7>,
<appliedenergistics2:part:8>,
<appliedenergistics2:part:16>,
<appliedenergistics2:part:15>,
<appliedenergistics2:part:14>,
<appliedenergistics2:part:13>,
<appliedenergistics2:part:12>,
<appliedenergistics2:part:11>,
<appliedenergistics2:part:10>,
<appliedenergistics2:part:9>
];  
for a in group1{
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:part:16>, a, <liquid:water> * 1000, 1000);
}

var group2 as IItemStack[]=[
<appliedenergistics2:part:20>,
<appliedenergistics2:part:21>,
<appliedenergistics2:part:22>,
<appliedenergistics2:part:23>,
<appliedenergistics2:part:24>,
<appliedenergistics2:part:25>,
<appliedenergistics2:part:26>,
<appliedenergistics2:part:27>,
<appliedenergistics2:part:28>,
<appliedenergistics2:part:36>,
<appliedenergistics2:part:35>,
<appliedenergistics2:part:34>,
<appliedenergistics2:part:33>,
<appliedenergistics2:part:32>,
<appliedenergistics2:part:31>,
<appliedenergistics2:part:30>,
<appliedenergistics2:part:29>
];  
for b in group2{
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:part:36>, b, <liquid:water> * 1000, 1000);
}

var group3 as IItemStack[]=[
<appliedenergistics2:part:40>,
<appliedenergistics2:part:41>,
<appliedenergistics2:part:42>,
<appliedenergistics2:part:43>,
<appliedenergistics2:part:44>,
<appliedenergistics2:part:45>,
<appliedenergistics2:part:46>,
<appliedenergistics2:part:47>,
<appliedenergistics2:part:48>,
<appliedenergistics2:part:56>,
<appliedenergistics2:part:55>,
<appliedenergistics2:part:54>,
<appliedenergistics2:part:53>,
<appliedenergistics2:part:52>,
<appliedenergistics2:part:51>,
<appliedenergistics2:part:50>,
<appliedenergistics2:part:49>
];  
for c in group3{
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:part:56>, c, <liquid:water> * 1000, 1000);
}

var group4 as IItemStack[]=[
<appliedenergistics2:part:60>,
<appliedenergistics2:part:61>,
<appliedenergistics2:part:62>,
<appliedenergistics2:part:63>,
<appliedenergistics2:part:64>,
<appliedenergistics2:part:65>,
<appliedenergistics2:part:66>,
<appliedenergistics2:part:67>,
<appliedenergistics2:part:68>,
<appliedenergistics2:part:69>,
<appliedenergistics2:part:70>,
<appliedenergistics2:part:71>,
<appliedenergistics2:part:72>,
<appliedenergistics2:part:73>,
<appliedenergistics2:part:74>,
<appliedenergistics2:part:75>,
<appliedenergistics2:part:76>
];  
for d in group4{
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:part:76>, d, <liquid:water> * 1000, 1000);
}

var group5 as IItemStack[]=[
<appliedenergistics2:part:500>,
<appliedenergistics2:part:501>,
<appliedenergistics2:part:502>,
<appliedenergistics2:part:503>,
<appliedenergistics2:part:504>,
<appliedenergistics2:part:505>,
<appliedenergistics2:part:506>,
<appliedenergistics2:part:507>,
<appliedenergistics2:part:508>,
<appliedenergistics2:part:509>,
<appliedenergistics2:part:510>,
<appliedenergistics2:part:511>,
<appliedenergistics2:part:512>,
<appliedenergistics2:part:513>,
<appliedenergistics2:part:514>,
<appliedenergistics2:part:515>,
<appliedenergistics2:part:516>
];  
for d in group5{
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:part:516>, d, <liquid:water> * 1000, 1000);
}

//====================================================================================末影设备====================================================================================
//末影合金(基础)
recipes.remove(<enderutilities:enderpart>);
mods.immersiveengineering.ArcFurnace.addRecipe(<enderutilities:enderpart>, <minecraft:iron_ingot> , <immersiveengineering:material:7>, 200, 200,[<minecraft:ender_pearl>]);
AlloySmelter.addRecipe(<enderutilities:enderpart>*3, [<contenttweaker:stainless_ingot>,<minecraft:ender_pearl>],4000, 1.0f);

//储物桶结构升级
recipes.remove(<enderutilities:enderpart:71>);
recipes.addShaped(<enderutilities:enderpart:71>, [[<minecraft:obsidian>, <enderio:block_dark_iron_bars>, <minecraft:obsidian>],[<enderio:block_dark_iron_bars>, <ore:slimeball>, <enderio:block_dark_iron_bars>], [<minecraft:obsidian>, <enderio:block_dark_iron_bars>, <minecraft:obsidian>]]);

//储物桶容量升级
recipes.remove(<enderutilities:enderpart:72>);
recipes.addShaped(<enderutilities:enderpart:72>, [[<enderutilities:enderpart>, <ironchest:iron_chest:6>, <enderutilities:enderpart>],[<enderutilities:enderpart>, <enderutilities:barrel>, <enderutilities:enderpart>], [<enderutilities:enderpart>, <ironchest:iron_chest:6>, <enderutilities:enderpart>]]);

//末影合金(增强)
recipes.remove(<enderutilities:enderpart:1>);
mods.botania.ManaInfusion.addInfusion(<enderutilities:enderpart:1>,<enderutilities:enderpart>, 20000);

//末影合金(高级)
recipes.remove(<enderutilities:enderpart:2>);
AlloySmelter.addRecipe(<enderutilities:enderpart:2>, [<deepmoblearning:pristine_matter_enderman>,<enderutilities:enderpart:1>],12000, 4.0f);

//6位存储卡
recipes.removeShaped(<enderutilities:enderpart:51>*2, [[null, <minecraft:gold_ingot>, null],[<enderutilities:enderpart>, <minecraft:chest>, <enderutilities:enderpart>], [<enderutilities:enderpart>, <minecraft:chest>, <enderutilities:enderpart>]]);
recipes.addShaped(<enderutilities:enderpart:51>, [[null, <thermalfoundation:material:25>, null],[<enderutilities:enderpart>, <minecraft:chest>, <enderutilities:enderpart>], [<enderutilities:enderpart>, <minecraft:chest>, <enderutilities:enderpart>]]);

//10位存储卡
recipes.remove(<enderutilities:enderpart:53>);
recipes.addShapedMirrored(<enderutilities:enderpart:53>, [[<enderutilities:enderpart:52>, <enderutilities:enderpart:52>, null],[<enderutilities:enderpart:52>, <enderutilities:enderpart:52>, null], [<enderutilities:enderpart:1>, <enderutilities:enderpart:1>, null]]);
recipes.addShapeless(<enderutilities:enderpart:53> * 4, [<enderutilities:enderpart:54>]);

//12位存储卡
recipes.remove(<enderutilities:enderpart:54>);
recipes.addShapedMirrored(<enderutilities:enderpart:54>, [[<enderutilities:enderpart:53>, <enderutilities:enderpart:53>, null],[<enderutilities:enderpart:53>, <enderutilities:enderpart:53>, null], [<enderutilities:enderpart:2>, <enderutilities:enderpart:2>, null]]);

//====================================================================================模块化====================================================================================
//模块化合金锭(浇筑)
recipes.remove(<modularmachinery:itemmodularium>);
recipes.addShaped(<contenttweaker:modularblock>, [[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>]]);
recipes.addShapeless(<modularmachinery:itemmodularium>*9, [<contenttweaker:modularblock>]);
mods.tconstruct.Casting.addTableRecipe(<modularmachinery:itemmodularium>,<tconstruct:cast_custom>,<liquid:modular_liquid>,144,false,80);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:modularblock>,null,<liquid:modular_liquid>,1296,false,720);

//模块化合金锭(合金炉)
AlloySmelter.addRecipe(<modularmachinery:itemmodularium>*4, [<thermalfoundation:material:163>*3,<thermalfoundation:material:161>*3,<minecraft:redstone>*4],12000, 4.0f);

//模块化合金锭(电弧炉)
mods.immersiveengineering.ArcFurnace.addRecipe(<modularmachinery:itemmodularium>*4, <thermalfoundation:material:161>*3 , null, 300, 200, [<thermalfoundation:material:163>*3,<minecraft:redstone>*4]);

//熔融模块化合金
mods.tconstruct.Alloy.addRecipe(<liquid:modular_liquid>*576,[<liquid:redstone>*400,<liquid:bronze>*432,<liquid:electrum>*432]);
mods.tconstruct.Melting.addRecipe(<liquid:modular_liquid>*144,<modularmachinery:itemmodularium>,600);
mods.tconstruct.Melting.addRecipe(<liquid:modular_liquid>*1296,<contenttweaker:modularblock>,900);

//机器结构投影仪
recipes.addShaped(<modularmachinery:machine_projector>, [[null, null, <modularmachinery:itemmodularium>],[null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);

//小型筛矿机控制器
recipes.addShaped(<modularmachinery:mini_orescreening_machine_controller>, [[<embers:block_dawnstone>, <modularmachinery:blockcasing>, <embers:block_dawnstone>],[<modularmachinery:blockcasing>, <embers:mech_core>, <modularmachinery:blockcasing>], [<immersiveengineering:metal_decoration0:5>, <nuclearcraft:ingot_block:7>, <immersiveengineering:metal_decoration0:5>]]);

//魔力聚合装置控制器
recipes.addShaped(<modularmachinery:mana_fusion_controller>, [[<botania:manaresource:14>, <botania:rune:8>, <botania:manaresource:14>],[<contenttweaker:advancedcircuit>, <contenttweaker:modularblock>, <contenttweaker:advancedcircuit>], [<botania:livingrock>, <botania:runealtar>, <botania:livingrock>]]);

//大型化学反应釜控制器
recipes.addShaped(<modularmachinery:large_chemical_reactor_controller>, [[<thermalfoundation:storage_alloy>, <contenttweaker:basiccircuit>, <thermalfoundation:storage_alloy>],[<immersiveengineering:metal_decoration0:5>, <contenttweaker:modularblock>, <immersiveengineering:metal_decoration0:5>], [<thermalfoundation:storage_alloy>, <contenttweaker:basiccircuit>, <thermalfoundation:storage_alloy>]]);

//真空冷冻机控制器
recipes.addShaped(<modularmachinery:vacuum_freezer_controller>, [[<minecraft:ice>, <minecraft:packed_ice>, <minecraft:ice>],[<thermalfoundation:storage:6>, <contenttweaker:modularblock>, <thermalfoundation:storage:6>], [<contenttweaker:basiccircuit>, <thermalfoundation:storage:6>, <contenttweaker:basiccircuit>]]);

//聚爆压缩机控制器
recipes.addShaped(<modularmachinery:implosion_compressor_controller>, [[<contenttweaker:tnt1>, <contenttweaker:tnt1>, <contenttweaker:tnt1>],[<minecraft:obsidian>, <contenttweaker:modularblock>, <minecraft:obsidian>], [<contenttweaker:advancedcircuit>, <minecraft:obsidian>, <contenttweaker:advancedcircuit>]]);

//生物模型装配间控制器
recipes.addShaped(<modularmachinery:mob_model_controller>, [[<contenttweaker:mana_crystal2>, <contenttweaker:mana_crystal2>, <contenttweaker:mana_crystal2>],[<tconevo:metal>, <modularmachinery:advanced_assemble_machine_controller>, <tconevo:metal>], [<contenttweaker:epiccircuit>, <deepmoblearning:data_model_blank>, <contenttweaker:epiccircuit>]]);

//急速衰变反应堆控制器
recipes.addShaped(<modularmachinery:fast-decay_reactor_controller>, [[<nuclearcraft:part:3>, <nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:part:3>],[<contenttweaker:epiccircuit>, <contenttweaker:modularblock>, <contenttweaker:epiccircuit>], [<nuclearcraft:part:3>, <nuclearcraft:salt_fission_controller>, <nuclearcraft:part:3>]]);

//大型中子汇聚装置控制器
recipes.addShaped(<modularmachinery:large_neutron_collector_controller>, [[<nuclearcraft:part:3>, <modularmachinery:neutron_collector_controller>, <nuclearcraft:part:3>],[<modularmachinery:neutron_collector_controller>, <mekanism:controlcircuit:3>, <modularmachinery:neutron_collector_controller>], [<nuclearcraft:part:3>, <modularmachinery:neutron_collector_controller>, <nuclearcraft:part:3>]]);

//环境传感器
recipes.addShaped(<gugu-utils:environmenthatch>, [[<minecraft:daylight_detector>, <naturescompass:naturescompass>, <quark:rain_detector>],[<contenttweaker:north_compass>, <modularmachinery:blockcasing:5>, <contenttweaker:north_compass>], [<modularmachinery:blockcasing:4>, <minecraft:clock>, <modularmachinery:blockcasing:4>]]);

//温差电堆控制器
recipes.addShaped(<modularmachinery:temp_energy_controller>, [[<ore:blockUranium>, <immersiveengineering:metal_device1:3>, <ore:blockUranium>],[<immersiveengineering:metal_device1:3>, <contenttweaker:modularblock>, <immersiveengineering:metal_device1:3>], [<immersiveengineering:sheetmetal:6>, <immersiveengineering:metal_device1:3>, <immersiveengineering:sheetmetal:6>]]);

//魔法泉控制器挖掘等级
<modularmachinery:mana_water_controller>.asBlock().definition.setHarvestLevel("pickaxe",100);

//高/低烈度核裂变增殖反应堆控制器
recipes.addShaped(<modularmachinery:high_intensity_nuclear_fission_breeder_reactor_controller>, [[<nuclearcraft:fuel_uranium:7>, <nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:fuel_uranium:7>],[<contenttweaker:epiccircuit>, <contenttweaker:modularblock>, <contenttweaker:epiccircuit>], [<nuclearcraft:fuel_uranium:7>, <nuclearcraft:salt_fission_controller>, <nuclearcraft:fuel_uranium:7>]]);
recipes.addShaped(<modularmachinery:low_intensity_nuclear_fission_breeder_reactor_controller>, [[<nuclearcraft:fuel_uranium:5>, <nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:fuel_uranium:5>],[<contenttweaker:epiccircuit>, <contenttweaker:modularblock>, <contenttweaker:epiccircuit>], [<nuclearcraft:fuel_uranium:5>, <nuclearcraft:salt_fission_controller>, <nuclearcraft:fuel_uranium:5>]]);

//======================================================================================热力======================================================================================
//流明精华(流体转置)
mods.thermalexpansion.Transposer.addFillRecipe(<extendedcrafting:material:7>*2,<minecraft:gunpowder>, <liquid:lumium_liquid>*100, 8000);

//水产捕捞器
recipes.remove(<thermalexpansion:device:4>);
recipes.addShaped(<thermalexpansion:device:4>, [[null, <thermalfoundation:tool.fishing_rod_platinum>, null],[<contenttweaker:advancedcircuitplate>, <nuclearcraft:part:10>, <contenttweaker:advancedcircuitplate>], [<thermalfoundation:material:295>, <thermalfoundation:bait:2>, <thermalfoundation:material:295>]]);

//锯木机
recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped(<thermalexpansion:machine:2>, [[null, <thermalfoundation:material:657>, null],[<modularmachinery:blockcasing:4>, <thermalexpansion:frame>, <modularmachinery:blockcasing:4>], [<thermalfoundation:material:292>, <thermalfoundation:material:513>, <thermalfoundation:material:292>]]);

//树脂覆盖的机械框架(流体转置)
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:resinmachineblock>,<thermalexpansion:frame>, <liquid:resin>*2500, 8000);

//焦煤粉(磨粉机)
mods.thermalexpansion.Pulverizer.addRecipe(<immersiveengineering:material:17>, <immersiveengineering:material:6>, 4000, <immersiveengineering:material:17>, 30);
mods.thermalexpansion.Pulverizer.addRecipe(<immersiveengineering:material:17>, <thermalfoundation:material:802>, 4000, <immersiveengineering:material:17>, 30);

//树脂板/压缩树脂板
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:resinplate>,<tconstruct:cast_custom:3>,<liquid:resin>,200,false,40);
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:compressedresinplate>,<contenttweaker:resinplate>*9, 4000);

//有机灌注器
recipes.remove(<thermalexpansion:machine:4>);
recipes.addShaped(<thermalexpansion:machine:4>, [[<contenttweaker:basiccircuit>, <thermalfoundation:material:294>, <contenttweaker:basiccircuit>],[<ore:dirt>, <thermalexpansion:frame>, <ore:dirt>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//熔岩炉
recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped(<thermalexpansion:machine:6>, [[<contenttweaker:basiccircuit>, <ore:blockGlassHardened>, <contenttweaker:basiccircuit>],[<minecraft:nether_brick>, <thermalexpansion:frame>, <minecraft:nether_brick>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//流体精炼机
recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped(<thermalexpansion:machine:7>, [[<contenttweaker:basiccircuit>, <thermalfoundation:material:261>, <contenttweaker:basiccircuit>],[<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//流体转置机
recipes.remove(<thermalexpansion:machine:8>);
recipes.addShaped(<thermalexpansion:machine:8>, [[<contenttweaker:basiccircuit>, <minecraft:bucket>, <contenttweaker:basiccircuit>],[<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//能量灌注机
recipes.remove(<thermalexpansion:machine:9>);
recipes.addShaped(<thermalexpansion:machine:9>, [[null, <thermalfoundation:material:259>, null],[<thermalfoundation:material:514>, <contenttweaker:resinmachineblock>, <thermalfoundation:material:514>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//离心机
recipes.remove(<thermalexpansion:machine:10>);
recipes.addShaped(<thermalexpansion:machine:10>, [[<contenttweaker:basiccircuit>, <contenttweaker:north_compass>, <contenttweaker:basiccircuit>],[<ore:ingotConstantan>, <thermalexpansion:frame>, <ore:ingotConstantan>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//药水酿造机
recipes.remove(<thermalexpansion:machine:12>);
recipes.addShaped(<thermalexpansion:machine:12>, [[<contenttweaker:basiccircuit>, <minecraft:brewing_stand:*>, <contenttweaker:basiccircuit>],[<ore:blockGlassHardened>, <thermalexpansion:frame>, <ore:blockGlassHardened>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//附魔机
recipes.remove(<thermalexpansion:machine:13>);
recipes.addShaped(<thermalexpansion:machine:13>, [[<contenttweaker:basiccircuit>, <minecraft:enchanting_table>, <contenttweaker:basiccircuit>],[<ore:blockLapis>, <thermalexpansion:frame>, <ore:blockLapis>], [<thermalfoundation:material:292>, <thermalfoundation:material:513>, <thermalfoundation:material:292>]]);

//冷冻机
recipes.remove(<thermalexpansion:machine:14>);
recipes.addShaped(<thermalexpansion:machine:14>, [[<contenttweaker:basiccircuit>, <minecraft:sticky_piston>, <contenttweaker:basiccircuit>],[<thermalfoundation:material:162>, <thermalexpansion:frame>, <thermalfoundation:material:162>], [<thermalfoundation:material:292>, <thermalfoundation:material:513>, <thermalfoundation:material:292>]]);

//造石机
recipes.remove(<thermalexpansion:machine:15>);
recipes.addShaped(<thermalexpansion:machine:15>, [[<contenttweaker:basiccircuit>, <ore:blockGlass>, <contenttweaker:basiccircuit>],[<thermalfoundation:material:162>, <thermalexpansion:frame>, <thermalfoundation:material:162>], [<thermalfoundation:material:292>, <thermalfoundation:material:513>, <thermalfoundation:material:292>]]);

//树汁提取机
recipes.remove(<thermalexpansion:device:3>);
recipes.addShaped(<thermalexpansion:device:3>, [[null, <thermalexpansion:augment:288>, null],[<contenttweaker:compressedresinplate>, <thermalexpansion:frame:64>, <contenttweaker:compressedresinplate>], [<thermalfoundation:material:262>, <contenttweaker:resinmachineblock>, <thermalfoundation:material:262>]]);

//感应炉
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped(<thermalexpansion:machine:3>, [[null, <immersiveengineering:metal_decoration0:5>, null],[<contenttweaker:basiccircuit>, <contenttweaker:resinmachineblock>, <contenttweaker:basiccircuit>], [<immersiveengineering:metal_decoration0:2>, <embers:heat_coil>, <immersiveengineering:metal_decoration0:2>]]);

//蓄水器
recipes.remove(<thermalexpansion:device>);
recipes.addShaped(<thermalexpansion:device>, [[null, <minecraft:bucket>, null],[<tconstruct:clear_glass>, <thermalexpansion:frame:64>, <tconstruct:clear_glass>], [<thermalfoundation:material:290>, <embers:large_tank>, <thermalfoundation:material:290>]]);

//==================================================================================环境科技==================================================================================
//连接器(感应炉)
recipes.remove(<environmentaltech:connector>);
mods.thermalexpansion.InductionSmelter.addRecipe(<environmentaltech:connector>*4, <enderio:item_alloy_ingot:4>*4,<contenttweaker:basiccircuit>, 8000);

//莱泽尔水晶(流体转置)
recipes.remove(<environmentaltech:litherite_crystal>);
mods.thermalexpansion.Transposer.addFillRecipe(<environmentaltech:litherite_crystal>,<contenttweaker:redingot>, <liquid:gelid_enderium>*144, 12000);
AlloySmelter.addRecipe(<environmentaltech:litherite_crystal>, [<contenttweaker:redingot>,<thermalfoundation:material:167>,<thermalfoundation:material:1025>*4],12000, 4.0f);

//莱泽尔虚空核心
recipes.addShaped(<contenttweaker:crystal_1>*2, [[null, <fluxnetworks:fluxcore>, null],[<environmentaltech:litherite_crystal>, <enderutilities:enderpart:10>, <environmentaltech:litherite_crystal>], [null, <fluxnetworks:fluxcore>, null]]);

//艾洛蒂虚空核心
recipes.addShaped(<contenttweaker:crystal_2>*2, [[<fluxnetworks:fluxcore>, <environmentaltech:erodium_crystal>, <fluxnetworks:fluxcore>],[<environmentaltech:erodium_crystal>, <enderutilities:enderpart:11>, <environmentaltech:erodium_crystal>], [<fluxnetworks:fluxcore>, <environmentaltech:erodium_crystal>, <fluxnetworks:fluxcore>]]);

//凯罗尼虚空核心
recipes.addShaped(<contenttweaker:crystal_3>*2, [[<threng:material:9>, <environmentaltech:kyronite_crystal>, <threng:material:9>],[<environmentaltech:kyronite_crystal>, <draconicevolution:wyvern_energy_core>, <environmentaltech:kyronite_crystal>], [<threng:material:9>, <environmentaltech:kyronite_crystal>, <threng:material:9>]]);

//强化部件核心
recipes.remove(<valkyrielib:modifier_component>);
recipes.addShaped(<valkyrielib:modifier_component> * 4, [[<minecraft:concrete:15>, <astralsorcery:itemcraftingcomponent:3>, <minecraft:concrete:15>],[<astralsorcery:itemusabledust:1>, <enderio:item_material:66>, <astralsorcery:itemusabledust:1>], [<minecraft:concrete:15>, <botania:manaresource:1>, <minecraft:concrete:15>]]);
recipes.addShaped(<valkyrielib:modifier_component> * 8, [[<mekanism:reinforcedplasticblock>, <enderio:block_reinforced_obsidian>, <mekanism:reinforcedplasticblock>],[<deepmoblearning:soot_covered_redstone>, <enderio:item_material:66>, <deepmoblearning:soot_covered_redstone>], [<mekanism:reinforcedplasticblock>, <enderio:block_reinforced_obsidian>, <mekanism:reinforcedplasticblock>]]);

//互联方块
recipes.remove(<environmentaltech:interconnect>);
recipes.addShaped(<environmentaltech:interconnect>*4, [[null, <environmentaltech:connector>, null],[<environmentaltech:connector>, <valkyrielib:modifier_component>, <environmentaltech:connector>], [null, <environmentaltech:connector>, null]]);

//结构镶板
recipes.remove(<environmentaltech:structure_panel>);
recipes.remove(<environmentaltech:structure_panel_clear>);
recipes.addShaped(<environmentaltech:structure_panel_clear>, [[<thermalfoundation:material:33>, <enderio:block_fused_quartz>, <thermalfoundation:material:33>],[<enderio:block_fused_quartz>, <environmentaltech:interconnect>, <enderio:block_fused_quartz>], [<thermalfoundation:material:33>, <enderio:block_fused_quartz>, <thermalfoundation:material:33>]]);
recipes.addShaped(<environmentaltech:structure_panel>, [[<thermalfoundation:material:33>, <enderio:block_dark_iron_bars>, <thermalfoundation:material:33>],[<enderio:block_dark_iron_bars>, <environmentaltech:interconnect>, <enderio:block_dark_iron_bars>], [<thermalfoundation:material:33>, <enderio:block_dark_iron_bars>, <thermalfoundation:material:33>]]);

//一级结构方块
recipes.remove(<environmentaltech:structure_frame_1>);
recipes.addShaped(<environmentaltech:structure_frame_1> * 4, [[<environmentaltech:structure_panel_clear>, <contenttweaker:crystal_1>, <environmentaltech:structure_panel_clear>],[<contenttweaker:compressedresinplate>, <environmentaltech:interconnect>, <contenttweaker:compressedresinplate>], [<environmentaltech:structure_panel_clear>, <contenttweaker:crystal_1>, <environmentaltech:structure_panel_clear>]]);
recipes.addShaped(<environmentaltech:structure_frame_1> * 4, [[<environmentaltech:structure_panel>, <contenttweaker:crystal_1>, <environmentaltech:structure_panel>],[<contenttweaker:compressedresinplate>, <environmentaltech:interconnect>, <contenttweaker:compressedresinplate>], [<environmentaltech:structure_panel>, <contenttweaker:crystal_1>, <environmentaltech:structure_panel>]]);

//二级结构方块
recipes.remove(<environmentaltech:structure_frame_2>);
recipes.addShaped(<environmentaltech:structure_frame_2> * 4, [[<environmentaltech:structure_frame_1>, <contenttweaker:crystal_2>, <environmentaltech:structure_frame_1>],[<contenttweaker:advancedcircuit>, <enderio:item_material:66>,<contenttweaker:advancedcircuit>], [<environmentaltech:structure_frame_1>, <contenttweaker:crystal_2>, <environmentaltech:structure_frame_1>]]);

//三级结构方块
recipes.remove(<environmentaltech:structure_frame_3>);
recipes.addShaped(<environmentaltech:structure_frame_3> * 4, [[<environmentaltech:structure_frame_2>,<contenttweaker:mana_crystal1>, <environmentaltech:structure_frame_2>],[<contenttweaker:epiccircuit>, <contenttweaker:crystal_3>, <contenttweaker:epiccircuit>], [<environmentaltech:structure_frame_2>,<contenttweaker:mana_crystal1>, <environmentaltech:structure_frame_2>]]);

//四级结构方块
recipes.remove(<environmentaltech:structure_frame_4>);
recipes.addShaped(<environmentaltech:structure_frame_4> * 4, [[<environmentaltech:structure_frame_3>, <contenttweaker:mana_crystal3>, <environmentaltech:structure_frame_3>],[<contenttweaker:mastercircuit>, <contenttweaker:crystal_4>, <contenttweaker:mastercircuit>], [<environmentaltech:structure_frame_3>, <contenttweaker:mana_crystal3>, <environmentaltech:structure_frame_3>]]);

//五级结构方块
recipes.remove(<environmentaltech:structure_frame_5>);
recipes.addShaped(<environmentaltech:structure_frame_5> * 4, [[<environmentaltech:structure_frame_4>, <contenttweaker:soulgem2>, <environmentaltech:structure_frame_4>],[<contenttweaker:extremecircuit>, <contenttweaker:crystal_5>, <contenttweaker:extremecircuit>], [<environmentaltech:structure_frame_4>, <contenttweaker:soulgem2>, <environmentaltech:structure_frame_4>]]);

//六级结构方块
recipes.remove(<environmentaltech:structure_frame_6>);

//六级机器
recipes.remove(<environmentaltech:void_ore_miner_cont_6>);
recipes.remove(<environmentaltech:void_res_miner_cont_6>);
recipes.remove(<environmentaltech:void_botanic_miner_cont_6>);

//一级太阳能
recipes.remove(<environmentaltech:solar_cell_litherite>);
recipes.addShaped(<environmentaltech:solar_cell_litherite>, [[<enderio:item_material:3>, <enderio:item_material:3>, <enderio:item_material:3>],[<environmentaltech:photovoltaic_cell>, <ore:blockLitherite>, <environmentaltech:photovoltaic_cell>], [<thermalfoundation:material:324>, <environmentaltech:interconnect>, <thermalfoundation:material:324>]]);

//一级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_1>);
recipes.addShaped(<environmentaltech:solar_cont_1>, [[<ore:blockLitherite>, <contenttweaker:basiccircuit>, <ore:blockLitherite>],[<contenttweaker:basiccircuit>, <environmentaltech:solar_cell_litherite>, <contenttweaker:basiccircuit>], [<ore:blockLitherite>, <contenttweaker:basiccircuit>, <ore:blockLitherite>]]);

//二级太阳能
recipes.remove(<environmentaltech:solar_cell_erodium>);
recipes.addShaped(<environmentaltech:solar_cell_erodium>, [[<enderio:block_solar_panel>, <enderio:block_solar_panel>, <enderio:block_solar_panel>],[<environmentaltech:photovoltaic_cell>, <environmentaltech:solar_cell_litherite>, <environmentaltech:photovoltaic_cell>], [<contenttweaker:stainless_ingot>, <ore:blockErodium>, <contenttweaker:stainless_ingot>]]);

//二级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_2>);
recipes.addShaped(<environmentaltech:solar_cont_2>, [[<ore:blockErodium>, <contenttweaker:advancedcircuit>, <ore:blockErodium>],[<contenttweaker:advancedcircuit>, <environmentaltech:solar_cell_erodium>, <contenttweaker:advancedcircuit>], [<ore:blockErodium>, <contenttweaker:advancedcircuit>, <ore:blockErodium>]]);

//三级太阳能
recipes.remove(<environmentaltech:solar_cell_kyronite>);
recipes.addShaped(<environmentaltech:solar_cell_kyronite>, [[<enderio:block_solar_panel:2>, <enderio:block_solar_panel:2>, <enderio:block_solar_panel:2>],[<environmentaltech:photovoltaic_cell>, <environmentaltech:solar_cell_erodium>, <environmentaltech:photovoltaic_cell>], [<draconicevolution:draconic_core>, <ore:blockKyronite>, <draconicevolution:draconic_core>]]);

//三级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_3>);
recipes.addShaped(<environmentaltech:solar_cont_3>, [[<ore:blockKyronite>, <contenttweaker:epiccircuit>, <ore:blockKyronite>],[<contenttweaker:epiccircuit>, <environmentaltech:solar_cont_2>, <contenttweaker:epiccircuit>], [<ore:blockKyronite>, <contenttweaker:epiccircuit>, <ore:blockKyronite>]]);

//四级太阳能
recipes.remove(<environmentaltech:solar_cell_pladium>);
recipes.addShaped(<environmentaltech:solar_cell_pladium>, [[<enderio:block_solar_panel:3>, <enderio:block_solar_panel:3>, <enderio:block_solar_panel:3>],[<environmentaltech:photovoltaic_cell>, <environmentaltech:solar_cell_kyronite>, <environmentaltech:photovoltaic_cell>], [<tconevo:metal>, <ore:blockPladium>, <tconevo:metal>]]);

//四级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_4>);
recipes.addShaped(<environmentaltech:solar_cont_4>, [[<ore:blockPladium>, <contenttweaker:mastercircuit>, <ore:blockPladium>],[<contenttweaker:mastercircuit>, <environmentaltech:solar_cont_3>, <contenttweaker:mastercircuit>], [<ore:blockPladium>, <contenttweaker:mastercircuit>, <ore:blockPladium>]]);

//五级太阳能
recipes.remove(<environmentaltech:solar_cell_ionite>);
recipes.addShaped(<environmentaltech:solar_cell_ionite> * 4, [[<enderio:block_solar_panel:4>, <enderio:block_solar_panel:4>, <enderio:block_solar_panel:4>],[<environmentaltech:solar_cell_pladium>, <tconevo:metal:14>, <environmentaltech:solar_cell_pladium>], [<environmentaltech:solar_cell_pladium>, <environmentaltech:ionite>, <environmentaltech:solar_cell_pladium>]]);

//五级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_5>);
recipes.addShaped(<environmentaltech:solar_cont_5>, [[<environmentaltech:ionite>, <contenttweaker:extremecircuit>, <environmentaltech:ionite>],[<contenttweaker:extremecircuit>, <environmentaltech:solar_cont_4>, <contenttweaker:extremecircuit>], [<environmentaltech:ionite>, <contenttweaker:extremecircuit>, <environmentaltech:ionite>]]);

//六级太阳能
recipes.remove(<environmentaltech:solar_cell_aethium>);
recipes.addShaped(<environmentaltech:solar_cell_aethium> * 4, [[<enderio:block_solar_panel:5>, <enderio:block_solar_panel:5>, <enderio:block_solar_panel:5>],[<environmentaltech:solar_cell_ionite>, <avaritia:resource:6>, <environmentaltech:solar_cell_ionite>], [<environmentaltech:solar_cell_ionite>, <environmentaltech:aethium>, <environmentaltech:solar_cell_ionite>]]);

//六级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_6>);
recipes.addShaped(<environmentaltech:solar_cont_6>, [[<environmentaltech:aethium>, <contenttweaker:quantumcircuit>, <environmentaltech:aethium>],[<contenttweaker:quantumcircuit>, <environmentaltech:solar_cont_5>, <contenttweaker:quantumcircuit>], [<environmentaltech:aethium>, <contenttweaker:quantumcircuit>, <environmentaltech:aethium>]]);

//==================================================================================末影接口==================================================================================
//简易机器框架
recipes.remove(<enderio:item_material>);

//移除感应炉烧工业框架
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material>,<enderio:item_material:51>);

//移除基岩磨粉
SagMill.removeRecipe(<minecraft:bedrock>);

//硬化框架
recipes.addShaped(<thermalexpansion:frame:129>*2, [[<enderio:block_infinity>, <thermalfoundation:storage_alloy:2>, <enderio:block_infinity>],[<thermalexpansion:frame:128>, <thermalfoundation:material:291>, <thermalexpansion:frame:128>], [<enderio:block_infinity>, <thermalfoundation:storage_alloy:2>, <enderio:block_infinity>]]);

//强化框架
mods.mekanism.infuser.addRecipe("REDSTONE", 3000, <thermalexpansion:frame:129>, <thermalexpansion:frame:130>);

//酿液桶
recipes.remove(<enderio:block_vat>);
recipes.addShaped(<enderio:block_vat>, [[<thermalfoundation:material:1024>, <thermalexpansion:machine:12>, <thermalfoundation:material:1024>],[<contenttweaker:stainless_ingot>, <enderio:item_material:1>, <contenttweaker:stainless_ingot>], [<minecraft:cauldron>, <enderio:block_infinity>, <minecraft:cauldron>]]);

//附魔器
recipes.remove(<enderio:block_enchanter>);
recipes.addShaped(<enderio:block_enchanter>, [[null, <minecraft:book>, null],[<contenttweaker:advancedcircuit>, <thermalexpansion:machine:13>, <contenttweaker:advancedcircuit>], [<enderio:block_alloy:6>, <enderio:block_dark_steel_anvil>, <enderio:block_alloy:6>]]);

//基础电容库
recipes.remove(<enderio:block_cap_bank:1>);
recipes.addShaped(<enderio:block_cap_bank:1>, [[<enderio:item_alloy_ingot>, <enderio:item_basic_capacitor>, <enderio:item_alloy_ingot>],[<enderio:item_basic_capacitor>, <thermalexpansion:frame:128>, <enderio:item_basic_capacitor>], [<enderio:item_alloy_ingot>, <enderio:item_basic_capacitor>, <enderio:item_alloy_ingot>]]);
recipes.addShaped(<enderio:block_cap_bank:1>, [[<enderio:item_alloy_ingot>, <enderio:item_capacitor_silver>, <enderio:item_alloy_ingot>],[<enderio:item_capacitor_silver>, <thermalexpansion:frame:128>, <enderio:item_capacitor_silver>], [<enderio:item_alloy_ingot>, <enderio:item_capacitor_silver>, <enderio:item_alloy_ingot>]]);

//电容库
recipes.remove(<enderio:block_cap_bank:2>);
recipes.addShaped(<enderio:block_cap_bank:2>, [[<enderio:item_alloy_ingot:1>, <enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:1>],[<enderio:block_cap_bank:1>, <thermalexpansion:frame:129>, <enderio:block_cap_bank:1>], [<enderio:item_alloy_ingot:1>, <enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:1>]]);
recipes.addShaped(<enderio:block_cap_bank:2>, [[<enderio:item_alloy_ingot:1>, <enderio:item_capacitor_energetic_silver>, <enderio:item_alloy_ingot:1>],[<enderio:block_cap_bank:1>, <thermalexpansion:frame:129>, <enderio:block_cap_bank:1>], [<enderio:item_alloy_ingot:1>, <enderio:item_capacitor_energetic_silver>, <enderio:item_alloy_ingot:1>]]);

//脉冲电容库
recipes.remove(<enderio:block_cap_bank:3>);
recipes.addShaped(<enderio:block_cap_bank:3>, [[<enderio:item_alloy_ingot:2>, <enderio:item_basic_capacitor:2>, <enderio:item_alloy_ingot:2>],[<enderio:block_cap_bank:2>, <thermalexpansion:frame:130>, <enderio:block_cap_bank:2>], [<enderio:item_alloy_ingot:2>, <enderio:item_basic_capacitor:2>, <enderio:item_alloy_ingot:2>]]);
recipes.addShaped(<enderio:block_cap_bank:3>, [[<enderio:item_alloy_ingot:2>, <enderio:item_capacitor_vivid>, <enderio:item_alloy_ingot:2>],[<enderio:block_cap_bank:2>, <thermalexpansion:frame:130>, <enderio:block_cap_bank:2>], [<enderio:item_alloy_ingot:2>, <enderio:item_capacitor_vivid>, <enderio:item_alloy_ingot:2>]]);

//脉冲光伏电池
recipes.remove(<enderio:block_solar_panel:3>);
recipes.addShaped(<enderio:block_solar_panel:3>, [[<enderio:item_material:3>, <enderio:block_solar_panel:2>, <enderio:item_material:3>],[<enderio:item_capacitor_vivid>, <enderio:block_dark_fused_quartz>, <enderio:item_capacitor_vivid>], [<enderio:block_alloy:2>, <minecraft:glowstone>, <enderio:block_alloy:2>]]);
recipes.addShaped(<enderio:block_solar_panel:3>, [[<enderio:item_material:3>, <enderio:block_solar_panel:2>, <enderio:item_material:3>],[<enderio:item_basic_capacitor:2>, <enderio:block_dark_fused_quartz>, <enderio:item_basic_capacitor:2>], [<enderio:block_alloy:2>, <minecraft:glowstone>, <enderio:block_alloy:2>]]);

//强化光伏电池
recipes.remove(<enderio:block_solar_panel:2>);
recipes.addShaped(<enderio:block_solar_panel:2>, [[<enderio:item_material:3>, <enderio:block_solar_panel:1>, <enderio:item_material:3>],[<enderio:item_basic_capacitor:1>, <enderio:block_enlightened_fused_quartz>, <enderio:item_basic_capacitor:1>], [<enderio:block_alloy:1>, <minecraft:daylight_detector>, <enderio:block_alloy:5>]]);
recipes.addShaped(<enderio:block_solar_panel:2>, [[<enderio:item_material:3>, <enderio:block_solar_panel:1>, <enderio:item_material:3>],[<enderio:item_capacitor_energetic_silver>, <enderio:block_enlightened_fused_quartz>, <enderio:item_capacitor_energetic_silver>], [<enderio:block_alloy:1>, <minecraft:daylight_detector>, <enderio:block_alloy:5>]]);

//光伏电池
recipes.remove(<enderio:block_solar_panel:1>);
recipes.addShaped(<enderio:block_solar_panel:1>, [[<enderio:block_solar_panel>, <enderio:block_solar_panel>, <enderio:block_solar_panel>],[<enderio:item_capacitor_silver>, <enderio:block_fused_quartz>, <enderio:item_capacitor_silver>], [<enderio:block_alloy:5>, <minecraft:daylight_detector>, <enderio:block_alloy:4>]]);
recipes.addShaped(<enderio:block_solar_panel:1>, [[<enderio:block_solar_panel>, <enderio:block_solar_panel>, <enderio:block_solar_panel>],[<enderio:item_basic_capacitor>, <enderio:block_fused_quartz>, <enderio:item_basic_capacitor>], [<enderio:block_alloy:5>, <minecraft:daylight_detector>, <enderio:block_alloy:4>]]);

//烈酒/火焰水(流体精炼/药水酿造)
mods.thermalexpansion.Refinery.addRecipe(<liquid:hootch>*500, <minecraft:sugar>,<liquid:ethanol>*1000, 16000);
mods.thermalexpansion.Imbuer.addRecipe(<liquid:fire_water>*1000, <thermalfoundation:material:1024>*4, <liquid:hootch>*1000, 16000);

//基岩粉(流体转置)
mods.thermalexpansion.Transposer.addFillRecipe(<enderio:item_material:20>*3,<botania:manaresource:8>,<liquid:fire_water>*1000, 16000);

//简易合金炉
recipes.remove(<enderio:block_simple_alloy_smelter>);
recipes.addShaped(<enderio:block_simple_alloy_smelter>, [[<contenttweaker:basiccircuit>, <extendedcrafting:material:8>, <contenttweaker:basiccircuit>],[<immersiveengineering:metal_decoration0:4>, <thermalexpansion:machine:3>, <immersiveengineering:metal_decoration0:4>], [<thermalfoundation:material:290>, <enderio:item_material>, <thermalfoundation:material:290>]]);

//简易SAG磨粉机
recipes.remove(<enderio:block_simple_sag_mill>);
recipes.addShaped(<enderio:block_simple_sag_mill>, [[<contenttweaker:basiccircuit>, <extendedcrafting:material:8>, <contenttweaker:basiccircuit>],[<immersiveengineering:metal_decoration0:4>, <thermalexpansion:machine:1>, <immersiveengineering:metal_decoration0:4>], [<thermalfoundation:material:290>, <enderio:item_material>, <thermalfoundation:material:290>]]);

//简易电炉
recipes.remove(<enderio:block_simple_furnace>);
recipes.addShaped(<enderio:block_simple_furnace>, [[<contenttweaker:basiccircuit>, <extendedcrafting:material:8>, <contenttweaker:basiccircuit>],[<immersiveengineering:metal_decoration0:4>, <thermalexpansion:machine>, <immersiveengineering:metal_decoration0:4>], [<thermalfoundation:material:290>, <enderio:item_material>, <thermalfoundation:material:290>]]);

//有机绿色染料
SagMill.addRecipe([<enderio:item_material:48>],[100 as float],<environmentaltech:litherite_crystal>,"NONE", 4000,[4.0 as float]);

//末影钢机器框架
recipes.remove(<enderio:item_material:66>);
recipes.addShaped(<enderio:item_material:66>, [[<enderio:block_end_iron_bars>, <enderio:item_alloy_ingot:8>, <enderio:block_end_iron_bars>],[<enderio:item_alloy_ingot:8>, <enderio:item_material:1>, <enderio:item_alloy_ingot:8>], [<enderio:block_end_iron_bars>, <enderio:item_alloy_ingot:8>, <enderio:block_end_iron_bars>]]);

//导管提取速率升级
recipes.remove(<enderio:item_extract_speed_upgrade>);
recipes.addShaped(<enderio:item_extract_speed_upgrade> * 2, [[<enderio:item_alloy_ingot:8>, <enderio:item_alloy_ingot:8>, <enderio:item_alloy_ingot:8>],[<enderio:item_alloy_ingot>, <minecraft:piston>, <enderio:item_alloy_ingot>], [<enderio:item_alloy_ingot>, <minecraft:redstone_torch>, <enderio:item_alloy_ingot>]]);

//====================================================================================龙研====================================================================================
//龙矿挖掘等级
<draconicevolution:draconium_ore:0>.asBlock().definition.setHarvestLevel("pickaxe",10);
<draconicevolution:draconium_ore:1>.asBlock().definition.setHarvestLevel("pickaxe",10);
<draconicevolution:draconium_ore:2>.asBlock().definition.setHarvestLevel("pickaxe",10);

//基础注入装置
recipes.remove(<draconicevolution:crafting_injector:0>);
recipes.addShaped(<draconicevolution:crafting_injector>*2, [[<enderutilities:enderpart:1>, <enderutilities:enderpart:11>, <enderutilities:enderpart:1>],[<contenttweaker:basiccircuit>, <botania:rune:8>, <contenttweaker:basiccircuit>], [<minecraft:iron_block>, <extendedcrafting:material:8>, <minecraft:iron_block>]]);

//传送符咒
recipes.remove(<draconicevolution:dislocator>);
recipes.addShaped(<draconicevolution:dislocator>, [[<minecraft:blaze_powder>, <minecraft:chorus_fruit_popped>, <minecraft:blaze_powder>],[<minecraft:chorus_fruit_popped>, <tconstruct:ingots:2>, <minecraft:chorus_fruit_popped>], [<minecraft:blaze_powder>, <minecraft:chorus_fruit_popped>, <minecraft:blaze_powder>]]);

//聚合核心
recipes.remove(<draconicevolution:fusion_crafting_core>);
recipes.addShaped(<draconicevolution:fusion_crafting_core>, [[<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>],[<botania:manaresource:9>, <embers:wildfire_core>, <botania:manaresource:9>], [<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>]]);
recipes.addShaped(<draconicevolution:fusion_crafting_core>, [[<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>],[<botania:manaresource:9>, <tconevo:metal_block:6>, <botania:manaresource:9>], [<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>]]);
recipes.addShaped(<draconicevolution:fusion_crafting_core>, [[<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>],[<draconicevolution:draconic_core>, <botania:manaresource:9>, <draconicevolution:draconic_core>], [<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>]]);

//飞龙镐
recipes.remove(<draconicevolution:wyvern_pick>);
recipes.addShaped(<draconicevolution:wyvern_pick>, [[<tconevo:metal>, <tconevo:metal>, <tconevo:metal>],[null, <botania:terrapick>, null], [null, <draconicevolution:wyvern_energy_core>, null]]);

//飞龙套
recipes.remove(<draconicevolution:wyvern_boots>);
recipes.remove(<draconicevolution:wyvern_legs>);
recipes.remove(<draconicevolution:wyvern_chest>);
recipes.remove(<draconicevolution:wyvern_helm>);
recipes.addShaped(<draconicevolution:wyvern_boots>, [[<tconevo:metal>, null, <tconevo:metal>],[<tconevo:metal>, <draconicevolution:wyvern_energy_core>, <tconevo:metal>], [null, null, null]]);
recipes.addShaped(<draconicevolution:wyvern_legs>, [[<tconevo:metal>, <tconevo:metal>, <tconevo:metal>],[<tconevo:metal>, <draconicevolution:wyvern_energy_core>, <tconevo:metal>], [<tconevo:metal>, null, <tconevo:metal>]]);
recipes.addShaped(<draconicevolution:wyvern_chest>, [[<tconevo:metal>, <draconicevolution:wyvern_energy_core>, <tconevo:metal>],[<tconevo:metal>, <tconevo:metal>, <tconevo:metal>], [<tconevo:metal>, <tconevo:metal>, <tconevo:metal>]]);
recipes.addShaped(<draconicevolution:wyvern_helm>, [[<tconevo:metal>, <tconevo:metal>, <tconevo:metal>],[<tconevo:metal>, <draconicevolution:wyvern_energy_core>, <tconevo:metal>], [null, null, null]]);

//觉醒龙锭
recipes.addShaped(<draconicevolution:draconic_ingot>, [[<draconicevolution:nugget:1>, <draconicevolution:nugget:1>, <draconicevolution:nugget:1>],[<draconicevolution:nugget:1>, <draconicevolution:nugget:1>, <draconicevolution:nugget:1>], [<draconicevolution:nugget:1>, <draconicevolution:nugget:1>, <draconicevolution:nugget:1>]]);
recipes.addShapeless(<draconicevolution:draconic_ingot> * 9, [<draconicevolution:draconic_block>]);

//龙芯
recipes.remove(<draconicevolution:draconic_core>);

//能量核心
recipes.remove(<draconicevolution:energy_storage_core>);
recipes.addShaped(<draconicevolution:energy_storage_core>, [[<mekanism:basicblock2:3>.withTag({tier: 2}), <fluxnetworks:gargantuanfluxstorage>, <mekanism:basicblock2:3>.withTag({tier: 2})],[<draconicevolution:wyvern_energy_core>, <draconicevolution:wyvern_core>, <draconicevolution:wyvern_energy_core>], [<enderio:block_cap_bank:3>, <fluxnetworks:gargantuanfluxstorage>,<enderio:block_cap_bank:3>]]);

//================================================================================深度怪物学习================================================================================
//空白模型
recipes.remove(<deepmoblearning:data_model_blank>);

//主世界物质
recipes.addShaped(<deepmoblearning:living_matter_overworldian> * 2, [[<thermalfoundation:material:817>, <deepmoblearning:polymer_clay>, <thermalfoundation:material:817>],[<deepmoblearning:polymer_clay>, <appliedenergistics2:material:6>, <deepmoblearning:polymer_clay>], [<thermalfoundation:material:817>, <deepmoblearning:polymer_clay>, <thermalfoundation:material:817>]]);

//测试密钥
recipes.remove(<deepmoblearning:trial_key>);
recipes.addShaped(<deepmoblearning:trial_key>, [[null, null, null],[<botania:manaresource:1>, <botania:manaresource:9>, <botania:manaresource:9>], [null, <contenttweaker:epiccircuit>, <contenttweaker:mana_crystal2>]]);

//不稳定故障碎片
mods.nuclearcraft.alloy_furnace.addRecipe([<deepmoblearning:glitch_heart>,<minecraft:obsidian>,<deepmoblearning:glitch_fragment>*3]);
AlloySmelter.addRecipe(<deepmoblearning:glitch_fragment>*3, [<deepmoblearning:glitch_heart>,<minecraft:obsidian>],12000, 4.0f);

//故障灌注锭
AlloySmelter.addRecipe(<deepmoblearning:glitch_infused_ingot>, [<deepmoblearning:glitch_fragment>,<minecraft:dye:4>,<minecraft:gold_ingot>],12000, 4.0f);

//聚合粘土
recipes.remove(<deepmoblearning:polymer_clay>);
recipes.addShaped(<deepmoblearning:polymer_clay> * 48, [[<contenttweaker:mana_crystal1>, <nuclearcraft:compound:1>, <embers:adhesive>],[<nuclearcraft:compound:1>, <tconevo:material>, <nuclearcraft:compound:1>], [<embers:adhesive>, <nuclearcraft:compound:1>, <contenttweaker:mana_crystal1>]]);
recipes.addShaped(<deepmoblearning:polymer_clay> * 4, [[<nuclearcraft:compound:1>, <minecraft:clay_ball>, <enderio:item_material:20>],[<minecraft:clay_ball>, <tconevo:material>, <minecraft:clay_ball>], [<enderio:item_material:20>, <minecraft:clay_ball>, <nuclearcraft:compound:1>]]);

//怪物模型
{
var item as IItemStack[]=[
<deepmoblearning:data_model_slime>,
<deepmoblearning:data_model_spider>,
<deepmoblearning:data_model_creeper>,
<deepmoblearning:data_model_skeleton>,
<deepmoblearning:data_model_zombie>,
<deepmoblearning:data_model_tinker_slime>,
<deepmoblearning:data_model_enderman>,
<deepmoblearning:data_model_ghast>,
<deepmoblearning:data_model_wither_skeleton>,
<deepmoblearning:data_model_blaze>,
<deepmoblearning:data_model_witch>,
<deepmoblearning:data_model_thermal_elemental>,
<deepmoblearning:data_model_guardian>,
<deepmoblearning:data_model_shulker>,
<deepmoblearning:data_model_dragon>,
<deepmoblearning:data_model_wither>
];  
for i in item{
recipes.remove(i);
}}

//====================================================================================核电====================================================================================
//合金炉
recipes.remove(<nuclearcraft:alloy_furnace_idle>);
recipes.addShaped(<nuclearcraft:alloy_furnace_idle>, [[<nuclearcraft:part>, <nuclearcraft:part:10>, <nuclearcraft:part>],[<contenttweaker:advancedcircuit>, <enderio:block_alloy_smelter>,<contenttweaker:advancedcircuit>], [<nuclearcraft:part>, <nuclearcraft:part:5>, <nuclearcraft:part>]]);

//合成用锂离子电池
recipes.addShaped(<contenttweaker:li_cell>, [[<nuclearcraft:alloy:4>, <nuclearcraft:alloy:4>, <nuclearcraft:alloy:4>],[<nuclearcraft:alloy:6>, <nuclearcraft:ingot:6>, <nuclearcraft:alloy:6>], [<nuclearcraft:alloy:2>, <nuclearcraft:alloy:2>, <nuclearcraft:alloy:2>]]);
recipes.addShapeless(<contenttweaker:li_cell>, [<nuclearcraft:lithium_ion_cell>]);

//基础锂离子电池补充配方
recipes.addShaped(<nuclearcraft:lithium_ion_battery_basic>, [[<nuclearcraft:part:3>, <contenttweaker:li_cell>, <nuclearcraft:part:3>],[<contenttweaker:li_cell>, <nuclearcraft:part:5>, <contenttweaker:li_cell>], [<nuclearcraft:part:3>, <contenttweaker:li_cell>, <nuclearcraft:part:3>]]);

//石墨锭浇筑移除
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:ingot:8>);

//太阳能
recipes.remove(<nuclearcraft:solar_panel_basic>);
recipes.remove(<nuclearcraft:solar_panel_advanced>);
recipes.remove(<nuclearcraft:solar_panel_du>);
recipes.remove(<nuclearcraft:solar_panel_elite>);

//垃圾桶
recipes.remove(<nuclearcraft:bin>);
recipes.addShaped(<nuclearcraft:bin>, [[<nuclearcraft:part>, <nuclearcraft:ingot:10>, <nuclearcraft:part>],[<nuclearcraft:ingot:10>, <appliedenergistics2:condenser>, <nuclearcraft:ingot:10>], [<nuclearcraft:part>, <nuclearcraft:ingot:10>, <nuclearcraft:part>]]);

//热交换外壳
recipes.remove(<nuclearcraft:heat_exchanger_wall>);
recipes.addShaped(<nuclearcraft:heat_exchanger_wall> * 4, [[<contenttweaker:stainless_ingot>, <mekanism:basicblock2:7>, <contenttweaker:stainless_ingot>],[<mekanism:basicblock2:7>, <nuclearcraft:part:10>, <mekanism:basicblock2:7>], [<contenttweaker:stainless_ingot>, <mekanism:basicblock2:7>, <contenttweaker:stainless_ingot>]]);

//涡轮外壳
recipes.removeShaped(<nuclearcraft:turbine_frame> * 4, [[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:15>, <nuclearcraft:alloy:15>],[<nuclearcraft:alloy:15>, <nuclearcraft:part:12>, <nuclearcraft:alloy:15>], [<nuclearcraft:alloy:15>, <nuclearcraft:alloy:15>, <nuclearcraft:alloy:15>]]);
recipes.addShaped(<nuclearcraft:turbine_wall> * 8, [[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:11>, <nuclearcraft:alloy:15>],[<nuclearcraft:alloy:11>, <nuclearcraft:part:12>, <nuclearcraft:alloy:11>], [<nuclearcraft:alloy:15>, <nuclearcraft:alloy:11>, <nuclearcraft:alloy:15>]]);

//电磁体
recipes.removeShaped(<nuclearcraft:fusion_electromagnet_idle>, [[<nuclearcraft:part:4>, <nuclearcraft:part:1>, <nuclearcraft:part:4>],[<nuclearcraft:part:1>, null, <nuclearcraft:part:1>], [<nuclearcraft:part:4>, <nuclearcraft:part:1>, <nuclearcraft:part:4>]]);
recipes.removeShaped(<nuclearcraft:fusion_electromagnet_transparent_idle>, [[<nuclearcraft:part:4>, <nuclearcraft:part:1>, <nuclearcraft:part:4>],[<nuclearcraft:part:1>, <minecraft:glass>, <nuclearcraft:part:1>], [<nuclearcraft:part:4>, <nuclearcraft:part:1>, <nuclearcraft:part:4>]]);
recipes.addShaped(<nuclearcraft:fusion_electromagnet_idle> * 2, [[<nuclearcraft:part:5>, <nuclearcraft:part:1>, <nuclearcraft:part:5>],[<nuclearcraft:part:1>, <enderio:item_capacitor_melodic>, <nuclearcraft:part:1>], [<nuclearcraft:part:5>, <nuclearcraft:part:1>, <nuclearcraft:part:5>]]);

//水晶粘合剂
recipes.remove(<nuclearcraft:compound:1>);
recipes.addShapeless(<nuclearcraft:compound:1>, [<nuclearcraft:gem_dust:1>,<nuclearcraft:compound>,<thermalfoundation:material:770>,<enderio:item_material:20>]);

//机器框架
recipes.remove(<nuclearcraft:part:10>);
recipes.addShaped(<nuclearcraft:part:10>, [[<contenttweaker:stainless_ingot>, <enderio:item_alloy_ingot:6>, <contenttweaker:stainless_ingot>],[<enderio:item_alloy_ingot:8>, <enderio:item_material>, <enderio:item_alloy_ingot:8>], [<contenttweaker:stainless_ingot>, <enderio:item_alloy_ingot:6>, <contenttweaker:stainless_ingot>]]);

//钢制框架
recipes.remove(<nuclearcraft:part:12>);
recipes.addShaped(<nuclearcraft:part:12>, [[<nuclearcraft:alloy:10>, <nuclearcraft:alloy:1>, <threng:material>],[<nuclearcraft:alloy:1>, <mekanism:basicblock:8>, <nuclearcraft:alloy:1>], [<threng:material>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:10>]]);

//聚变堆核心
recipes.remove(<nuclearcraft:fusion_core>);
//recipes.addShaped(<nuclearcraft:fusion_core>, [[<nuclearcraft:part:2>, <contenttweaker:extremecircuit>, <nuclearcraft:part:2>],[<nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:block_depleted_curium>, <nuclearcraft:fission_controller_new_fixed>], [<nuclearcraft:part:2>, <nuclearcraft:part:12>, <nuclearcraft:part:2>]]);

//不锈钢粉
recipes.addShapeless(<contenttweaker:stainless_steel_dust> * 6, [<thermalfoundation:material:96>,<thermalfoundation:material:96>,<nuclearcraft:dust:11>,<thermalfoundation:material:96>,<thermalfoundation:material:96>,<contenttweaker:chrome_dust>,<thermalfoundation:material>,<thermalfoundation:material>,<thermalfoundation:material:69>]);
/*
//金属成型机
mods.jei.JEI.removeAndHide(<nuclearcraft:ingot_former_idle>);
*/
//粉碎菱锰
mods.thermalexpansion.Pulverizer.addRecipe(<nuclearcraft:gem_dust:1>,<minecraft:stone:1>, 16000);
mods.thermalexpansion.Pulverizer.addRecipe(<nuclearcraft:gem_dust:1>,<minecraft:stone:2>, 16000);

//红宝石粉
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:ruby_dust>,<contenttweaker:ruby>, 4000);
SagMill.addRecipe([<contenttweaker:ruby_dust>],[100 as float],<contenttweaker:ruby>,"NONE", 2000,[2.0 as float]);

//石墨粉
recipes.addShapeless(<nuclearcraft:dust:8>, [<immersiveengineering:material:18>]);
recipes.addShapeless(<immersiveengineering:material:18>, [<nuclearcraft:dust:8>]);

//熔融流明精华
mods.nuclearcraft.salt_mixer.addRecipe([<liquid:redstone>*100,<liquid:glowstone>*500,<liquid:lumium_liquid>*200]);

//高级板
recipes.remove(<nuclearcraft:part:1>);

//线圈
recipes.remove(<nuclearcraft:turbine_dynamo_coil>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:1>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:2>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:3>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:4>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:5>);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:5>, [[<thermalfoundation:material:130>, <thermalfoundation:material:130>, <thermalfoundation:material:130>],[<thermalfoundation:material:130>, <thermalfoundation:material:160>, <thermalfoundation:material:130>], [<thermalfoundation:material:130>, <thermalfoundation:material:130>, <thermalfoundation:material:130>]]);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:4>, [[<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>],[<thermalfoundation:material:128>, <thermalfoundation:material:160>, <thermalfoundation:material:128>], [<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>]]);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:3>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],[<minecraft:gold_ingot>, <thermalfoundation:material:160>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:2>, [[<thermalfoundation:material:132>, <thermalfoundation:material:132>, <thermalfoundation:material:132>],[<thermalfoundation:material:132>, <thermalfoundation:material:160>, <thermalfoundation:material:132>], [<thermalfoundation:material:132>, <thermalfoundation:material:132>, <thermalfoundation:material:132>]]);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:1>, [[<nuclearcraft:ingot:9>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:9>],[<nuclearcraft:ingot:9>, <thermalfoundation:material:160>, <nuclearcraft:ingot:9>], [<nuclearcraft:ingot:9>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:9>]]);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil>, [[<nuclearcraft:ingot:7>, <nuclearcraft:ingot:7>, <nuclearcraft:ingot:7>],[<nuclearcraft:ingot:7>, <thermalfoundation:material:160>, <nuclearcraft:ingot:7>], [<nuclearcraft:ingot:7>, <nuclearcraft:ingot:7>, <nuclearcraft:ingot:7>]]);

//基础板
recipes.remove(<nuclearcraft:part>);
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:part>, <nuclearcraft:dust:8>,<thermalfoundation:material:131>, 4000);

//小制造机
recipes.remove(<nuclearcraft:manufactory_idle>);
recipes.addShaped(<nuclearcraft:manufactory_idle>, [[<nuclearcraft:part>, <minecraft:sticky_piston>, <nuclearcraft:part>],[<contenttweaker:basiccircuit>, <nuclearcraft:part:10>, <contenttweaker:basiccircuit>], [<nuclearcraft:part>, <nuclearcraft:part:4>, <nuclearcraft:part>]]);

//明胶(小制造机)
mods.nuclearcraft.manufactory.addRecipe([<minecraft:mutton>,<nuclearcraft:gelatin>*4]);
mods.nuclearcraft.manufactory.addRecipe([<minecraft:chicken>,<nuclearcraft:gelatin>*4]);
mods.nuclearcraft.manufactory.addRecipe([<minecraft:beef>,<nuclearcraft:gelatin>*8]);
mods.nuclearcraft.manufactory.addRecipe([<contenttweaker:xiaoyu>,<nuclearcraft:gelatin>*64]);
mods.nuclearcraft.manufactory.addRecipe([<minecraft:rotten_flesh>,<nuclearcraft:gelatin>*1]);

//涡轮机框架
recipes.remove(<nuclearcraft:turbine_frame>);
recipes.addShaped(<nuclearcraft:turbine_frame> * 4, [[<nuclearcraft:alloy:15>, <nuclearcraft:turbine_wall>, <nuclearcraft:alloy:15>],[<nuclearcraft:turbine_wall>, <contenttweaker:advancedcircuit>, <nuclearcraft:turbine_wall>], [<nuclearcraft:alloy:15>, <nuclearcraft:turbine_wall>, <nuclearcraft:alloy:15>]]);

//低合金高强度钢锭
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput([<nuclearcraft:alloy:15>*16]);
mods.nuclearcraft.alloy_furnace.addRecipe([<minecraft:iron_ingot>*3,<nuclearcraft:compound:9>,<nuclearcraft:alloy:15>*4]);

//====================================================================================通用机械====================================================================================
//电解核心
recipes.remove(<mekanism:electrolyticcore>);
recipes.addShaped(<mekanism:electrolyticcore>, [[<nuclearcraft:part>, <mekanism:dust:2>, <nuclearcraft:part>],[<thermalfoundation:material>, <contenttweaker:basiccircuit>, <thermalfoundation:material:1>], [<nuclearcraft:part>, <mekanism:dust:2>, <nuclearcraft:part>]]);

//能量板合成用
recipes.addShaped(<mekanism:energytabletcraft>, [[<minecraft:redstone>, <mekanism:enrichedalloy>, <minecraft:redstone>],[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>], [<minecraft:redstone>, <mekanism:enrichedalloy>, <minecraft:redstone>]]);

//化学氧化机
recipes.remove(<mekanism:machineblock2:1>);
recipes.addShaped(<mekanism:machineblock2:1>, [[<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>],[<ironchest:iron_chest:6>, <mekanism:basicblock:9>, <mekanism:gastank>], [<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>]]);

//回旋式气液转换机
recipes.remove(<mekanism:machineblock2>);
recipes.addShaped(<mekanism:machineblock2>, [[<ore:blockGlass>, <mekanism:controlcircuit>, <ore:blockGlass>],[<mekanism:gastank>, <mekanism:energytablet>, <thermalexpansion:tank>], [<ore:blockGlass>, <mekanism:controlcircuit>, <ore:blockGlass>]]);

//提升物品堆叠上限
<mekanism:tierinstaller>.maxStackSize = 16;
<mekanism:tierinstaller:1>.maxStackSize = 16;
<mekanism:tierinstaller:2>.maxStackSize = 16;
<mekanism:tierinstaller:3>.maxStackSize = 16;

<mekanism:filterupgrade>.maxStackSize = 64;
<mekanism:energyupgrade>.maxStackSize = 64;
<mekanism:speedupgrade>.maxStackSize = 64;
<mekanism:mufflingupgrade>.maxStackSize = 64;

//钢制机壳
recipes.remove(<mekanism:basicblock:8>);

//终极控制电路
recipes.remove(<mekanism:controlcircuit:3>);

//冶金灌注机
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, [[<enderio:item_alloy_endergy_ingot:6>, <mekanism:basicblock>, <enderio:item_alloy_endergy_ingot:6>],[<contenttweaker:advancedcircuit>, <mekanism:basicblock:8>, <contenttweaker:advancedcircuit>], [<enderio:item_alloy_endergy_ingot:2>, <mekanism:basicblock>, <enderio:item_alloy_endergy_ingot:2>]]);

//化学清洗修改核废水产量
mods.mekanism.chemical.washer.removeRecipe(<gas:nuclearwaste>);
mods.mekanism.chemical.washer.addRecipe(<gas:fissilefule>*1000, <gas:nuclearwaste>*1000);

//富集仓
recipes.remove(<mekanism:machineblock>);
recipes.addShaped(<mekanism:machineblock>, [[<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>],[<contenttweaker:advancedcircuit>, <mekanism:basicblock:8>, <contenttweaker:advancedcircuit>], [<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>]]);

//富集合金
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);
mods.mekanism.infuser.addRecipe("REDSTONE", 20, <contenttweaker:mana_stainless_ingot>, <mekanism:enrichedalloy>);

//基础控制电路
mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit>);
mods.mekanism.infuser.addRecipe("REDSTONE", 20, <contenttweaker:basiccircuit>, <mekanism:controlcircuit>);

//压缩红石/钻石/煤炭
mods.mekanism.enrichment.removeRecipe(<minecraft:redstone>);
mods.mekanism.enrichment.removeRecipe(<minecraft:diamond>);
mods.mekanism.enrichment.removeRecipe(<minecraft:coal>);
mods.mekanism.enrichment.removeRecipe(<minecraft:coal:1>);

mods.mekanism.enrichment.addRecipe(<botania:manaresource:23>,<mekanism:compressedredstone>);
mods.mekanism.enrichment.addRecipe(<botania:manaresource:2>,<mekanism:compresseddiamond>);
mods.mekanism.enrichment.addRecipe(<extrabotany:nightmarefuel>,<mekanism:compressedcarbon>);

//热力蒸馏方块
recipes.remove(<mekanism:basicblock2>);
recipes.addShaped(<mekanism:basicblock2> * 4, [[<mekanism:enrichedalloy>, <contenttweaker:stainless_ingot>, <mekanism:enrichedalloy>],[<contenttweaker:stainless_ingot>, <thermalfoundation:material:291>, <contenttweaker:stainless_ingot>], [<mekanism:enrichedalloy>, <contenttweaker:stainless_ingot>, <mekanism:enrichedalloy>]]);

//电解分离器
recipes.remove(<mekanism:machineblock2:4>);
recipes.addShaped(<mekanism:machineblock2:4>, [[<contenttweaker:stainless_ingot>, <minecraft:redstone_block>, <contenttweaker:stainless_ingot>],[<mekanism:enrichedalloy>, <mekanism:electrolyticcore>, <mekanism:enrichedalloy>], [<contenttweaker:stainless_ingot>, <minecraft:redstone_block>, <contenttweaker:stainless_ingot>]]);

//==================================================================================生物农场==================================================================================
//铁制
recipes.remove(<tinymobfarm:iron_farm>);
recipes.addShaped(<tinymobfarm:iron_farm>, [[<minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_rod>],[<tinymobfarm:stone_farm>, <contenttweaker:basiccircuit>, <tinymobfarm:stone_farm>], [<ore:blockIron>,<ore:blockIron>,<ore:blockIron>]]);

//==================================================================================无尽贪婪==================================================================================
//无尽锭
ExtremeCrafting.remove(<avaritia:resource:6>);

//终极工作台
recipes.remove(<avaritia:extreme_crafting_table>);

//中子磨珠
recipes.removeShaped(<avaritiaio:grindingballneutronium> * 64, [[null, <avaritia:resource:4>, null],[<avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>], [null, <avaritia:resource:4>, null]]);
recipes.addShaped(<avaritiaio:grindingballneutronium> * 24, [[null, <avaritia:resource:4>, null],[<avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>], [null, <avaritia:resource:4>, null]]);
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritiaio:grindingballneutronium>);

//移除中子粒/尘埃熔融配方
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritia:resource:3>);
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritia:resource:2>);

//移除水晶矩阵锭配方
recipes.remove(<avaritia:resource:1>);

//中子素收集器
ExtremeCrafting.remove(<avaritia:neutron_collector>);
mods.avaritia.ExtremeCrafting.addShaped("neutron_collector", <avaritia:neutron_collector> * 2, 
[
    [<enderio:block_alloy:8>, <enderio:block_alloy:8>, <contenttweaker:advancedcircuit>, <extendedcrafting:material:24>, <environmentaltech:structure_frame_2>, <extendedcrafting:material:24>, <contenttweaker:advancedcircuit>, <enderio:block_alloy:8>, <enderio:block_alloy:8>], 
    [<enderio:block_alloy:8>, null, null, <mekanism:polyethene:2>, <contenttweaker:advancedcircuit>, <mekanism:polyethene:2>, null, null, <enderio:block_alloy:8>],
    [<avaritia:resource:1>, null, <mekanism:polyethene:2>, <minecraft:redstone_block>, <minecraft:redstone_block>, <minecraft:redstone_block>, <mekanism:polyethene:2>, null, <avaritia:resource:1>],
    [<botania:manaresource:4>, <mekanism:polyethene:2>, <minecraft:redstone_block>, <draconicevolution:draconium_block:0>, <avaritia:resource:1>, <draconicevolution:draconium_block:0>, <minecraft:redstone_block>, <mekanism:polyethene:2>, <botania:manaresource:4>],
    [<environmentaltech:structure_frame_2>, <contenttweaker:advancedcircuit>, <minecraft:redstone_block>, <plustic:osgloglasingot>, <extendedcrafting:material:10>, <plustic:osgloglasingot>, <minecraft:redstone_block>, <contenttweaker:advancedcircuit>, <environmentaltech:structure_frame_2>],
    [<botania:manaresource:4>, <mekanism:polyethene:2>, <minecraft:redstone_block>, <draconicevolution:draconium_block:0>, <avaritia:resource:1>, <draconicevolution:draconium_block:0>, <minecraft:redstone_block>, <mekanism:polyethene:2>, <botania:manaresource:4>],
    [<avaritia:resource:1>, null, <mekanism:polyethene:2>, <minecraft:redstone_block>, <minecraft:redstone_block>, <minecraft:redstone_block>, <mekanism:polyethene:2>, null, <avaritia:resource:1>],
    [<enderio:block_alloy:0>, null, null, <mekanism:polyethene:2>, <contenttweaker:advancedcircuit>, <mekanism:polyethene:2>, null, null, <enderio:block_alloy:0>],
    [<enderio:block_alloy:0>, <enderio:block_alloy:0>, <contenttweaker:advancedcircuit>, <extendedcrafting:material:24>, <environmentaltech:structure_frame_2>, <extendedcrafting:material:24>, <contenttweaker:advancedcircuit>, <enderio:block_alloy:0>, <enderio:block_alloy:0>]
]);

//中子素压缩机
ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
mods.avaritia.ExtremeCrafting.addShaped("neutronium_compressor", <avaritia:neutronium_compressor> * 2, 
[
	[<enderio:block_alloy:8>, <enderio:block_alloy:8>, <contenttweaker:extremecircuit>, <minecraft:hopper>, <enderutilities:enderpart:54>, <minecraft:hopper>, <contenttweaker:extremecircuit>, <enderio:block_alloy:8>, <enderio:block_alloy:8>], 
	[<enderio:block_alloy:8>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, null, null, null, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <enderio:block_alloy:8>],
	[<environmentaltech:structure_frame_4>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, null, null, null, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <environmentaltech:structure_frame_4>],
	[<enderio:block_alloy_endergy:3>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>,<contenttweaker:extremecircuit>, <avaritia:block_resource:0>, <contenttweaker:extremecircuit>, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <enderio:block_alloy_endergy:3>],
	[<tconevo:metal:10>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, <contenttweaker:galaxy_ingot>, <extendedcrafting:material:11>, <contenttweaker:galaxy_ingot>, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <tconevo:metal:10>],
	[<enderio:block_alloy_endergy:3>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, <contenttweaker:extremecircuit>, <avaritia:block_resource:0>, <contenttweaker:extremecircuit>, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <enderio:block_alloy_endergy:3>],
	[<environmentaltech:structure_frame_4>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, null, null, null, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <environmentaltech:structure_frame_4>],
	[<enderio:block_alloy:6>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, null, null, null, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <enderio:block_alloy:6>],
	[<enderio:block_alloy:6>, <enderio:block_alloy:6>, <contenttweaker:extremecircuit>, <enderio:block_alloy_endergy:3>, <enderio:block_alloy_endergy:3>, <enderio:block_alloy_endergy:3>, <contenttweaker:extremecircuit>, <enderio:block_alloy:6>, <enderio:block_alloy:6>]
]);

//永恒奇点
ExtremeCrafting.remove(<eternalsingularity:eternal_singularity>);

//无尽催化剂
ExtremeCrafting.remove(<avaritia:resource:5>);
mods.avaritia.ExtremeCrafting.addShaped("catalyst", <avaritia:resource:5> * 3, 
[
	[null, null, null, null, <enderio:block_alloy_endergy:3>, null, null, null, null], 
	[null, <contenttweaker:galaxy_ingot>, null, null, <environmentaltech:ionite>, null, null, <contenttweaker:mana_crystal3>, null],
	[null, null, <deepmoblearning:glitch_infused_ingot>, null, <bloodmagic:decorative_brick>, null, <appliedenergistics2:material:47>, null, null],
	[null, null, null, <avaritia:resource:1>, <tconevo:metal_block:1>, <contenttweaker:extremecircuit>, null, null, null],
	[<extendedcrafting:storage:3>, <nuclearcraft:block_ice>, <nuclearcraft:accelerator_electromagnet_idle>, <botania:storage:1>, <eternalsingularity:eternal_singularity>,<embers:block_dawnstone>, <nuclearcraft:tritium_lamp>, <mekanism:reinforcedplasticblock:15>, <extendedcrafting:storage:7>],
	[null, null, null, <avaritia:endest_pearl>, <tconstruct:metal:2>, <tconevo:metal:10>, null, null, null],
	[null, null, <avaritia:ultimate_stew>, null, <bloodmagic:decorative_brick:2>, null, <avaritia:resource:4>, null, null],
	[null, <avaritia:cosmic_meatballs>, null, null, <enderio:block_alloy_endergy:6>, null, null, <botania:manaresource:14>, null],
	[null, null, null, null, <tconevo:metal_block:7>, null, null, null, null]
]);

//奇点
mods.avaritia.Compressor.remove(<avaritia:singularity>);
mods.avaritia.Compressor.remove(<avaritia:singularity:1>);
mods.avaritia.Compressor.remove(<avaritia:singularity:2>);
mods.avaritia.Compressor.remove(<avaritia:singularity:3>);
mods.avaritia.Compressor.remove(<avaritia:singularity:4>);
mods.avaritia.Compressor.remove(<avaritia:singularity:5>);
mods.avaritia.Compressor.remove(<avaritia:singularity:6>);
mods.avaritia.Compressor.remove(<avaritia:singularity:7>);
mods.avaritia.Compressor.remove(<avaritia:singularity:8>);
mods.avaritia.Compressor.remove(<avaritia:singularity:9>);
mods.avaritia.Compressor.remove(<avaritia:singularity:10>);
mods.avaritia.Compressor.remove(<avaritia:singularity:11>);
mods.avaritia.Compressor.remove(<avaritia:singularity:13>);
mods.avaritia.Compressor.remove(<avaritia:singularity:14>);
mods.avaritia.Compressor.add("iron",<avaritia:singularity>, 0, <minecraft:iron_block>);
mods.avaritia.Compressor.add("gold",<avaritia:singularity:1>, 0, <minecraft:gold_block>);
mods.avaritia.Compressor.add("lapis",<avaritia:singularity:2>, 0, <minecraft:lapis_block>);
mods.avaritia.Compressor.add("redstone",<avaritia:singularity:3>, 0, <minecraft:redstone_block>);
mods.avaritia.Compressor.add("quartz",<avaritia:singularity:4>,0, <minecraft:quartz_block>);
mods.avaritia.Compressor.add("copper",<avaritia:singularity:5>, 0, <thermalfoundation:storage>);
mods.avaritia.Compressor.add("tin",<avaritia:singularity:6>, 0, <thermalfoundation:storage:1>);
mods.avaritia.Compressor.add("lead",<avaritia:singularity:7>, -80, <thermalfoundation:storage:3>);
mods.avaritia.Compressor.add("silver",<avaritia:singularity:8>, -80, <thermalfoundation:storage:2>);
mods.avaritia.Compressor.add("nickel",<avaritia:singularity:9>, -80, <thermalfoundation:storage:5>);
mods.avaritia.Compressor.add("diamond",<avaritia:singularity:10>, -160, <minecraft:diamond_block>);
mods.avaritia.Compressor.add("emerald",<avaritia:singularity:11>, -240,<minecraft:emerald_block> );
mods.avaritia.Compressor.add("platinum",<avaritia:singularity:13>, -160, <thermalfoundation:storage:6>);
mods.avaritia.Compressor.add("iridium",<avaritia:singularity:14>, -265,<thermalfoundation:storage:7> );

//超级煲
ExtremeCrafting.remove(<avaritia:ultimate_stew>);

//寰宇肉丸
ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);

//终望珍珠
ExtremeCrafting.remove(<avaritia:endest_pearl>);
mods.avaritia.ExtremeCrafting.addShaped("endest_pearl", <avaritia:endest_pearl> * 4, 
[
	[null, null, null, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, null, null, null], 
	[null, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, <minecraft:ender_eye>, <enderutilities:enderpart:2>, <appliedenergistics2:material:9>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, null],
	[null, <thermalfoundation:storage_alloy:7>, <torchmaster:frozen_pearl>, <minecraft:ender_eye>, <enderutilities:enderpart:2>, <appliedenergistics2:material:9>, <torchmaster:frozen_pearl>, <thermalfoundation:storage_alloy:7>, null],
	[<thermalfoundation:storage_alloy:7>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <enderutilities:enderpearlreusable:1>, <appliedenergistics2:material:9>, <appliedenergistics2:material:9>, <appliedenergistics2:material:9>, <thermalfoundation:storage_alloy:7>],
	[<thermalfoundation:storage_alloy:7>, <enderutilities:enderpart:2>, <enderutilities:enderpart:2>, <enderutilities:enderpearlreusable:1>, <extendedcrafting:material:40>, <enderutilities:enderpearlreusable:1>, <enderutilities:enderpart:2>, <enderutilities:enderpart:2>, <thermalfoundation:storage_alloy:7>],
	[<thermalfoundation:storage_alloy:7>, <appliedenergistics2:material:9>, <appliedenergistics2:material:9>, <appliedenergistics2:material:9>, <enderutilities:enderpearlreusable:1>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <thermalfoundation:storage_alloy:7>],
	[null, <thermalfoundation:storage_alloy:7>, <torchmaster:frozen_pearl>, <appliedenergistics2:material:9>, <enderutilities:enderpart:2>, <minecraft:ender_eye>, <torchmaster:frozen_pearl>, <thermalfoundation:storage_alloy:7>, null],
	[null, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, <appliedenergistics2:material:9>, <enderutilities:enderpart:2>, <minecraft:ender_eye>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, null],
	[null, null, null, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, null, null, null]
]);

