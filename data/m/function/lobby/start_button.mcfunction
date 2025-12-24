
function m:lobby/start_button_shield

execute if entity @e[nbt={transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[-0.7f,-0.7f,-0.7f],scale:[1.4f,1.4f,1.4f]}}] as @e[tag=start_button,type=interaction] if data entity @s interaction on target run data merge entity @e[type=block_display,tag=start_button,limit=1] {transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[-0.7f,-1.1f,-0.7f],scale:[1.4f,1.4f,1.4f]},interpolation_duration:20}
execute if entity @e[nbt={transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[2.5f,2.5f,1.0f]}}] as @e[tag=start_button,type=interaction] if data entity @s interaction on target run data merge entity @e[type=text_display,tag=start_button,limit=1] {transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,-0.4f],scale:[2.5f,2.5f,1.0f]},interpolation_duration:20}
execute if entity @e[tag=dummy,scores={start_button=0..}] if entity @e[nbt={transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[-0.7f,-1.1f,-0.7f],scale:[1.4f,1.4f,1.4f]}}] run scoreboard players add @e[tag=dummy] start_button 1
execute if score @e[tag=dummy,limit=1] start_button matches 1 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:entity.minecart.riding master @a 0 122 -112 2 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 1 as @a run title @a times 0 40 0
execute if score @e[tag=dummy,limit=1] start_button matches 20 as @e[tag=start_button,type=interaction] at @s run stopsound @a master minecraft:entity.minecart.riding
execute if score @e[tag=dummy,limit=1] start_button matches 20 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:entity.iron_golem.repair master @a 0 122 -112 2 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 20 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:block.anvil.place master @a 0 122 -112 0.2 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 20 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:block.anvil.place master @a 0 122 -112 0.2 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 20 as @e[tag=start_button,type=interaction] at @s run title @a subtitle {"text":"Game is starting...","italic":true,"color":"yellow"}
execute if score @e[tag=dummy,limit=1] start_button matches 20 as @e[tag=start_button,type=interaction] at @s run title @a title {"text":"3","bold":true,"color":"dark_red"}


execute if score @e[tag=dummy,limit=1] start_button matches 50 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:block.bell.use master @a 0 122 -112 10 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 50 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:block.anvil.place master @a 0 122 -112 0.2 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 50 as @e[tag=start_button,type=interaction] at @s run title @a subtitle {"text":"Game is starting...","italic":true,"color":"yellow"}
execute if score @e[tag=dummy,limit=1] start_button matches 50 as @e[tag=start_button,type=interaction] at @s run title @a title {"text":"2","bold":true,"color":"gold"}

execute if score @e[tag=dummy,limit=1] start_button matches 80 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:block.bell.use master @a 0 122 -112 10 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 80 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:block.anvil.place master @a 0 122 -112 0.2 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 80 as @e[tag=start_button,type=interaction] at @s run title @a subtitle {"text":"Game is starting...","italic":true,"color":"yellow"}
execute if score @e[tag=dummy,limit=1] start_button matches 80 as @e[tag=start_button,type=interaction] at @s run title @a title {"text":"1","bold":true,"color":"dark_green"}

execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:block.bell.use master @a 0 122 -112 10 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:block.anvil.place master @a 0 122 -112 0.2 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] at @s run playsound minecraft:entity.wither.spawn master @a 0 122 -112 10 0.5
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] at @s run title @a subtitle {"text":"The game has started","italic":true,"color":"yellow"}
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] at @s run title @a title {"text":"FIGHT!","bold":true,"color":"red"}
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] at @s run effect give @a minecraft:slowness 2 255 true
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] at @s run effect give @a minecraft:blindness 3 255 true
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] at @s run effect give @a minecraft:weakness 2 100 true
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] at @s run tag @a remove dead
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] at @s run tag @a add alive

execute if score @e[tag=dummy,limit=1] start_button matches 110 as @a run clear @s
execute if score @e[tag=dummy,limit=1] start_button matches 110 run gamemode adventure
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @a run function m:game/baseitems
execute if score @e[tag=dummy,limit=1] start_button matches 110 as @a run scoreboard players set @s respawncooldown 99

execute if score @e[tag=dummy,limit=1] start_button matches 110 if score @e[tag=dummy,limit=1] MapSwitch matches 1 as @a run forceload add -245 -833 -161 -751
execute if score @e[tag=dummy,limit=1] start_button matches 110 if score @e[tag=dummy,limit=1] MapSwitch matches 1 as @a run tp @s -197.50 164.00 -786.50 facing -197.50 163.00 -786.50
execute if score @e[tag=dummy,limit=1] start_button matches 110 if score @e[tag=dummy,limit=1] MapSwitch matches 1 as @a run function m:game/plains/summon_special_drop_plains
execute if score @e[tag=dummy,limit=1] start_button matches 110 if score @e[tag=dummy,limit=1] MapSwitch matches 1 as @a run function m:game/plains/summon_drop_plains
execute if score @e[tag=dummy,limit=1] start_button matches 110 if score @e[tag=dummy,limit=1] MapSwitch matches 1 as @a run forceload remove -245 -833 -161 -751

execute if score @e[tag=dummy,limit=1] start_button matches 110 if score @e[tag=dummy,limit=1] MapSwitch matches 2 as @a run forceload add 874 -856 1002 -740
execute if score @e[tag=dummy,limit=1] start_button matches 110 if score @e[tag=dummy,limit=1] MapSwitch matches 2 as @a run tp @s 938 140 -797 facing 938 139 -797
execute if score @e[tag=dummy,limit=1] start_button matches 110 if score @e[tag=dummy,limit=1] MapSwitch matches 2 as @a run function m:game/winter/summon_special_drop_winter
execute if score @e[tag=dummy,limit=1] start_button matches 110 if score @e[tag=dummy,limit=1] MapSwitch matches 2 as @a run function m:game/winter/summon_drop_winter
execute if score @e[tag=dummy,limit=1] start_button matches 110 if score @e[tag=dummy,limit=1] MapSwitch matches 2 as @a run forceload remove 874 -856 1002 -740


execute if score @e[tag=dummy,limit=1] start_button matches 110 as @e[tag=start_button,type=interaction] run kill @e[tag=start_button,type=interaction]



execute if score @e[tag=dummy,limit=1] start_button matches 1.. if entity @e[tag=start_button_shield] run tag @e[tag=dummy] add cancelled
execute if score @e[tag=dummy,limit=1] start_button matches 1.. if entity @e[tag=start_button_shield] run function m:stage_0_init_lobby
execute if entity @e[tag=cancelled] at @a run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.2 0.5
execute if entity @e[tag=cancelled] run title @a title {"text":"Canceled","bold":true,"color":"red"}
execute if entity @e[tag=cancelled] run title @a subtitle {"text":"Not Enough Teams To Start The Game","color":"#FF0000"}
execute if entity @e[tag=cancelled] run tag @e[tag=dummy] remove cancelled

execute if score @e[tag=dummy,limit=1] start_button matches 110 as @a run scoreboard players set @e[tag=dummy] world_stage 2
