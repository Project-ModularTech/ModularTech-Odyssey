//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

//导包
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;

import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.AlchemyArray;

import mods.embers.Alchemy;

//======================================================================================星辉======================================================================================
//共鸣星杖
recipes.remove(<astralsorcery:itemwand>);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
recipes.addShaped(<astralsorcery:itemwand>, [[null, <embers:ingot_dawnstone>, <appliedenergistics2:material:9>],[null, <tconstruct:tough_tool_rod>.withTag({Material: "aquamarine"}), <embers:ingot_dawnstone>], [<tconstruct:tough_tool_rod>.withTag({Material: "aquamarine"}), null, null]]);

//微光苋
mods.botania.Apothecary.addRecipe(<astralsorcery:blockcustomflower>, [<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<thermalfoundation:fertilizer:2>,<thermalfoundation:fertilizer:2>]);

//星图
recipes.addShaped(<astralsorcery:itemconstellationpaper>, [[<minecraft:bookshelf>, <minecraft:bookshelf>, <minecraft:bookshelf>],[<astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>], [<minecraft:bookshelf>, <minecraft:bookshelf>, <minecraft:bookshelf>]]);

//星辉合成台
recipes.remove(<astralsorcery:blockaltar>);
recipes.addShaped(<astralsorcery:blockaltar>, [[<ore:blockMarble>, <astralsorcery:blockblackmarble>, <ore:blockMarble>],[<ore:blockMarble>, <extendedcrafting:table_basic>, <ore:blockMarble>], [<ore:blockMarble>, null, <ore:blockMarble>]]);

//水晶石矿石
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:blockcustomore",<astralsorcery:blockcustomore>, 800, 100, 
[
	<astralsorcery:blockmarble>, <environmentaltech:litherite_crystal>,<astralsorcery:blockmarble>,
	<appliedenergistics2:material:45>,<enderio:item_material:15>,<appliedenergistics2:material:45>,
	<astralsorcery:blockmarble>, <environmentaltech:litherite_crystal>,<astralsorcery:blockmarble>
]);

//星辉祭坛
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:alter_2",<astralsorcery:blockaltar:1>,800, 200, 
[
	<threng:material:5>, <astralsorcery:itemrockcrystalsimple>,<threng:material:5>,
	<ore:blockMarble>,<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}),<ore:blockMarble>,
	<ore:blockMarble>, <extendedcrafting:material:9>,<ore:blockMarble>
]);

//天辉祭坛
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
mods.astralsorcery.Altar.addAttunementAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:alter_3",<astralsorcery:blockaltar:2>,1600, 200, 
[
	<botania:manaresource:4>, <astralsorcery:itemcraftingcomponent:3>,<botania:manaresource:4>,
	<astralsorcery:blockmarble:4>,<astralsorcery:itemcelestialcrystal>,<astralsorcery:blockmarble:4>,
	<astralsorcery:blockmarble:1>,<extendedcrafting:material:9>,<astralsorcery:blockmarble:1>,
	<minecraft:nether_star>,<minecraft:nether_star>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>
]);

//共鸣祭坛
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/attunementaltar");
mods.astralsorcery.Altar.addTraitAltarRecipe("ohxihh:shaped/attunementaltar",<astralsorcery:blockattunementaltar>, 5000, 200, 
[
	//0-8
	null,<astralsorcery:itemcelestialcrystal>,null,<astralsorcery:itemcraftingcomponent:1>,<extrabotany:material:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockmarble:6>,<astralsorcery:blockattunementrelay>,<astralsorcery:blockmarble:6>,
	//9-12
	<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,
	//13-20
	null,null,null,null,<contenttweaker:mana_crystal2>,<contenttweaker:mana_crystal2>,<astralsorcery:blockblackmarble>,<astralsorcery:blockblackmarble>,
	//21-24
	null,null,null,<astralsorcery:blockblackmarble>
]);


