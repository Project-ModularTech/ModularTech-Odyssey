//本脚本由ohxihh和chengzhenjie编写，未经ohxihh和chengzhenjie允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

//导包
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.nuclearcraft.manufactory;
import mods.nuclearcraft.alloy_furnace;
import mods.nuclearcraft.salt_mixer;
import mods.nuclearcraft.melter;
import mods.nuclearcraft.crystallizer;

//==================================================================================矿物处理==================================================================================
//工业高炉控制器
//MK1-Ultra
recipes.addShaped(<modularmachinery:electric_blast_furnacemk1_controller>, [[<minecraft:furnace>, <minecraft:furnace>, <minecraft:furnace>],[<thermalfoundation:material:354>, <contenttweaker:modularblock>, <thermalfoundation:material:354>], [<thermalfoundation:material:513>, <thermalfoundation:material:354>, <thermalfoundation:material:513>]]);
recipes.addShapeless(<modularmachinery:electric_blast_furnacemk2_controller>, [<modularmachinery:electric_blast_furnacemk1_controller>]);
recipes.addShapeless(<modularmachinery:electric_blast_furnacemk3_controller>, [<modularmachinery:electric_blast_furnacemk2_controller>]);
recipes.addShapeless(<modularmachinery:electric_blast_furnacemk4_controller>, [<modularmachinery:electric_blast_furnacemk3_controller>]);
recipes.addShapeless(<modularmachinery:electric_blast_furnacemk5_controller>, [<modularmachinery:electric_blast_furnacemk4_controller>]);
recipes.addShapeless(<modularmachinery:electric_blast_furnacemk6_controller>, [<modularmachinery:electric_blast_furnacemk5_controller>]);
recipes.addShapeless(<modularmachinery:electric_blast_furnace_ultra_controller>, [<modularmachinery:electric_blast_furnacemk6_controller>]);
recipes.addShapeless(<modularmachinery:electric_blast_furnacemk1_controller>, [<modularmachinery:electric_blast_furnace_ultra_controller>]);

//铝
furnace.remove(<ore:ingotAluminum>,<ore:oreAluminum>);
furnace.remove(<ore:ingotAluminum>,<ore:dustAluminum>);
furnace.addRecipe(<thermalfoundation:material:196> * 3, <thermalfoundation:ore:4>, 0.0);

recipes.removeShapeless(<thermalfoundation:material:132>, [<thermalfoundation:material:68>, <thermalfoundation:material:1024>]);
recipes.removeShapeless(<thermalfoundation:material:132>, [<thermalfoundation:ore:4>, <thermalfoundation:material:1024>]);
recipes.removeShapeless(<thermalfoundation:material:132> * 2, [<thermalfoundation:ore:4>, <thermalfoundation:material:1024>, <thermalfoundation:material:1027>]);

mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>,<thermalfoundation:ore:4>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>,<thermalfoundation:material:68>);

mods.nuclearcraft.melter.removeRecipeWithInput([<thermalfoundation:ore:4>]);
mods.nuclearcraft.melter.removeRecipeWithInput([<thermalfoundation:material:68>]);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<thermalfoundation:ore:4>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:865>,<thermalfoundation:ore:4>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>,<thermalfoundation:ore:4>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<thermalfoundation:material:68>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<thermalfoundation:material:260>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<thermalfoundation:material:324>);

//镁
furnace.remove(<nuclearcraft:ingot:7>, <nuclearcraft:ore:7>);
furnace.remove(<nuclearcraft:ingot:7>, <nuclearcraft:dust:7>);

recipes.removeShapeless(<nuclearcraft:ingot:7>, [<nuclearcraft:dust:7>, <thermalfoundation:material:1024>]);
recipes.removeShapeless(<nuclearcraft:ingot:7> * 2, [<nuclearcraft:ore:7>, <thermalfoundation:material:1024>, <thermalfoundation:material:1027>]);
recipes.removeShapeless(<nuclearcraft:ingot:7>, [<nuclearcraft:ore:7>, <thermalfoundation:material:1024>]);

mods.tconstruct.Melting.removeRecipe(<liquid:magnesium>,<nuclearcraft:ore:7>);
mods.tconstruct.Melting.removeRecipe(<liquid:magnesium>,<nuclearcraft:dust:7>);

mods.nuclearcraft.melter.removeRecipeWithInput([<nuclearcraft:ore:7>]);
mods.nuclearcraft.melter.removeRecipeWithInput([<nuclearcraft:dust:7>]);

mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:7>);

