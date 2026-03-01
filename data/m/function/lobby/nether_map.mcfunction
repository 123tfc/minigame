

execute as @e[tag=dummy] if score @s netherAnimation matches 0.. run scoreboard players add @e[tag=dummy] netherAnimation 1

# execute if score @e[tag=dummy,limit=1] netherAnimation matches 1 run forceload add 1024 -135 1080 -107
# execute if score @e[tag=dummy,limit=1] netherAnimation matches 1 run clone 1049 113 -134 1055 121 -128 3 112 -117
execute if score @e[tag=dummy,limit=1] netherAnimation matches 1 run place template m:mapswitch/nether_1 3 112 -117
execute if score @e[tag=dummy,limit=1] netherAnimation matches 1 run playsound minecraft:block.netherrack.hit master @a 6.5 121.5 -113.5 1 0.5

# execute if score @e[tag=dummy,limit=1] netherAnimation matches 6 run clone 1049 113 -124 1055 121 -118 3 112 -117
execute if score @e[tag=dummy,limit=1] netherAnimation matches 6 run place template m:mapswitch/nether_2 3 112 -117
execute if score @e[tag=dummy,limit=1] netherAnimation matches 6 run playsound minecraft:block.netherrack.hit master @a 6.5 121.5 -113.5 1 0.7

# execute if score @e[tag=dummy,limit=1] netherAnimation matches 11 run clone 1049 113 -114 1055 121 -108 3 112 -117
execute if score @e[tag=dummy,limit=1] netherAnimation matches 11 run place template m:mapswitch/nether_3 3 112 -117
execute if score @e[tag=dummy,limit=1] netherAnimation matches 11 run playsound minecraft:block.netherrack.hit master @a 6.5 121.5 -113.5 1 0.9

execute if score @e[tag=dummy,limit=1] netherAnimation matches 17 run playsound minecraft:entity.piglin.celebrate master @a 6.5 121.5 -113.5

# execute if score @e[tag=dummy,limit=1] netherAnimation matches 17 run forceload remove 1024 -135 1080 -107
execute if score @e[tag=dummy,limit=1] netherAnimation matches 17 run kill @e[tag=Temp,type=minecraft:interaction]
execute if score @e[tag=dummy,limit=1] netherAnimation matches 17 run scoreboard objectives remove netherAnimation