//五彩祭坛
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4");
mods.astralsorcery.Altar.addConstellationAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:alter_4",<astralsorcery:blockaltar:3>,3600, 200, 
[
	<astralsorcery:blockmarble:6>,<astralsorcery:itemcoloredlens:6>,<astralsorcery:blockmarble:6>,
	<mekanism:polyethene:2>,<astralsorcery:itemcelestialcrystal>,<mekanism:polyethene:2>,
	<astralsorcery:blockmarble:6>,<deepmoblearning:data_model_blank>,<astralsorcery:blockmarble:6>,
	<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,
	<extendedcrafting:trimmed:4>,<extendedcrafting:trimmed:4>,<botania:manaresource:14>,<botania:manaresource:14>,<botania:manaresource:14>,<botania:manaresource:14>,<extendedcrafting:trimmed:4>,<extendedcrafting:trimmed:4>
]);

//烽火树
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/treebeacon");

//望远镜
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:handtelescope",<astralsorcery:itemhandtelescope>, 800, 100, 
[
	null, <botania:manaresource:3>,<astralsorcery:itemcraftingcomponent:3>,
	<botania:manaresource:3>,<threng:material:5>,<botania:manaresource:3>,
	<thermalfoundation:material:33>, <botania:manaresource:3>,null
]);

//玻璃透镜
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:glasslens",<astralsorcery:itemcraftingcomponent:3>, 200, 100, 
[
	<astralsorcery:itemusabledust>, <appliedenergistics2:quartz_glass>,<astralsorcery:itemusabledust:1>,
	<appliedenergistics2:quartz_glass>,<astralsorcery:itemcraftingcomponent>,<appliedenergistics2:quartz_glass>,
	<astralsorcery:itemusabledust:1>, <appliedenergistics2:quartz_glass>,<astralsorcery:itemusabledust>
]);

//共振宝石
mods.astralsorcery.StarlightInfusion.removeInfusion(<astralsorcery:itemcraftingcomponent:4>);
mods.astralsorcery.StarlightInfusion.addInfusion(<contenttweaker:aquamarine_essence>,<astralsorcery:itemcraftingcomponent:4>,false,0.5,160);

//=========================================================================================血魔法=========================================================================================
//血之祭坛
recipes.remove(<bloodmagic:altar>);
recipes.addShaped(<bloodmagic:altar>, [[<minecraft:dye:1>, null, <minecraft:dye:1>],[<thermalfoundation:storage_alloy>, <tconstruct:seared_tank>, <thermalfoundation:storage_alloy>], [<minecraft:gold_block>, <ebwizardry:arcane_workbench>, <minecraft:gold_block>]]);

//觉醒激活水晶
recipes.remove(<bloodmagic:activation_crystal:1>);
recipes.addShapeless(<bloodmagic:activation_crystal:1>, [<minecraft:dragon_egg>,<bloodmagic:slate:3>,<minecraft:nether_star>,<bloodmagic:slate:3>,<bloodmagic:activation_crystal>,<bloodmagic:slate:3>,<minecraft:nether_star>,<bloodmagic:slate:3>,<minecraft:dragon_egg>]);

//奥术粉灰
mods.thermalexpansion.Pulverizer.addRecipe(<bloodmagic:arcane_ashes>,<bloodmagic:slate:2>, 4000);

//束缚工具
AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_pickaxe>);
AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_axe>);
AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_shovel>);
AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_hoe>);

//微光水晶
mods.bloodmagic.TartaricForge.addRecipe(<embers:glimmer_shard>.withTag({light: 800}), [<bloodmagic:sigil_blood_light>,<astralsorcery:blockcustomflower>,<extendedcrafting:storage:1>,<thermalfoundation:storage_alloy:6>], 100, 100);

//仪式石
recipes.remove(<bloodmagic:ritual_stone>);
recipes.addShaped(<bloodmagic:ritual_stone> * 4, [[<modularmachinery:blockcasing:4>, <bloodmagic:slate:3>, <modularmachinery:blockcasing:4>],[<bloodmagic:slate:3>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <bloodmagic:slate:3>], [<modularmachinery:blockcasing:4>, <bloodmagic:slate:3>, <modularmachinery:blockcasing:4>]]);

