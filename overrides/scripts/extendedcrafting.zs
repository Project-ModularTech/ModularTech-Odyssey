//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CombinationCrafting;

//========================================================================================基础========================================================================================
//大理石
TableCrafting.addShaped(0, <astralsorcery:blockmarble>*8, [
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	[<minecraft:stone>, <thermalfoundation:dye:15>, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
]);

//铁制机械部件
TableCrafting.addShaped(0, <immersiveengineering:material:8>, [
	[null,<minecraft:iron_ingot>,null],
	[<minecraft:iron_ingot>, <thermalfoundation:material:256>,<minecraft:iron_ingot>],
	[null,<minecraft:iron_ingot>,null]
]);

//高级合成组件
recipes.remove(<extendedcrafting:material:15>);
TableCrafting.addShaped(0, <extendedcrafting:material:15>*2, [
	[<ore:plateGold>,<ore:plateGold>, <extendedcrafting:material:7>],
	[<extendedcrafting:material:14>,<extendedcrafting:material:14>,<ore:plateGold>],
	[<extendedcrafting:material:14>,<extendedcrafting:material:14>,<ore:plateGold>]
]);

//中型物品输入仓
TableCrafting.addShaped(0,<modularmachinery:blockinputbus:2> * 2, [
	[<modularmachinery:blockcasing>, <ironchest:iron_chest:1>, <modularmachinery:blockcasing>],
	[<modularmachinery:blockinputbus:1>, null, <modularmachinery:blockinputbus:1>], 
	[<modularmachinery:blockcasing>, <ironchest:iron_chest:1>, <modularmachinery:blockcasing>]
]);

//强化物品输入仓
TableCrafting.addShaped(0,<modularmachinery:blockinputbus:3>, [
	[<modularmachinery:blockcasing>, <ironchest:iron_chest:2>, <modularmachinery:blockcasing>],
	[<modularmachinery:blockinputbus:2>, null, <modularmachinery:blockinputbus:2>], 
	[<modularmachinery:blockcasing>, <ironchest:iron_chest:2>, <modularmachinery:blockcasing>]
]);

//========================================================================================高级========================================================================================
//机器框架（热力）
recipes.remove(<thermalexpansion:frame>);
TableCrafting.addShaped(0, <thermalexpansion:frame>, [
	[<modularmachinery:blockcasing>,<ore:barsIron>, <ore:gearBronze>, <ore:barsIron>,<modularmachinery:blockcasing>],
	[<ore:barsIron>, <ore:ingotDawnstone>, <ore:scaffoldingSteel>, <ore:ingotDawnstone>, <ore:barsIron>],
	[<ore:gearBronze>, <immersiveengineering:metal_decoration0:5>, <embers:mech_core>,<immersiveengineering:metal_decoration0:5>, <ore:gearBronze>],
	[<ore:barsIron>, <ore:ingotDawnstone>, <ore:scaffoldingSteel>, <ore:ingotDawnstone>, <ore:barsIron>],
	[<modularmachinery:blockcasing>, <ore:barsIron>, <ore:gearBronze>, <ore:barsIron>, <modularmachinery:blockcasing>]
]);

//金质生物农场
recipes.remove(<tinymobfarm:gold_farm>);
TableCrafting.addShaped(0, <tinymobfarm:gold_farm>, [
	[<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<minecraft:blaze_rod>,<minecraft:ender_eye>,<minecraft:blaze_rod>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<tinymobfarm:iron_farm>,<contenttweaker:advancedcircuit>,<tinymobfarm:iron_farm>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<minecraft:blaze_rod>,<minecraft:ender_eye>,<minecraft:blaze_rod>,<enderio:block_holy_fused_glass>],
	[<ore:blockGold>,<ore:blockGold>,<ore:blockGold>,<ore:blockGold>,<ore:blockGold>]
]);

//钻石生物农场
recipes.remove(<tinymobfarm:diamond_farm>);
TableCrafting.addShaped(0, <tinymobfarm:diamond_farm>, [
	[<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<contenttweaker:mana_crystal2>,<deepmoblearning:living_matter_overworldian>,<contenttweaker:mana_crystal2>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<contenttweaker:epiccircuit>,<tinymobfarm:gold_farm>,<contenttweaker:epiccircuit>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<contenttweaker:mana_crystal2>,<deepmoblearning:living_matter_overworldian>,<contenttweaker:mana_crystal2>,<enderio:block_holy_fused_glass>],
	[<ore:blockDiamond>,<plustic:osmiridiumblock>,<draconicevolution:draconium_block>,<plustic:osmiridiumblock>,<ore:blockDiamond>]
]);

//大型能源
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockenergyinputhatch:4>*2, [
	[<tconevo:metal_block:7>, <modularmachinery:blockcasing:4>, <modularmachinery:blockenergyinputhatch:3>, <modularmachinery:blockcasing:4>, <tconevo:metal_block:7>], 
	[<modularmachinery:blockcasing:4>, <enderio:item_capacitor_stellar>, <draconicevolution:particle_generator:2>, <enderio:item_capacitor_stellar>, <modularmachinery:blockcasing:4>], 
	[<modularmachinery:blockenergyinputhatch:3>, <draconicevolution:particle_generator:2>, <draconicevolution:energy_storage_core>, <draconicevolution:particle_generator:2>, <modularmachinery:blockenergyinputhatch:3>], 
	[<modularmachinery:blockcasing:4>, <enderio:item_capacitor_stellar>, <draconicevolution:particle_generator:2>, <enderio:item_capacitor_stellar>, <modularmachinery:blockcasing:4>], 
	[<tconevo:metal_block:7>, <modularmachinery:blockcasing:4>, <modularmachinery:blockenergyinputhatch:3>, <modularmachinery:blockcasing:4>, <tconevo:metal_block:7>]
]);

