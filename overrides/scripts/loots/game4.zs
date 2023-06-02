//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;

val lootgame4 = LootTweaker.newTable("lootgame:chests/lootgame4");

val item = lootgame4.addPool("game4", 16, 21, 2, 6);
item.addItemEntry(<minecraft:iron_ore>*64, 4, 5);
item.addItemEntry(<minecraft:coal_ore>*64, 8, 2);
item.addItemEntry(<minecraft:gold_ore>*64, 3, 7);
item.addItemEntry(<thermalfoundation:ore>*64, 4, 4);
item.addItemEntry(<thermalfoundation:ore:1>*64, 4, 4);
item.addItemEntry(<thermalfoundation:ore:4>*64, 4, 4);
item.addItemEntry(<thermalfoundation:ore:2>*64, 4, 4);
item.addItemEntry(<appliedenergistics2:quartz_ore>*64, 4, 4);
item.addItemEntry(<minecraft:lapis_ore>*64, 4, 4);
item.addItemEntry(<minecraft:redstone_ore>*64, 6, 4);
item.addItemEntry(<thermalfoundation:ore:3>*64, 4, 6);
item.addItemEntry(<thermalfoundation:ore:5>*64, 3, 6);
item.addItemEntry(<minecraft:diamond_ore>*64, 2, 8);
item.addItemEntry(<minecraft:emerald_ore>*64, 2, 8);
item.addItemEntry(<thermalfoundation:ore:6>*32, 2, 10);
item.addItemEntry(<thermalfoundation:ore:7>*32, 2, 10);