//三级石板
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:1>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:2>,<contenttweaker:forgeplate>,2,5000,25,10);

//诅咒石板
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:curseplate>, [<bloodmagic:slate:3>,<environmentaltech:ionite_crystal>,<bloodmagic:decorative_brick>,<enderio:item_material:52>], 100, 100);

//四级石板
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:3>);

//悬幽石板
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:4>,<contenttweaker:curseplate>,4,50000,125,50);

//灵魂石板
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:soulplate>,<bloodmagic:slate:4>,5,120000,300,100);

//晶簇块
recipes.addShaped(<bloodmagic:decorative_brick:2>, [[<bloodmagic:blood_rune>, <bloodmagic:slate:4>, <bloodmagic:blood_rune>],[<minecraft:purpur_block>, <embers:ember_cluster>, <minecraft:purpur_block>], [<bloodmagic:blood_rune>, <bloodmagic:slate:4>, <bloodmagic:blood_rune>]]);

//晶簇砖
recipes.addShaped(<bloodmagic:decorative_brick:3>*4, [[<bloodmagic:decorative_brick:2>, <bloodmagic:decorative_brick:2>, null],[<bloodmagic:decorative_brick:2>, <bloodmagic:decorative_brick:2>, null], [null, null, null]]);

//牺牲匕首
recipes.remove(<bloodmagic:sacrificial_dagger>);
recipes.addShaped(<bloodmagic:sacrificial_dagger>, [[<thermalfoundation:material:161>, <quark:glass_shards>, <minecraft:glass>],[null, <minecraft:golden_sword>, <quark:glass_shards>], [<thermalfoundation:material:160>, null, <thermalfoundation:material:161>]]);

//原始投网
recipes.remove(<bloodmagic:soul_snare>);
recipes.addShaped(<bloodmagic:soul_snare> * 4, [[null, <embers:ingot_dawnstone>, null],[<bloodmagic:slate:2>, <tinymobfarm:lasso>, <bloodmagic:slate:2>], [null, <embers:ingot_dawnstone>, null]]);
recipes.addShaped(<bloodmagic:soul_snare> * 16, [[<embers:adhesive>, <minecraft:web>, <embers:adhesive>],[<embers:ingot_dawnstone>, <contenttweaker:mana_crystal1>, <embers:ingot_dawnstone>], [<embers:adhesive>, <minecraft:web>, <embers:adhesive>]]);

//狱火熔炉
recipes.remove(<bloodmagic:soul_forge>);
recipes.addShaped(<bloodmagic:soul_forge>, [[<bloodmagic:slate:2>, null, <bloodmagic:slate:2>],[<environmentaltech:structure_panel>, <ebwizardry:arcane_workbench>, <environmentaltech:structure_panel>], [<environmentaltech:structure_panel>, <bloodmagic:monster_soul>, <environmentaltech:structure_panel>]]);

//血染的机械核心
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:blood_machine_core>,<bloodmagic:blood_rune:3>,1,10000,25,10);

//金铜合金锭
mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:gold_copper_ingot>, <minecraft:gold_ingot>, <thermalfoundation:material:128>, 600);

//黎明石锭
mods.bloodmagic.BloodAltar.addRecipe(<embers:ingot_dawnstone>,<contenttweaker:gold_copper_ingot>,1,4000,20,10);

//锻造石板
recipes.addShapeless(<contenttweaker:forgeplate>, [<botania:manaresource:18>,<bloodmagic:slate:1>]);

//感知锭
TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <tconevo:material>]);
TartaricForge.addRecipe(<tconevo:metal:30>, [<bloodmagic:soul_gem>, <botania:manaresource:4>], 16.0, 10.0);

//感知之剑
TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_sword>]);
recipes.addShaped(<bloodmagic:sentient_sword>, [[null, <tconevo:metal:30>, null],[null, <tconevo:metal:30>, null], [null, <tconstruct:stone_stick>, null]]);