//模拟室
recipes.remove(<deepmoblearning:simulation_chamber>);
TableCrafting.addShaped(0, <deepmoblearning:simulation_chamber>*2, [
	[<tconevo:metal>,<plustic:osgloglasingot>,<appliedenergistics2:material:9>,<plustic:osgloglasingot>,<tconevo:metal>],
	[<plustic:osgloglasingot>,<contenttweaker:epiccircuit>,<deepmoblearning:machine_casing>,<contenttweaker:epiccircuit>,<plustic:osgloglasingot>],
	[<appliedenergistics2:material:9>,<tinymobfarm:diamond_farm>,<deepmoblearning:data_model_blank>,<tinymobfarm:diamond_farm>,<appliedenergistics2:material:9>],
	[<plustic:osgloglasingot>,<contenttweaker:epiccircuit>,<deepmoblearning:machine_casing>,<contenttweaker:epiccircuit>,<plustic:osgloglasingot>],
	[<tconevo:metal>,<plustic:osgloglasingot>,<appliedenergistics2:material:9>,<plustic:osgloglasingot>,<tconevo:metal>]
]);

//镅RTG
recipes.remove(<nuclearcraft:rtg_americium>);
mods.extendedcrafting.TableCrafting.addShaped(0, <nuclearcraft:rtg_americium>, [
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>], 
	[<ore:ingotGraphite>, <ore:ingotAmericium241>, <ore:ingotGraphite>], 
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>]
]);

//钚RTG
recipes.remove(<nuclearcraft:rtg_plutonium>);
mods.extendedcrafting.TableCrafting.addShaped(0, <nuclearcraft:rtg_plutonium>, [
	[<ore:plateDU>, <ore:ingotGraphite>, <ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateDU>], 
	[<ore:ingotGraphite>, <ore:ingotPlutonium238>, <mekanism:energytabletcraft>, <ore:ingotPlutonium238>, <ore:ingotGraphite>], 
	[<ore:plateAdvanced>, <mekanism:energytabletcraft>, <ore:blockGraphite>, <mekanism:energytabletcraft>, <ore:plateAdvanced>], 
	[<ore:ingotGraphite>, <ore:ingotPlutonium238>, <mekanism:energytabletcraft>, <ore:ingotPlutonium238>, <ore:ingotGraphite>], 
	[<ore:plateDU>, <ore:ingotGraphite>, <ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateDU>]
]);