//锇
furnace.remove(<mekanism:ingot:1>, <mekanism:oreblock>);
furnace.remove(<mekanism:ingot:1>, <mekanism:dust:2>);

recipes.removeShapeless(<mekanism:ingot:1> * 2, [<mekanism:oreblock>, <thermalfoundation:material:1024>, <thermalfoundation:material:1027>]);
recipes.removeShapeless(<mekanism:ingot:1>, [<mekanism:oreblock>, <thermalfoundation:material:1024>]);
recipes.removeShapeless(<mekanism:ingot:1>, [<mekanism:dust:2>, <thermalfoundation:material:1024>]);

mods.tconstruct.Melting.removeRecipe(<liquid:osmium>,<mekanism:oreblock>);
mods.tconstruct.Melting.removeRecipe(<liquid:osmium>,<mekanism:dust:2>);

mods.nuclearcraft.melter.removeRecipeWithInput([<mekanism:oreblock>]);
mods.nuclearcraft.melter.removeRecipeWithInput([<mekanism:dust:2>]);

mods.immersiveengineering.ArcFurnace.removeRecipe(<mekanism:ingot:1>);

//铱
furnace.remove(<thermalfoundation:material:135>, <ore:oreIridium>);
furnace.remove(<thermalfoundation:material:135>, <ore:dustIridium>);

recipes.removeShapeless(<thermalfoundation:material:135> * 2, [<thermalfoundation:ore:7>, <thermalfoundation:material:1024>, <thermalfoundation:material:1027>]);
recipes.removeShapeless(<thermalfoundation:material:135>, [<thermalfoundation:ore:7>, <thermalfoundation:material:1024>]);
recipes.removeShapeless(<thermalfoundation:material:135>, [<thermalfoundation:material:71>, <thermalfoundation:material:1024>]);

mods.tconstruct.Melting.removeRecipe(<liquid:iridium>,<thermalfoundation:ore:7>);
mods.tconstruct.Melting.removeRecipe(<liquid:iridium>,<thermalfoundation:material:71>);

mods.nuclearcraft.melter.removeRecipeWithInput([<thermalfoundation:ore:7>]);
mods.nuclearcraft.melter.removeRecipeWithInput([<thermalfoundation:material:71>]);

mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:865>,<thermalfoundation:ore:7>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>,<thermalfoundation:ore:7>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<thermalfoundation:ore:7>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<thermalfoundation:material:71>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<thermalfoundation:material:327>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<thermalfoundation:material:263>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>,<thermalfoundation:ore:6>);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:134>*3,<thermalfoundation:material:866>,<thermalfoundation:ore:6>,4000,<thermalfoundation:material:71>,20);

mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:135>);

mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:71>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:ore:7>);

//龙
furnace.remove(<draconicevolution:draconium_ingot>, <draconicevolution:draconium_ore>);
furnace.remove(<draconicevolution:draconium_ingot>, <draconicevolution:draconium_ore:1>);
furnace.remove(<draconicevolution:draconium_ingot>, <draconicevolution:draconium_ore:2>);
furnace.remove(<draconicevolution:draconium_ingot>, <draconicevolution:draconium_dust>);

recipes.removeShapeless(<draconicevolution:draconium_ingot>, [<draconicevolution:draconium_dust>, <thermalfoundation:material:1024>]);
recipes.removeShapeless(<draconicevolution:draconium_ingot>, [<draconicevolution:draconium_ore>, <thermalfoundation:material:1024>]);
recipes.removeShapeless(<draconicevolution:draconium_ingot> * 2, [<draconicevolution:draconium_ore>, <thermalfoundation:material:1024>, <thermalfoundation:material:1027>]);

mods.tconstruct.Melting.removeRecipe(<liquid:draconium>,<draconicevolution:draconium_ore>);
mods.tconstruct.Melting.removeRecipe(<liquid:draconium>,<draconicevolution:draconium_dust>);

mods.nuclearcraft.melter.removeRecipeWithInput([<draconicevolution:draconium_ore>]);
mods.nuclearcraft.melter.removeRecipeWithInput([<draconicevolution:draconium_dust>]);

mods.immersiveengineering.ArcFurnace.removeRecipe(<draconicevolution:draconium_ingot>);

//铱锇合金
mods.tconstruct.Alloy.removeRecipe(<liquid:osmiridium>);

mods.tconstruct.Casting.removeTableRecipe(<plustic:osmiridiumnugget>);
mods.tconstruct.Casting.removeTableRecipe(<plustic:osmiridiumingot>);
mods.tconstruct.Casting.removeBasinRecipe(<plustic:osmiridiumblock>);

//熔融钢
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);