//献祭符文
recipes.remove(<bloodmagic:blood_rune:3>);
recipes.addShaped(<bloodmagic:blood_rune:3>*2, [[<bloodmagic:slate:1>, <minecraft:stone>, <bloodmagic:slate:1>],[<bloodmagic:blood_rune>, <embers:archaic_circuit>.reuse(), <bloodmagic:blood_rune>], [<minecraft:stone>, <thermalfoundation:material:25>, <minecraft:stone>]]);

//DME物质产意志
{
var matter as IItemStack[]=[
<deepmoblearning:pristine_matter_blaze>,
<deepmoblearning:pristine_matter_creeper>,
<deepmoblearning:pristine_matter_enderman>,
<deepmoblearning:pristine_matter_dragon>,
<deepmoblearning:pristine_matter_ghast>,
<deepmoblearning:pristine_matter_guardian>,
<deepmoblearning:pristine_matter_shulker>,
<deepmoblearning:pristine_matter_skeleton>,
<deepmoblearning:pristine_matter_slime>,
<deepmoblearning:pristine_matter_spider>,
<deepmoblearning:pristine_matter_witch>,
<deepmoblearning:pristine_matter_wither>,
<deepmoblearning:pristine_matter_wither_skeleton>,
<deepmoblearning:pristine_matter_zombie>,
<deepmoblearning:pristine_matter_thermal_elemental>,
<deepmoblearning:pristine_matter_tinker_slime>
];  
for m in matter{
mods.mekanism.enrichment.addRecipe(m,<bloodmagic:monster_soul>.withTag({souls: 100.0}));
}}

//灵魂结晶产意志
mods.mekanism.enrichment.addRecipe(<contenttweaker:soulgem>,<bloodmagic:monster_soul>.withTag({souls: 100.0}));

//灵魂宝石
recipes.addShaped(<contenttweaker:soulgem2> * 2, [[<contenttweaker:soulgem>, <contenttweaker:soulplate>, <contenttweaker:soulgem>],[<contenttweaker:mana_crystal3>, <draconicevolution:ender_energy_manipulator>, <contenttweaker:mana_crystal3>], [<contenttweaker:soulgem>, <contenttweaker:soulplate>, <contenttweaker:soulgem>]]);

//==================================================================================植物魔法==================================================================================
//活石
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.addRecipe(<astralsorcery:blockmarble>, <botania:livingrock>);

//活木
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.addRecipe(<astralsorcery:blockinfusedwood>, <botania:livingwood>);

//FE转换器
recipes.remove(<extrabotany:managenerator>);
recipes.addShaped(<extrabotany:managenerator>, [[<mekanism:reinforcedplasticblock:15>, <avaritia:block_resource>, <mekanism:reinforcedplasticblock:15>],[<avaritia:block_resource>, <extrabotany:material:1>, <avaritia:block_resource>], [<mekanism:reinforcedplasticblock:15>, <avaritia:block_resource>, <mekanism:reinforcedplasticblock:15>]]);

//无尽块转换泥土
mods.botania.PureDaisy.addRecipe(<avaritia:block_resource:1>,<minecraft:dirt>);

//泰拉镐
recipes.removeShaped(<botania:terrapick>, [[<botania:manaresource:4>, <botania:manatablet>, <botania:manaresource:4>],[<botania:manaresource:4>, <botania:manaresource:3>, <botania:manaresource:4>], [null, <botania:manaresource:3>, null]]);
recipes.addShaped(<botania:terrapick>.withTag({mana: 9999}), [[<botania:manaresource:4>, <contenttweaker:crystal_3>, <botania:manaresource:4>],[<contenttweaker:epiccircuit>, <extrabotany:material:1>, <contenttweaker:epiccircuit>], [null, <extrabotany:material:1>, null]]);