//测试楔石
recipes.remove(<deepmoblearning:trial_keystone>);
TableCrafting.addShaped(0, <deepmoblearning:trial_keystone>, [
	[null,null,null,null,null],
	[null,null,<deepmoblearning:trial_key>,null,null],
	[<tconevo:metal>,null,<enderutilities:enderpart:17>,null,<tconevo:metal>],
	[<botania:pylon:2>,<botania:pylon:2>,<deepmoblearning:machine_casing>,<botania:pylon:2>,<botania:pylon:2>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<minecraft:beacon>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

//大型物品输入
TableCrafting.addShaped(0, <modularmachinery:blockinputbus:4>, [
	[<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>,<avaritiaddons:avaritiaddons_chest>,<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>,null,<enderio:block_infinity>,null,<modularmachinery:blockcasing:4>],
	[<modularmachinery:blockinputbus:3>,<enderio:block_infinity>,<appliedenergistics2:material:38>,<enderio:block_infinity>,<modularmachinery:blockinputbus:3>],
	[<modularmachinery:blockcasing:4>,null,<enderio:block_infinity>,null,<modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>,<avaritiaddons:avaritiaddons_chest>,<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>]
]);

//小型组装机控制器
TableCrafting.addShaped(0, <modularmachinery:mini_assemble_machine_controller>, [
	[<modularmachinery:blockcasing>,<environmentaltech:connector>, <modularmachinery:blockcasing>, <environmentaltech:connector>,<modularmachinery:blockcasing>],
	[<environmentaltech:connector>, <immersiveengineering:material:27>,<contenttweaker:basiccircuit>, <immersiveengineering:material:27>,<environmentaltech:connector>],
	[<modularmachinery:blockcasing>, <contenttweaker:basiccircuit>,<extendedcrafting:material:9>,<contenttweaker:basiccircuit>,<modularmachinery:blockcasing>],
	[<environmentaltech:connector>, <immersiveengineering:material:27>,<contenttweaker:basiccircuit>, <immersiveengineering:material:27>,<environmentaltech:connector>],
	[<modularmachinery:blockcasing>, <environmentaltech:connector>,<modularmachinery:blockcasing>,<environmentaltech:connector>, <modularmachinery:blockcasing>]
]);

//先进组装机控制器
TableCrafting.addShaped(0, <modularmachinery:advanced_assemble_machine_controller>, [
	[<environmentaltech:structure_frame_2>,<modularmachinery:blockcasing:4>,<draconicevolution:draconium_block>, <modularmachinery:blockcasing:4>,<environmentaltech:structure_frame_2>],
	[<modularmachinery:blockcasing:4>, <environmentaltech:structure_panel>,<draconicevolution:draconic_core>, <environmentaltech:structure_panel>,<modularmachinery:blockcasing:4>],
	[<nuclearcraft:ingot_block:7>, <contenttweaker:advancedcircuit>,<modularmachinery:mini_assemble_machine_controller>,<contenttweaker:advancedcircuit>,<nuclearcraft:ingot_block:7>],
	[<modularmachinery:blockcasing:4>,<environmentaltech:structure_panel>,<draconicevolution:draconic_core>,<environmentaltech:structure_panel>,<modularmachinery:blockcasing:4>],
	[<environmentaltech:structure_frame_2>,<modularmachinery:blockcasing:4>,<draconicevolution:draconium_block>,<modularmachinery:blockcasing:4>,<environmentaltech:structure_frame_2>]
]);

//大型电解池控制器
TableCrafting.addShaped(0, <modularmachinery:large_electrolytic_cell_controller>, [
	[<nuclearcraft:part>,<environmentaltech:structure_panel>,<environmentaltech:connector>,<environmentaltech:structure_panel>,<nuclearcraft:part>],
	[<environmentaltech:structure_panel>, <contenttweaker:basiccircuit>,<mekanism:electrolyticcore>, <contenttweaker:basiccircuit>,<environmentaltech:structure_panel>],
	[<environmentaltech:connector>, <mekanism:electrolyticcore>,<nuclearcraft:water_source>,<mekanism:electrolyticcore>,<environmentaltech:connector>],
	[<environmentaltech:structure_panel>,<contenttweaker:basiccircuit>,<mekanism:electrolyticcore>,<contenttweaker:basiccircuit>,<environmentaltech:structure_panel>],
	[<nuclearcraft:part>,<environmentaltech:structure_panel>,<environmentaltech:connector>,<environmentaltech:structure_panel>,<nuclearcraft:part>]
]);

//强化机械外壳
recipes.remove(<modularmachinery:blockcasing:4>);
TableCrafting.addShaped(0, <modularmachinery:blockcasing:4>*8, [
	[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],
	[<minecraft:obsidian>,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,<minecraft:obsidian>],
	[<minecraft:obsidian>,<modularmachinery:blockcasing>,<thermalfoundation:storage_alloy>,<modularmachinery:blockcasing>,<minecraft:obsidian>],
	[<minecraft:obsidian>,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,<minecraft:obsidian>],
	[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]
]);

//进阶电路基板
TableCrafting.addShaped(0, <contenttweaker:advancedcircuitplate>*4, [
	[<contenttweaker:stainless_ingot>,<nuclearcraft:part:6>,<nuclearcraft:part>,<nuclearcraft:part:6>,<contenttweaker:stainless_ingot>],
	[<nuclearcraft:part:6>,<nuclearcraft:gelatin>,<contenttweaker:compressedresinplate>,<nuclearcraft:gelatin>,<nuclearcraft:part:6>],
	[<nuclearcraft:part>,<contenttweaker:compressedresinplate>,<environmentaltech:connector>,<contenttweaker:compressedresinplate>,<nuclearcraft:part>],
	[<nuclearcraft:part:6>,<nuclearcraft:gelatin>,<contenttweaker:compressedresinplate>,<nuclearcraft:gelatin>,<nuclearcraft:part:6>],
	[<contenttweaker:stainless_ingot>,<nuclearcraft:part:6>,<nuclearcraft:part>,<nuclearcraft:part:6>,<contenttweaker:stainless_ingot>]
]);

//一级虚空矿物采掘机控制器
recipes.remove(<environmentaltech:void_ore_miner_cont_1>);
TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_1>, [
	[<ore:blockLitherite>,<ore:blockLitherite>, <ore:blockLitherite>, <ore:blockLitherite>,<ore:blockLitherite>],
	[<ore:blockLitherite>, <immersiveengineering:drillhead>,<minecraft:beacon>, <immersiveengineering:drillhead>,<ore:blockLitherite>],
	[<ore:blockLitherite>, <contenttweaker:basiccircuit>,<enderio:item_material:54>,<contenttweaker:basiccircuit>,<ore:blockLitherite>],
	[<ore:blockLitherite>, <contenttweaker:basiccircuit>,<environmentaltech:laser_core>, <contenttweaker:basiccircuit>,<ore:blockLitherite>],
	[<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>,<ore:etLaserLens>,<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>]
]);

//一级虚空资源采掘机控制器
recipes.remove(<environmentaltech:void_res_miner_cont_1>);
TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_1>, [
	[<ore:blockLitherite>,<ore:blockLitherite>, <draconicevolution:draconium_block>, <ore:blockLitherite>,<ore:blockLitherite>],
	[<ore:blockLitherite>, <immersiveengineering:drillhead>,<minecraft:beacon>, <immersiveengineering:drillhead>,<ore:blockLitherite>],
	[<ore:blockLitherite>, <contenttweaker:basiccircuit>,<enderio:item_material:54>,<contenttweaker:basiccircuit>,<ore:blockLitherite>],
	[<ore:blockLitherite>, <contenttweaker:basiccircuit>,<environmentaltech:laser_core>, <contenttweaker:basiccircuit>,<ore:blockLitherite>],
	[<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>,<ore:etLaserLens>,<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>]
]);

//一级虚空植物采掘机控制器
recipes.remove(<environmentaltech:void_botanic_miner_cont_1>);
TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_1>, [
	[<ore:blockLitherite>,<ore:blockLitherite>, <draconicevolution:draconium_block>, <ore:blockLitherite>,<ore:blockLitherite>],
	[<ore:blockLitherite>, <botania:terraaxe>,<minecraft:beacon>, <botania:terraaxe>,<ore:blockLitherite>],
	[<ore:blockLitherite>, <contenttweaker:basiccircuit>,<enderio:item_material:54>,<contenttweaker:basiccircuit>,<ore:blockLitherite>],
	[<ore:blockLitherite>, <contenttweaker:basiccircuit>,<environmentaltech:laser_core>, <contenttweaker:basiccircuit>,<ore:blockLitherite>],
	[<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>,<ore:etLaserLens>,<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>]
]);

