//本脚本由ohxihh和chengzhenjie编写，未经ohxihh和chengzhenjie允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;

//========================================蒸馏塔========================================
RecipeBuilder.newBuilder("Oil", "Distillation_Tower", 10)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:crude_oil>*100)
.addFluidOutput(<liquid:sulfuric_light_fuel>*50)
.addFluidOutput(<liquid:sulfuric_heavy_fuel>*15)
.addFluidOutput(<liquid:sulfuric_naphtha>*20)
.build();

//======================================大型化学反应釜裂化======================================
RecipeBuilder.newBuilder("轻燃油裂化大化反", "large_chemical_reactor", 40)
.addFluidInput(<liquid:light_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_light_fuel>*800)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("重燃油裂化大化反", "large_chemical_reactor", 40)
.addFluidInput(<liquid:heavy_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_heavy_fuel>*800)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油裂化大化反", "large_chemical_reactor", 40)
.addFluidInput(<liquid:naphtha>*5000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_naphtha>*800)
.addEnergyPerTickInput(2048)
.build();

//========================================石油裂化机========================================
RecipeBuilder.newBuilder("轻燃油裂化", "Oil_Cracking_Unit", 20)
.addFluidInput(<liquid:light_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_light_fuel>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("重燃油裂化", "Oil_Cracking_Unit", 20)
.addFluidInput(<liquid:heavy_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_heavy_fuel>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油裂化", "Oil_Cracking_Unit", 20)
.addFluidInput(<liquid:naphtha>*5000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_naphtha>*1000)
.addEnergyPerTickInput(2048)
.build();

//======================================大型化学反应釜添加======================================
RecipeBuilder.newBuilder("柴油", "large_chemical_reactor", 10)
.addFluidInput(<liquid:naphtha>*5000)
.addFluidInput(<liquid:heavy_fuel>*1000)
.addFluidOutput(<liquid:diesel>*6000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氢氧化钠", "large_chemical_reactor", 10)
.addFluidInput(<liquid:liquidsodium>*20)
.addFluidInput(<liquid:water>*2000)
.addFluidOutput(<liquid:sodium_hydroxide_solution>*2000)
//化工厂添加如下输出.addFluidOutput(<liquid:hydrogen>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("轻燃油1", "large_chemical_reactor", 50)
.addFluidInput(<liquid:sulfuric_light_fuel>*6000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:light_fuel>*6000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸1", "large_chemical_reactor", 50)
.addFluidInput(<liquid:liquidethene>*3000)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:aceticacid>*4000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸2", "large_chemical_reactor", 100)
.addFluidInput(<liquid:ethanol>*1000)
.addItemInput(<mekanism:biofuel>*2)
.addFluidOutput(<liquid:aceticacid>*800)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸钙", "large_chemical_reactor", 20)
.addFluidInput(<liquid:aceticacid>*2000)
.addItemInput(<minecraft:dye:15>*1)
.addFluidOutput(<liquid:calciumacetatesolution>*1000)
//化工厂添加如下输出.addFluidOutput(<liquid:hydrogen>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氯苯", "large_chemical_reactor", 60)
.addFluidInput(<liquid:benzene>*2000)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidOutput(<liquid:chlorobenzene>*2000)
//化工厂添加如下输出.addFluidOutput(<liquid:liquidhydrogenchloride>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("苯酚", "large_chemical_reactor", 60)
.addFluidInput(<liquid:chlorobenzene>*4000)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidOutput(<liquid:phenol>*4000)
.addItemOutput(<mekanism:salt>*1)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("双酚A1", "large_chemical_reactor", 40)
.addFluidInput(<liquid:phenol>*1000)
.addFluidInput(<liquid:liquidhydrogenchloride>*500)
.addFluidOutput(<liquid:bisphenol_a>*1500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("双酚A2", "large_chemical_reactor", 80)
.addFluidInput(<liquid:phenol>*2000)
.addFluidInput(<liquid:acetone>*1000)
.addFluidOutput(<liquid:bisphenol_a>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("烯丙基氯", "large_chemical_reactor", 40)
.addFluidInput(<liquid:propene>*4500)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidOutput(<liquid:allyl_chloride>*4500)
//化工厂添加如下输出.addFluidOutput(<liquid:liquidhydrogenchloride>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("次氯酸", "large_chemical_reactor", 30)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidInput(<liquid:water>*1000)
.addFluidOutput(<liquid:hypochlorous_acid>*1000)
//化工厂添加如下输出.addFluidOutput(<liquid:liquidhydrogenchloride>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("环氧氯丙烷", "large_chemical_reactor", 80)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidInput(<liquid:allyl_chloride>*3000)
.addFluidInput(<liquid:hypochlorous_acid>*1000)
.addFluidOutput(<liquid:epichlorohydrin>*4000)
//化工厂添加如下输出.addFluidOutput(<liquid:brine>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("环氧树脂", "large_chemical_reactor", 100)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidInput(<liquid:epichlorohydrin>*4000)
.addFluidInput(<liquid:bisphenol_a>*12000)
.addFluidOutput(<liquid:epoxy_resin>*16000)
//化工厂添加如下输出.addFluidOutput(<liquid:brine>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("四硝基甲烷", "large_chemical_reactor", 100)
.addFluidInput(<liquid:ethenone>*125)
.addFluidInput(<liquid:nitric_acid>*1000)
.addFluidOutput(<liquid:tetranitromethane>*250)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("高十六烷值柴油", "large_chemical_reactor", 5)
.addFluidInput(<liquid:tetranitromethane>*125)
.addFluidInput(<liquid:diesel>*1000)
.addFluidOutput(<liquid:cetane_boosted_diese>*1000)
.addEnergyPerTickInput(512)
.build();

//=======================
RecipeBuilder.newBuilder("氨", "large_chemical_reactor", 140)
.addFluidInput(<liquid:nitrogen>*1000)
.addFluidInput(<liquid:hydrogen>*6000)
.addFluidOutput(<liquid:ammonia>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("一氧化氮", "large_chemical_reactor", 60)
.addFluidInput(<liquid:ammonia>*1000)
.addFluidInput(<liquid:oxygen>*1500)
.addFluidOutput(<liquid:nitric_oxide>*1000)
//化工厂添加如下输出.addFluidOutput(<liquid:water>*1500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化氮", "large_chemical_reactor", 40)
.addFluidInput(<liquid:nitric_oxide>*2000)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:nitrogen_dioxide>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("硝酸", "large_chemical_reactor", 120)
.addFluidInput(<liquid:nitrogen_dioxide>*9000)
.addFluidInput(<liquid:water>*3000)
.addFluidOutput(<liquid:nitric_acid>*10000)
//化工厂添加如下输出.addFluidOutput(<liquid:nitric_oxide>*2000)
.addEnergyPerTickInput(512)
.build();

//======================================流体加热机======================================
RecipeBuilder.newBuilder("丙酮", "Fluid_Heater", 20)
.addFluidInput(<liquid:calciumacetatesolution>*1000)
.addFluidOutput(<liquid:acetone>*250)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("苯-石脑油", "Fluid_Heater", 20)
.addFluidInput(<liquid:naphtha>*200)
.addFluidOutput(<liquid:benzene>*80)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("苯-重燃油", "Fluid_Heater", 20)
.addFluidInput(<liquid:heavy_fuel>*10)
.addFluidOutput(<liquid:benzene>*4)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("丙烯", "Fluid_Heater", 20)
.addFluidInput(<liquid:steam_cracked_light_fuel>*1000)
.addFluidOutput(<liquid:propene>*450)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙烯酮", "Fluid_Heater", 20)
.addFluidInput(<liquid:acetone>*200)
.addFluidOutput(<liquid:ethenone>*100)
.addEnergyPerTickInput(512)
.build();

//======================================化工厂MK1======================================
//并行设定
MachineModifier.setMaxParallelism("Chemical_factory_MK1", 4);
RecipeBuilder.newBuilder("乙烯酮合成-化工厂MK1-1", "Chemical_factory_MK1", 50)
.addFluidInput(<liquid:aceticacid>*8000)
.addFluidInput(<liquid:sulfuric_acid>*7000)
.addFluidOutput(<liquid:ethenone>*5000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("乙烯酮合成-化工厂MK1-2", "Chemical_factory_MK1", 50)
.addFluidInput(<liquid:aceticacid>*8000)
.addFluidInput(<liquid:sulfuricacid>*7000)
.addFluidOutput(<liquid:ethenone>*5000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("轻燃油MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuric_light_fuel>*6000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:light_fuel>*6000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("重燃油MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuric_heavy_fuel>*3000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:heavy_fuel>*3000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuric_naphtha>*12000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:naphtha>*12000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("轻燃油裂化MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:light_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_light_fuel>*800)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("重燃油裂化MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:heavy_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_heavy_fuel>*800)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油裂化MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:naphtha>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_naphtha>*800)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("硝酸化工厂专属MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidInput(<liquid:ammonia>*1000)
.addFluidOutput(<liquid:nitric_acid>*1000)
.addFluidOutput(<liquid:water>*1000)
.addEnergyPerTickInput(2048)
.build();

//=================================化工厂兼容大化反部分===============================
RecipeBuilder.newBuilder("柴油", "Chemical_factory_MK1", 5)
.addFluidInput(<liquid:naphtha>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:diesel>*6000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("灰烬晶体碎片化工厂MK1", "Chemical_factory_MK1", 40)
.addItemInput(<minecraft:coal>)
.addFluidInput(<liquid:petrotheum>*100)
.addItemOutput(<embers:shard_ember>*2)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉1化工厂MK1", "Chemical_factory_MK1", 40)
.addFluidInput(<liquid:sulfuricacid>*1000)
.addFluidInput(<liquid:heavywater>*1000)
.addItemInput(<contenttweaker:zl_ore>)
.addItemOutput(<contenttweaker:zl_dust>*2)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉2化工厂MK1", "Chemical_factory_MK1", 40)
.addFluidInput(<liquid:sulfuric_acid>*1000)
.addFluidInput(<liquid:heavywater>*1000)
.addItemInput(<contenttweaker:zl_ore>)
.addItemOutput(<contenttweaker:zl_dust>*2)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉3化工厂MK1", "Chemical_factory_MK1", 40)
.addFluidInput(<liquid:sulfuric_acid>*2000)
.addFluidInput(<liquid:heavywater>*2000)
.addItemInput(<contenttweaker:shenming_ore>)
.addItemOutput(<contenttweaker:zl_dust>*8)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉3.1化工厂MK1", "Chemical_factory_MK1", 40)
.addFluidInput(<liquid:sulfuricacid>*2000)
.addFluidInput(<liquid:heavywater>*2000)
.addItemInput(<contenttweaker:shenming_ore>)
.addItemOutput(<contenttweaker:zl_dust>*8)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("润滑油1化工厂MK1", "Chemical_factory_MK1", 2)
.addFluidInput(<liquid:creosote>*3)
.addFluidOutput(<liquid:lubricant>*1)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油2化工厂MK1", "Chemical_factory_MK1", 2)
.addFluidInput(<liquid:seed_oil>*4)
.addFluidOutput(<liquid:lubricant>*1)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油3化工厂MK1", "Chemical_factory_MK1", 2)
.addFluidInput(<liquid:oil_dwarf>*1)
.addFluidOutput(<liquid:lubricant>*2)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油4化工厂MK1", "Chemical_factory_MK1", 2)
.addFluidInput(<liquid:refined_fuel>*3)
.addFluidOutput(<liquid:lubricant>*2)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("甲苯化工厂MK1", "Chemical_factory_MK1", 50)
.addFluidInput(<liquid:refined_oil>*1000)
.addFluidInput(<liquid:steam>*2000)
.addFluidOutput(<liquid:toluene_liquid>*200)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("TNT化工厂MK1", "Chemical_factory_MK1", 100)
.addFluidInput(<liquid:toluene_liquid>*266)
.addItemInput(<nuclearcraft:part:6>*1)
.addItemInput(<minecraft:gunpowder>*1)
.addItemInput(<enderio:item_material:20>*2)
.addItemOutput(<minecraft:tnt>*1)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("岩浆块化工厂MK1", "Chemical_factory_MK1", 20)
.addItemInput(<minecraft:stone>*1)
.addFluidInput(<liquid:lava>*1000)
.addItemOutput(<minecraft:magma>*1)
.addEnergyPerTickInput(256)
.build();

RecipeBuilder.newBuilder("大师电路基板化工厂MK1", "Chemical_factory_MK1r", 50)
.addItemInput(<contenttweaker:advancedcircuitplate>)
.addItemInput(<deepmoblearning:glitch_infused_ingot>*4)
.addItemInput(<nuclearcraft:compound:1>*4)
.addFluidInput(<liquid:nak>*1440)
.addItemOutput(<contenttweaker:mastercircuitplate>*1)
.addEnergyPerTickInput(4096)
.build();

RecipeBuilder.newBuilder("胶粘剂化工厂MK1", "Chemical_factory_MK1", 50)
.addItemInput(<minecraft:dye:15>*2)
.addItemInput(<minecraft:clay_ball>)
.addFluidInput(<liquid:hydrated_gelatin>*8)
.addItemOutput(<embers:adhesive>*3)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氢氧化钠化工厂MK1", "Chemical_factory_MK1", 10)
.addFluidInput(<liquid:liquidsodium>*20)
.addFluidInput(<liquid:water>*2000)
.addFluidOutput(<liquid:sodium_hydroxide_solution>*2000)
//化工厂添加如下输出.addFluidOutput(<liquid:hydrogen>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸1化工厂MK1", "Chemical_factory_MK1", 50)
.addFluidInput(<liquid:liquidethene>*3000)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:aceticacid>*4000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸2化工厂MK1", "Chemical_factory_MK1", 100)
.addFluidInput(<liquid:ethanol>*1000)
.addItemInput(<mekanism:biofuel>*2)
.addFluidOutput(<liquid:aceticacid>*800)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸钙化工厂MK1", "Chemical_factory_MK1", 10)
.addFluidInput(<liquid:aceticacid>*2000)
.addItemInput(<minecraft:dye:15>*1)
.addFluidOutput(<liquid:calciumacetatesolution>*1000)
.addFluidOutput(<liquid:hydrogen>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氯苯化工厂MK1", "Chemical_factory_MK1", 30)
.addFluidInput(<liquid:benzene>*2000)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidOutput(<liquid:chlorobenzene>*2000)
.addFluidOutput(<liquid:liquidhydrogenchloride>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("苯酚化工厂MK1", "Chemical_factory_MK1", 30)
.addFluidInput(<liquid:chlorobenzene>*4000)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidOutput(<liquid:phenol>*4000)
.addItemOutput(<mekanism:salt>*1)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("双酚A1化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:phenol>*1000)
.addFluidInput(<liquid:liquidhydrogenchloride>*500)
.addFluidOutput(<liquid:bisphenol_a>*1500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("双酚A2化工厂MK1", "Chemical_factory_MK1", 40)
.addFluidInput(<liquid:phenol>*2000)
.addFluidInput(<liquid:acetone>*1000)
.addFluidOutput(<liquid:bisphenol_a>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("烯丙基氯化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:propene>*4500)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidOutput(<liquid:allyl_chloride>*4500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("次氯酸化工厂MK1", "Chemical_factory_MK1", 15)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidInput(<liquid:water>*1000)
.addFluidOutput(<liquid:hypochlorous_acid>*1000)
.addFluidOutput(<liquid:liquidhydrogenchloride>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("环氧氯丙烷化工厂MK1", "Chemical_factory_MK1", 40)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidInput(<liquid:allyl_chloride>*3000)
.addFluidInput(<liquid:hypochlorous_acid>*1000)
.addFluidOutput(<liquid:epichlorohydrin>*4000)
.addFluidOutput(<liquid:brine>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("环氧树脂化工厂MK1", "Chemical_factory_MK1", 50)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidInput(<liquid:epichlorohydrin>*4000)
.addFluidInput(<liquid:bisphenol_a>*12000)
.addFluidOutput(<liquid:epoxy_resin>*16000)
.addFluidOutput(<liquid:brine>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氨化工厂MK1", "Chemical_factory_MK1", 70)
.addFluidInput(<liquid:nitrogen>*1000)
.addFluidInput(<liquid:hydrogen>*6000)
.addFluidOutput(<liquid:ammonia>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("一氧化氮化工厂MK1", "Chemical_factory_MK1", 30)
.addFluidInput(<liquid:ammonia>*1000)
.addFluidInput(<liquid:oxygen>*1500)
.addFluidOutput(<liquid:nitric_oxide>*1000)
.addFluidOutput(<liquid:water>*1500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化氮化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:nitric_oxide>*2000)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:nitrogen_dioxide>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("硝酸化工厂MK1", "Chemical_factory_MK1", 60)
.addFluidInput(<liquid:nitrogen_dioxide>*9000)
.addFluidInput(<liquid:water>*3000)
.addFluidOutput(<liquid:nitric_acid>*10000)
.addFluidOutput(<liquid:nitric_oxide>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("四硝基甲烷化工厂MK1", "Chemical_factory_MK1", 50)
.addFluidInput(<liquid:ethenone>*125)
.addFluidInput(<liquid:nitric_acid>*1000)
.addFluidOutput(<liquid:tetranitromethane>*250)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("高十六烷值柴油化工厂MK1", "Chemical_factory_MK1", 2)
.addFluidInput(<liquid:tetranitromethane>*125)
.addFluidInput(<liquid:diesel>*1000)
.addFluidOutput(<liquid:cetane_boosted_diese>*1000)
.addEnergyPerTickInput(512)
.build();