//超频透镜
recipes.addShaped(<gugu-utils:lensoverclocking>, [[null, <extrabotany:specialbag>, null],[<extrabotany:specialbag>, <botania:lens:0>, <extrabotany:specialbag>], [null, <extrabotany:specialbag>, null]]);

//手掌花
mods.botania.Apothecary.removeRecipe("rannuncarpus");

//聚宝花
mods.botania.Apothecary.removeRecipe("loonium");
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "loonium"}), [<botania:rune:14>,<botania:rune:10>,<botania:rune:12>,<ancientspellcraft:astral_diamond_charged>,<ore:petalGray>,<ore:petalGreen>,<ore:petalGreen>,<ore:petalGreen>,<ore:petalGreen>,<botania:manaresource:6>,<botania:manaresource:8>]);

//叮当舞
mods.botania.Apothecary.removeRecipe("tinkle");
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "tinkle"}), [<botania:rune:0>,<botania:rune:2>,<botania:rune:12>,<botania:rune:15>,<contenttweaker:mana_crystal1>,<extrabotany:material>,<extrabotany:material>,<deepmoblearning:living_matter_extraterrestrial>]);

//热爆花
mods.botania.Apothecary.removeRecipe("entropinnyum");

//柚子
mods.botania.Apothecary.addRecipe(<cuisine:food:11>, [<minecraft:golden_apple>,<ore:dyeYellow>,<ore:dyeYellow>]);