//高级控制电路
recipes.remove(<mekanism:controlcircuit:1>);
TableCrafting.addShaped(0,<mekanism:controlcircuit:1>*8, [
	[null,<mekanism:enrichedalloy>, null,<mekanism:enrichedalloy>,null],
	[<mekanism:enrichedalloy>,<contenttweaker:advancedcircuit>,<mekanism:controlcircuit>,<contenttweaker:advancedcircuit>,<mekanism:enrichedalloy>],
	[null,<mekanism:controlcircuit>,<contenttweaker:advancedcircuitplate>,<mekanism:controlcircuit>,null],
	[<mekanism:enrichedalloy>,<contenttweaker:advancedcircuit>,<mekanism:controlcircuit>,<contenttweaker:advancedcircuit>,<mekanism:enrichedalloy>],
	[null,<mekanism:enrichedalloy>,null,<mekanism:enrichedalloy>,null]
]);

//机械齿轮箱
TableCrafting.addShaped(0,<modularmachinery:blockcasing:3>, [
	[<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>,<enderio:item_material:73>,<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>,<enderio:item_material:13>,<immersiveengineering:metal_decoration0:4>,<enderio:item_material:13>,<modularmachinery:blockcasing:4>],
	[<enderio:item_material:73>,<immersiveengineering:metal_decoration0:3>,<immersiveengineering:metal_decoration0:5>,<immersiveengineering:metal_decoration0:3>,<enderio:item_material:73>],
	[<modularmachinery:blockcasing:4>,<enderio:item_material:13>,<immersiveengineering:metal_decoration0:4>,<enderio:item_material:13>,<modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>,<enderio:item_material:73>,<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>]
]);

//炼金台
recipes.remove(<embers:alchemy_tablet>);
TableCrafting.addShaped(0, <embers:alchemy_tablet>, [
	[null,null,null,null,null],
	[null, <botania:manaresource:4>,<botania:rune:1>, <botania:manaresource:4>,null],
	[<tconstruct:metal:5>, <embers:block_caminite_brick>,<botania:manaresource:4>,<embers:block_caminite_brick>,<tconstruct:metal:5>],
	[<embers:block_caminite_brick>,<botania:runealtar>,<extendedcrafting:table_advanced>,<botania:runealtar>,<embers:block_caminite_brick>],
	[<embers:block_caminite_brick>,<embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_caminite_brick>]
]);

//精英合成组件
recipes.remove(<extendedcrafting:material:16>);
TableCrafting.addShaped(0, <extendedcrafting:material:16>*4, [
	[null,null,null,<mekanism:compresseddiamond>,null],
	[<mekanism:compresseddiamond>,<mekanism:compresseddiamond>,<mekanism:compresseddiamond>,<extendedcrafting:storage:1>,<mekanism:compresseddiamond>],
	[<extendedcrafting:material:15>,<extendedcrafting:material:15>,<extendedcrafting:material:15>,<mekanism:compresseddiamond>,null],
	[<extendedcrafting:material:15>,<extendedcrafting:material:15>,<extendedcrafting:material:15>,<mekanism:compresseddiamond>,null],
	[<extendedcrafting:material:15>,<extendedcrafting:material:15>,<extendedcrafting:material:15>,<mekanism:compresseddiamond>,null]
]);

//========================================================================================精英========================================================================================
//二级虚空资源采掘机控制器
recipes.remove(<environmentaltech:void_res_miner_cont_2>);
TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<embers:wildfire_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_res_miner_cont_1>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<tconevo:metal_block:6>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_res_miner_cont_1>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<mekanism:controlcircuit:2>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_res_miner_cont_1>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>]
]);

//二级虚空植物采掘机控制器
recipes.remove(<environmentaltech:void_botanic_miner_cont_2>);
TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<embers:wildfire_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_botanic_miner_cont_1>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<tconevo:metal_block:6>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_botanic_miner_cont_1>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<mekanism:controlcircuit:2>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_botanic_miner_cont_1>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>]
]);

