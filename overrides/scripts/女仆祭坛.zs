//本脚本由ohxihh编写，未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

import mods.touhoulittlemaid.Altar;

//魔理沙的扫帚
Altar.removeRecipe("touhou_little_maid:craft_marisa_broom");
Altar.addItemCraftRecipe("ohxihh:marisa_broom", 0.5,
                         <touhou_little_maid:marisa_broom>,
                         <enderutilities:enderpart>,<enderutilities:enderpart>,<embers:ingot_dawnstone>,<embers:ingot_dawnstone>,<minecraft:ender_eye>,<minecraft:ender_eye>);

//召唤太古魔像
Altar.addEntitySpawnCraftRecipe("embers:ancient_golem", 0.2, "embers:ancient_golem", 
	                    <embers:crystal_ember>,<embers:crystal_ember>,<minecraft:magma_cream>,<embers:archaic_brick>,<embers:archaic_brick>);

//召唤凋零骷髅
Altar.addEntitySpawnCraftRecipe("minecraft:wither_skeleton", 0.2, "minecraft:wither_skeleton", 
	                    <minecraft:bone>,<minecraft:bone>,<minecraft:bone>,<minecraft:bone>,<minecraft:coal_block>,<minecraft:coal_block>);

//召唤烈焰人
Altar.addEntitySpawnCraftRecipe("minecraft:blaze", 0.2, "minecraft:blaze", 
	                    <minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:blaze_rod>,<thermalfoundation:material:771>,<thermalfoundation:material:771>);

//召唤暴雪人
Altar.addEntitySpawnCraftRecipe("thermalfoundation:blizz", 0.2, "thermalfoundation:blizz", 
	                    <minecraft:snow>,<minecraft:snow>,<minecraft:snow>,<minecraft:snow>,<thermalfoundation:material:1025>,<thermalfoundation:material:1025>);

//召唤岩石人
Altar.addEntitySpawnCraftRecipe("thermalfoundation:basalz", 0.2, "thermalfoundation:basalz", 
	                    <minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<thermalfoundation:material:1027>,<thermalfoundation:material:1027>);

//召唤狂风人
Altar.addEntitySpawnCraftRecipe("thermalfoundation:blitz", 0.2, "thermalfoundation:blitz", 
	                    <thermalfoundation:material:772>,<thermalfoundation:material:772>,<thermalfoundation:material:772>,<thermalfoundation:material:772>,<thermalfoundation:material:1026>,<thermalfoundation:material:1026>);

//召唤恶魂
Altar.addEntitySpawnCraftRecipe("minecraft:ghast", 0.2, "minecraft:ghast", 
	                    <minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:ghast_tear>,<minecraft:ghast_tear>);
