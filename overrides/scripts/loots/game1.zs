//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;

val lootgame1 = LootTweaker.newTable("lootgame:chests/lootgame1");

val item = lootgame1.addPool("game1", 4, 9, 0, 5);
item.addItemEntry(<minecraft:iron_ore>*32, 4, 5);
item.addItemEntry(<minecraft:coal_ore>*32, 8, 2);
item.addItemEntry(<minecraft:gold_ore>*24, 3, 7);
item.addItemEntry(<thermalfoundation:ore>*32, 4, 4);
item.addItemEntry(<thermalfoundation:ore:1>*32, 4, 4);