//二级虚空矿物采掘机控制器
recipes.remove(<environmentaltech:void_ore_miner_cont_2>);
TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<embers:wildfire_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_ore_miner_cont_1>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<tconevo:metal_block:6>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_ore_miner_cont_1>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<mekanism:controlcircuit:2>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_ore_miner_cont_1>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockErodium>],
	[<ore:blockErodium>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>,<environmentaltech:structure_frame_2>]
]);

//巨型物品输入
TableCrafting.addShaped(0, <modularmachinery:blockinputbus:5>, [
	[<contenttweaker:galaxy_ingot>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <enderutilities:enderpart:54>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <contenttweaker:galaxy_ingot>],
	[<modularmachinery:blockcasing:4>, null, null, <enderio:block_infinity:2>, null, null, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, null, <contenttweaker:mastercircuit>, <enderio:block_infinity:2>, <contenttweaker:mastercircuit>, null, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockinputbus:4>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <aeadditions:storage.component:1>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <modularmachinery:blockinputbus:4>],
	[<modularmachinery:blockcasing:4>, null, <contenttweaker:mastercircuit>, <enderio:block_infinity:2>, <contenttweaker:mastercircuit>, null, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, null, null, <enderio:block_infinity:2>, null, null, <modularmachinery:blockcasing:4>],
	[<contenttweaker:galaxy_ingot>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <enderutilities:enderpart:54>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <contenttweaker:galaxy_ingot>]
]);

//锎RTG
recipes.remove(<nuclearcraft:rtg_californium>);
mods.extendedcrafting.TableCrafting.addShaped(0, <nuclearcraft:rtg_californium>*2, [
	[<ore:blockGraphite>, <ore:plateElite>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <ore:plateElite>, <ore:blockGraphite>], 
	[<ore:plateElite>, <mekanism:energytabletcraft>, <ore:ingotVibrantAlloy>, <nuclearcraft:lithium_ion_cell>, <ore:ingotVibrantAlloy>, <mekanism:energytabletcraft>, <ore:plateElite>], 
	[<contenttweaker:stainless_plate>, <nuclearcraft:lithium_ion_cell>, <mekanism:energytabletcraft>, <ore:ingotCalifornium250>, <mekanism:energytabletcraft>, <nuclearcraft:lithium_ion_cell>, <contenttweaker:stainless_plate>], 
	[<contenttweaker:stainless_plate>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotCalifornium250>, <ore:ingotCalifornium250>, <ore:ingotCalifornium250>, <deepmoblearning:glitch_infused_ingot>, <contenttweaker:stainless_plate>], 
	[<contenttweaker:stainless_plate>, <nuclearcraft:lithium_ion_cell>, <mekanism:energytabletcraft>, <ore:ingotCalifornium250>, <mekanism:energytabletcraft>, <nuclearcraft:lithium_ion_cell>, <contenttweaker:stainless_plate>], 
	[<ore:plateElite>, <mekanism:energytabletcraft>, <ore:ingotVibrantAlloy>, <nuclearcraft:lithium_ion_cell>, <ore:ingotVibrantAlloy>, <mekanism:energytabletcraft>, <ore:plateElite>], 
	[<ore:blockGraphite>, <ore:plateElite>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <ore:plateElite>, <ore:blockGraphite>]
]);
mods.extendedcrafting.TableCrafting.addShaped(0, <nuclearcraft:rtg_californium>*2, [
	[<ore:blockGraphite>, <ore:plateElite>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <ore:plateElite>, <ore:blockGraphite>], 
	[<ore:plateElite>, <mekanism:energytabletcraft>, <ore:ingotVibrantAlloy>, <contenttweaker:li_cell>, <ore:ingotVibrantAlloy>, <mekanism:energytabletcraft>, <ore:plateElite>], 
	[<contenttweaker:stainless_plate>, <contenttweaker:li_cell>, <mekanism:energytabletcraft>, <ore:ingotCalifornium250>, <mekanism:energytabletcraft>, <contenttweaker:li_cell>, <contenttweaker:stainless_plate>], 
	[<contenttweaker:stainless_plate>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotCalifornium250>, <ore:ingotCalifornium250>, <ore:ingotCalifornium250>, <deepmoblearning:glitch_infused_ingot>, <contenttweaker:stainless_plate>], 
	[<contenttweaker:stainless_plate>, <contenttweaker:li_cell>, <mekanism:energytabletcraft>, <ore:ingotCalifornium250>, <mekanism:energytabletcraft>, <contenttweaker:li_cell>, <contenttweaker:stainless_plate>], 
	[<ore:plateElite>, <mekanism:energytabletcraft>, <ore:ingotVibrantAlloy>, <contenttweaker:li_cell>, <ore:ingotVibrantAlloy>, <mekanism:energytabletcraft>, <ore:plateElite>], 
	[<ore:blockGraphite>, <ore:plateElite>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <ore:plateElite>, <ore:blockGraphite>]
]);

