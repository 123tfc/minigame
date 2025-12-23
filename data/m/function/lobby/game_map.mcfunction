


execute as @e[tag=dummy] if score @s gameAnimation matches 0.. run scoreboard players add @e[tag=dummy] gameAnimation 1

execute if score @e[tag=dummy,limit=1] gameAnimation matches 1 run forceload add 1024 -135 1080 -107
execute if score @e[tag=dummy,limit=1] gameAnimation matches 1 run clone 1073 113 -134 1079 121 -128 3 112 -117
execute if score @e[tag=dummy,limit=1] gameAnimation matches 1 run playsound block.note_block.bit master @a 6.5 121.5 -113.5 1 0.5

execute if score @e[tag=dummy,limit=1] gameAnimation matches 8 run clone 1073 113 -124 1079 121 -118 3 112 -117
execute if score @e[tag=dummy,limit=1] gameAnimation matches 8 run playsound block.note_block.bit master @a 6.5 121.5 -113.5 1 0.7

execute if score @e[tag=dummy,limit=1] gameAnimation matches 11 run clone 1073 113 -114 1079 121 -108 3 112 -117
execute if score @e[tag=dummy,limit=1] gameAnimation matches 11 run playsound block.note_block.bit master @a 6.5 121.5 -113.5 1 0.9

execute if score @e[tag=dummy,limit=1] gameAnimation matches 17 run playsound block.note_block.bit master @a 6.5 121.5 -113.5 1 2

execute if score @e[tag=dummy,limit=1] gameAnimation matches 17 run forceload remove 1024 -135 1080 -107
execute if score @e[tag=dummy,limit=1] gameAnimation matches 17 run kill @e[tag=Temp,type=minecraft:interaction]
execute if score @e[tag=dummy,limit=1] gameAnimation matches 17 run scoreboard objectives remove gameAnimation