//微光活木
recipes.remove(<botania:livingwood:5>);
recipes.addShaped(<botania:livingwood:5> * 3, [[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],[<minecraft:glowstone>, <embers:glimmer_shard>, <minecraft:glowstone>], [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);

//花药台
recipes.remove(<botania:altar>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("ohxihh:shaped/internal/altar/huayaotai", <botania:altar>, 1500, 300, [
	//1-9
	<environmentaltech:litherite_crystal>, <astralsorcery:itemcraftingcomponent:3>, <environmentaltech:litherite_crystal>,
	<ore:blockMarble>, <contenttweaker:starstone>, <ore:blockMarble>,
	<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>,
	//10-13
	<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>]);

//魔力钢
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>,<ore:ingotSteel>, 3000);
mods.botania.ManaInfusion.addInfusion(<botania:storage>,<ore:blockSteel>, 27000);

//盖亚魂锭
recipes.remove(<botania:manaresource:14>);
recipes.addShaped(<botania:manaresource:14>, [[<botania:manaresource:5>, <astralsorcery:itemcraftingcomponent:4>, <botania:manaresource:5>],[<environmentaltech:erodium_crystal>, <botania:manaresource:4>, <environmentaltech:erodium_crystal>], [<botania:manaresource:5>, <astralsorcery:itemcraftingcomponent:4>, <botania:manaresource:5>]]);

//奥利哈钢
mods.botania.RuneAltar.removeRecipe(<extrabotany:material:1>);

//水晶花(自定义)
mods.botania.Apothecary.addRecipe(<contenttweaker:crystal_flower>, [<botania:rune:8>,<botania:rune:10>,<botania:rune:11>,<botania:rune:12>,<botania:rune:13>,<botania:rune:14>,<botania:rune:15>,<contenttweaker:mana_crystal2>,<contenttweaker:mana_crystal2>,<contenttweaker:mana_crystal2>,<contenttweaker:mana_crystal2>]);

//哥布林杀手套
recipes.remove(<extrabotany:goblinslayerhelm>);
recipes.remove(<extrabotany:goblinslayerchest>);
recipes.remove(<extrabotany:goblinslayerlegs>);
recipes.remove(<extrabotany:goblinslayerboots>);
recipes.addShaped(<extrabotany:goblinslayerlegs>, [[<extrabotany:material:8>, <extrabotany:material:8>, <extrabotany:material:8>],[<extrabotany:material:8>, <botania:terrasteellegs>, <extrabotany:material:8>], [<extrabotany:material:8>, <extrabotany:material:1>, <extrabotany:material:8>]]);
recipes.addShaped(<extrabotany:goblinslayerchest>, [[<extrabotany:material:8>, <extrabotany:material:1>, <extrabotany:material:8>],[<extrabotany:material:8>, <botania:terrasteelchest>, <extrabotany:material:8>], [<extrabotany:material:8>, <extrabotany:material:8>, <extrabotany:material:8>]]);
recipes.addShaped(<extrabotany:goblinslayerhelm>, [[<extrabotany:material:8>, <extrabotany:material:8>, <extrabotany:material:8>],[<extrabotany:material:8>, <botania:terrasteelhelm>, <extrabotany:material:8>], [null, <extrabotany:material:1>, null]]);
recipes.addShaped(<extrabotany:goblinslayerboots>, [[<extrabotany:material:8>, <extrabotany:material:1>, <extrabotany:material:8>],[<extrabotany:material:8>, <botania:terrasteelboots>, <extrabotany:material:8>], [null, null, null]]);


//暗影武士套
recipes.remove(<extrabotany:shadowwarriorhelm>);
recipes.remove(<extrabotany:shadowwarriorchest>);
recipes.remove(<extrabotany:shadowwarriorlegs>);
recipes.remove(<extrabotany:shadowwarriorboots>);
recipes.addShaped(<extrabotany:shadowwarriorhelm>, [[<extrabotany:material:5>, <extrabotany:material:5>, <extrabotany:material:5>],[<extrabotany:material:5>, <botania:terrasteelhelm>, <extrabotany:material:5>], [null, <extrabotany:material:1>, null]]);
recipes.addShaped(<extrabotany:shadowwarriorchest>, [[<extrabotany:material:5>, <extrabotany:material:1>, <extrabotany:material:5>],[<extrabotany:material:5>, <botania:terrasteelchest>, <extrabotany:material:5>], [<extrabotany:material:5>, <extrabotany:material:5>, <extrabotany:material:5>]]);
recipes.addShaped(<extrabotany:shadowwarriorlegs>, [[<extrabotany:material:5>, <extrabotany:material:5>, <extrabotany:material:5>],[<extrabotany:material:5>, <botania:terrasteellegs>, <extrabotany:material:5>], [<extrabotany:material:5>, <extrabotany:material:1>, <extrabotany:material:5>]]);
recipes.addShaped(<extrabotany:shadowwarriorboots>, [[<extrabotany:material:5>, <extrabotany:material:1>, <extrabotany:material:5>],[<extrabotany:material:5>, <botania:terrasteelboots>, <extrabotany:material:5>], [null, null, null]]);

//女仆套
recipes.remove(<extrabotany:combatmaidhelm>);
recipes.remove(<extrabotany:combatmaidchest>);
recipes.remove(<extrabotany:combatmaidlegs>);
recipes.remove(<extrabotany:combatmaidboots>);

mods.botania.RuneAltar.addRecipe(<extrabotany:combatmaidhelm>, [<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:shadowwarriorhelm>,<extrabotany:goblinslayerhelm>,<extrabotany:material:1>,<extrabotany:material:1>,<extrabotany:material:1>],1000000);
mods.botania.RuneAltar.addRecipe(<extrabotany:combatmaidchest>, [<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:shadowwarriorchest>,<extrabotany:goblinslayerchest>,<extrabotany:material:1>,<extrabotany:material:1>,<extrabotany:material:1>],1000000);
mods.botania.RuneAltar.addRecipe(<extrabotany:combatmaidlegs>, [<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:shadowwarriorlegs>,<extrabotany:goblinslayerlegs>,<extrabotany:material:1>,<extrabotany:material:1>,<extrabotany:material:1>],1000000);
mods.botania.RuneAltar.addRecipe(<extrabotany:combatmaidboots>, [<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:shadowwarriorboots>,<extrabotany:goblinslayerboots>,<extrabotany:material:1>,<extrabotany:material:1>,<extrabotany:material:1>],1000000);

//====================================================================================余烬====================================================================================
//冶金粉尘
mods.embers.Alchemy.remove(<embers:dust_metallurgic>);