//精英控制电路
recipes.remove(<mekanism:controlcircuit:2>);
TableCrafting.addShaped(0, <mekanism:controlcircuit:2>*8, [
	[null,null,<mekanism:reinforcedalloy>,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>,null,null],
	[null,<mekanism:reinforcedalloy>,<mekanism:controlcircuit:1>,<immersiveengineering:material:27>,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>,null],
	[<mekanism:reinforcedalloy>,<contenttweaker:advancedcircuit>,<contenttweaker:epiccircuitplate>,<contenttweaker:epiccircuitplate>,<contenttweaker:epiccircuitplate>,<contenttweaker:advancedcircuit>,<mekanism:reinforcedalloy>],
	[<immersiveengineering:material:27>,<mekanism:controlcircuit:1>,<contenttweaker:epiccircuitplate>,<threng:material:14>,<contenttweaker:epiccircuitplate>,<mekanism:controlcircuit:1>,<immersiveengineering:material:27>],
	[<mekanism:reinforcedalloy>,<contenttweaker:advancedcircuit>,<contenttweaker:epiccircuitplate>,<contenttweaker:epiccircuitplate>,<contenttweaker:epiccircuitplate>,<contenttweaker:advancedcircuit>,<mekanism:reinforcedalloy>],
	[null,<mekanism:reinforcedalloy>,<mekanism:controlcircuit:1>,<immersiveengineering:material:27>,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>,null],
	[null,null,<mekanism:reinforcedalloy>,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>,null,null]
]);

//手提包(大)
recipes.remove(<enderutilities:handybag:1>);
TableCrafting.addShaped(0, <enderutilities:handybag:1>, [
	[<botania:manaresource:22>,<botania:manaresource:22>,<avaritia:resource:4>,<contenttweaker:crystal_3>,<avaritia:resource:4>,<botania:manaresource:22>,<botania:manaresource:22>],
	[<enderutilities:enderpart:2>,<contenttweaker:mana_crystal1>,null,<contenttweaker:epiccircuit>,null,<contenttweaker:mana_crystal1>,<enderutilities:enderpart:2>],
	[<enderutilities:enderpart:2>,null,<appliedenergistics2:material:38>,<appliedenergistics2:material:47>,<appliedenergistics2:material:38>,null,<enderutilities:enderpart:2>],
	[<draconicevolution:wyvern_core>,<extrabotany:material:1>,<enderutilities:enderpart:17>,<enderutilities:handybag>,<enderutilities:enderpart:17>,<extrabotany:material:1>,<draconicevolution:wyvern_core>],
	[<enderutilities:enderpart:2>,null,<appliedenergistics2:material:38>,<appliedenergistics2:material:47>,<appliedenergistics2:material:38>,null,<enderutilities:enderpart:2>],
	[<enderutilities:enderpart:2>,<contenttweaker:mana_crystal1>,null,<contenttweaker:epiccircuit>,null,<contenttweaker:mana_crystal1>,<enderutilities:enderpart:2>],
	[<botania:manaresource:22>,<botania:manaresource:22>,<avaritia:resource:4>,<contenttweaker:crystal_3>,<avaritia:resource:4>,<botania:manaresource:22>,<botania:manaresource:22>]
]);

//三级虚空矿物采掘机控制器
recipes.remove(<environmentaltech:void_ore_miner_cont_3>);
TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:void_ore_miner_cont_2>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:laser_core>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<tconevo:metal>,<tconevo:metal>,<environmentaltech:laser_core>,<tconevo:metal>,<tconevo:metal>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

//三级虚空资源采掘机控制器
recipes.remove(<environmentaltech:void_res_miner_cont_3>);
TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:void_res_miner_cont_2>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:laser_core>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<tconevo:metal>,<tconevo:metal>,<environmentaltech:laser_core>,<tconevo:metal>,<tconevo:metal>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

//三级虚空植物采掘机控制器
recipes.remove(<environmentaltech:void_botanic_miner_cont_3>);
TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:void_botanic_miner_cont_2>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:laser_core>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<tconevo:metal>,<tconevo:metal>,<environmentaltech:laser_core>,<tconevo:metal>,<tconevo:metal>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

//战利品制造机
recipes.remove(<deepmoblearning:extraction_chamber>);
TableCrafting.addShaped(0, <deepmoblearning:extraction_chamber>, [
	[<tconevo:metal>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<avaritia:resource:1>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<tconevo:metal>],
	[<environmentaltech:structure_frame_3>,<contenttweaker:mana_crystal3>,<deepmoblearning:living_matter_overworldian>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_extraterrestrial>,<contenttweaker:mana_crystal3>,<environmentaltech:structure_frame_3>],
	[<environmentaltech:structure_frame_3>,<deepmoblearning:living_matter_extraterrestrial>,<draconicevolution:draconic_ingot>,<avaritia:resource:4>,<draconicevolution:draconic_ingot>,<deepmoblearning:living_matter_overworldian>,<environmentaltech:structure_frame_3>],
	[<avaritia:resource:1>,<deepmoblearning:living_matter_hellish>,<avaritia:resource:4>,<deepmoblearning:machine_casing>,<avaritia:resource:4>,<deepmoblearning:living_matter_hellish>,<avaritia:resource:1>],
	[<environmentaltech:structure_frame_3>,<deepmoblearning:living_matter_overworldian>,<draconicevolution:draconic_ingot>,<avaritia:resource:4>,<draconicevolution:draconic_ingot>,<deepmoblearning:living_matter_extraterrestrial>,<environmentaltech:structure_frame_3>],
	[<environmentaltech:structure_frame_3>,<contenttweaker:mana_crystal3>,<deepmoblearning:living_matter_extraterrestrial>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_overworldian>,<contenttweaker:mana_crystal3>,<environmentaltech:structure_frame_3>],
	[<tconevo:metal>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<avaritia:resource:1>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<tconevo:metal>]
]);

//绿宝石生物农场
recipes.remove(<tinymobfarm:emerald_farm>);
TableCrafting.addShaped(0, <tinymobfarm:emerald_farm>, [
	[<enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>], 
	[<enderio:block_holy_fused_glass:0>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <enderio:block_holy_fused_glass:0>],
	[<enderio:block_holy_fused_glass:0>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:living_matter_extraterrestrial>, <contenttweaker:mana_crystal3>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:glitch_infused_ingot>, <enderio:block_holy_fused_glass:0>],
	[<enderio:block_holy_fused_glass:0>, <deepmoblearning:glitch_infused_ingot>, <contenttweaker:mastercircuit>, <tinymobfarm:diamond_farm>, <contenttweaker:mastercircuit>, <deepmoblearning:glitch_infused_ingot>, <enderio:block_holy_fused_glass:0>],
	[<enderio:block_holy_fused_glass:0>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:living_matter_extraterrestrial>, <contenttweaker:mana_crystal3>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:glitch_infused_ingot>, <enderio:block_holy_fused_glass:0>],
	[<enderio:block_holy_fused_glass:0>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <enderio:block_holy_fused_glass:0>],
	[<minecraft:emerald_block>, <minecraft:emerald_block>, <contenttweaker:zl_block:0>, <tconevo:metal_block:1>, <contenttweaker:zl_block:0>, <minecraft:emerald_block>, <minecraft:emerald_block>]
]);

/*
TableCrafting.addShaped(3, <enderutilities:handybag:1>, [
	[,,,,,,],
	[,,,,,,],
	[,,,,,,],
	[,,,,,,],
	[,,,,,,],
	[,,,,,,],
	[,,,,,,]
]);
*/

//========================================================================================终极========================================================================================
//四级矿机
recipes.remove(<environmentaltech:void_ore_miner_cont_4>);
TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_4>, [
	[<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>],
	[<ore:blockPladium>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockPladium>],
	[<ore:blockPladium>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:part>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:void_ore_miner_cont_3>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:laser_core>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockPladium>],
	[<ore:blockPladium>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockPladium>],
	[<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<astralsorcery:itemcoloredlens:6>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>]
]);

//四级资源
recipes.remove(<environmentaltech:void_res_miner_cont_4>);
TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_4>, [
	[<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>],
	[<ore:blockPladium>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockPladium>],
	[<ore:blockPladium>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:part>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:void_res_miner_cont_3>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:laser_core>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockPladium>],
	[<ore:blockPladium>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockPladium>],
	[<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<astralsorcery:itemcoloredlens:6>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>]
]);

//四级植物
recipes.remove(<environmentaltech:void_botanic_miner_cont_4>);
TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_4>, [
	[<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>],
	[<ore:blockPladium>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockPladium>],
	[<ore:blockPladium>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:part>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:void_botanic_miner_cont_3>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:laser_core>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockPladium>],
	[<ore:blockPladium>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockPladium>],
	[<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<astralsorcery:itemcoloredlens:6>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>]
]);

//超级物品输入
TableCrafting.addShaped(0, <modularmachinery:blockinputbus:6> * 2, [
	[<avaritia:block_resource:0>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockinputbus:5>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <avaritia:block_resource:0>], 
	[<modularmachinery:blockcasing:4>, <contenttweaker:zl_block:0>, null, <enderio:block_infinity:2>, <contenttweaker:galaxy_ingot>, <enderio:block_infinity:2>, null, <contenttweaker:zl_block:0>, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, null, <contenttweaker:zl_block:0>, <enderio:block_infinity:2>, <contenttweaker:galaxy_ingot>, <enderio:block_infinity:2>, <contenttweaker:zl_block:0>, null, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <enderutilities:enderpart:54>, <aeadditions:storage.component:1>, <enderutilities:enderpart:54>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockinputbus:5>, <contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>, <aeadditions:storage.component:1>, <eternalsingularity:eternal_singularity>, <aeadditions:storage.component:1>, <contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>, <modularmachinery:blockinputbus:5>],
	[<modularmachinery:blockcasing:4>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <enderutilities:enderpart:54>, <aeadditions:storage.component:1>, <enderutilities:enderpart:54>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, null, <contenttweaker:zl_block:0>, <enderio:block_infinity:2>, <contenttweaker:galaxy_ingot>, <enderio:block_infinity:2>, <contenttweaker:zl_block:0>, null, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, <contenttweaker:zl_block:0>, null, <enderio:block_infinity:2>, <contenttweaker:galaxy_ingot>, <enderio:block_infinity:2>, null, <contenttweaker:zl_block:0>, <modularmachinery:blockcasing:4>],
	[<avaritia:block_resource:0>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockinputbus:5>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <avaritia:block_resource:0>]
]);

//五级矿机
recipes.remove(<environmentaltech:void_ore_miner_cont_5>);
mods.extendedcrafting.TableCrafting.addShaped(4, <environmentaltech:void_ore_miner_cont_5>, 
[
    [<ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:part>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <draconicevolution:draconic_pick>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:void_ore_miner_cont_4>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockIonite>],
    [<ore:blockIonite>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockIonite>],
    [<ore:blockIonite>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockIonite>],
    [<environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <avaritiatweaks:enhancement_crystal>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>]
]);

//五级资源
recipes.remove(<environmentaltech:void_res_miner_cont_5>);
mods.extendedcrafting.TableCrafting.addShaped(4, <environmentaltech:void_res_miner_cont_5>, 
[
    [<ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:part>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <draconicevolution:draconic_pick>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:void_res_miner_cont_4>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockIonite>],
    [<ore:blockIonite>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockIonite>],
    [<ore:blockIonite>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockIonite>],
    [<environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <avaritiatweaks:enhancement_crystal>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>]
]);

//五级植物
recipes.remove(<environmentaltech:void_botanic_miner_cont_5>);
mods.extendedcrafting.TableCrafting.addShaped(4, <environmentaltech:void_botanic_miner_cont_5>, 
[
    [<ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:part>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <draconicevolution:draconic_pick>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:void_botanic_miner_cont_4>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockIonite>],
    [<ore:blockIonite>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockIonite>],
    [<ore:blockIonite>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockIonite>],
    [<ore:blockIonite>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockIonite>],
    [<environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <avaritiatweaks:enhancement_crystal>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>]
]);

mods.extendedcrafting.TableCrafting.addShaped(4, <nuclearcraft:fusion_core>, 
[
	[<enderio:block_infinity:2>, <enderio:block_infinity:2>, <nuclearcraft:part:2>, <contenttweaker:galaxy_ingot>, <tconevo:metal:10>, <contenttweaker:galaxy_ingot>, <nuclearcraft:part:2>, <enderio:block_infinity:2>, <enderio:block_infinity:2>], 
	[<enderio:block_infinity:2>, <mekanism:controlcircuit:3>, <contenttweaker:mastercircuit>, <mekanism:controlcircuit:3>, <nuclearcraft:part:12>, <mekanism:controlcircuit:3>, <contenttweaker:mastercircuit>, <mekanism:controlcircuit:3>, <enderio:block_infinity:2>],
	[null, <contenttweaker:mastercircuit>, <modularmachinery:large_chemical_reactor_controller>, <mekanism:controlcircuit:3>, <draconicevolution:crafting_injector:3>, <mekanism:controlcircuit:3>, <modularmachinery:large_chemical_reactor_controller>, <contenttweaker:mastercircuit>, null],
	[null, null, <contenttweaker:galaxy_ingot>, <nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:block_depleted_californium>, <nuclearcraft:chemical_reactor_idle>, <contenttweaker:galaxy_ingot>, null, null],
	[null, null, <tconevo:metal:10>, <nuclearcraft:block_depleted_californium>, <contenttweaker:furance2>, <nuclearcraft:block_depleted_californium>, <tconevo:metal:10>, null, null],
	[null, null, <contenttweaker:galaxy_ingot>, <nuclearcraft:chemical_reactor_idle>, <nuclearcraft:block_depleted_californium>, <nuclearcraft:fission_controller_new_fixed>, <contenttweaker:galaxy_ingot>, null, null],
	[null, <contenttweaker:mastercircuit>, <modularmachinery:large_chemical_reactor_controller>, <mekanism:controlcircuit:3>, <draconicevolution:crafting_injector:3>, <mekanism:controlcircuit:3>, <modularmachinery:large_chemical_reactor_controller>, <contenttweaker:mastercircuit>, null],
	[<enderio:block_infinity:2>, <mekanism:controlcircuit:3>, <contenttweaker:mastercircuit>, <mekanism:controlcircuit:3>, <nuclearcraft:part:12>, <mekanism:controlcircuit:3>, <contenttweaker:mastercircuit>, <mekanism:controlcircuit:3>, <enderio:block_infinity:2>],
	[<enderio:block_infinity:2>, <enderio:block_infinity:2>, <nuclearcraft:part:2>, <contenttweaker:galaxy_ingot>, <tconevo:metal:10>, <contenttweaker:galaxy_ingot>, <nuclearcraft:part:2>, <enderio:block_infinity:2>, <enderio:block_infinity:2>]
]);

/*
TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_4>, [
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,]
]);
*/

//======================================================================================组合合成======================================================================================
//飞龙能量核心
recipes.remove(<draconicevolution:wyvern_energy_core>);
CombinationCrafting.addRecipe(
    <draconicevolution:wyvern_energy_core>, 2000000, 20000, <draconicevolution:draconic_core>,
    [<ore:blockDraconium>,<ore:blockDraconium>,<ore:blockDraconium>,<ore:blockDraconium>,
    <ore:blockRedstone>,<ore:blockRedstone>,<ore:blockRedstone>,<ore:blockRedstone>]
);

//龙芯
CombinationCrafting.addRecipe(
    <draconicevolution:draconic_core>, 640000, 20000, <minecraft:diamond>,
    [<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>,<contenttweaker:stainless_ingot>,
    <ore:ingotDraconium>,<ore:ingotDraconium>,<ore:ingotDraconium>,<ore:ingotDraconium>]
);