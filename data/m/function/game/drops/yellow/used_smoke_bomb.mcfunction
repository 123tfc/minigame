# summon item ~ ~ ~ {Item:{id:"heavy_core",components:{"consumable":{consume_seconds:10000},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":'{"text":"Smoke Bomb","color":"dark_gray","italic":false}',"max_stack_size":1}},CustomName:'{"text":"Smoke Bomb","color":"dark_gray","italic":false}',CustomNameVisible:1b}

advancement revoke @s only m:powerups/smoke_bomb




execute at @s facing ^ ^ ^1 positioned 0. 0. 0. positioned ^ ^ ^1.5 run summon marker ~ ~ ~ {Tags:[temp_smoke_bomb_marker]}
execute at @s anchored eyes run summon snowball ^ ^ ^1 {Item:{id:"minecraft:heavy_core"},Tags:[temp_smoke_bomb]}
execute as @e[tag=temp_smoke_bomb] run data modify entity @s Motion set from entity @n[tag=temp_smoke_bomb_marker] Pos
execute as @e[tag=temp_smoke_bomb_marker] run tp @s @n[tag=temp_smoke_bomb]
execute as @e[tag=temp_smoke_bomb_marker] run data modify entity @s Tags set value [smoke_bomb_marker]
execute as @e[tag=temp_smoke_bomb] run data modify entity @s Tags set value [smoke_bomb]



playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 1 0.5
execute if entity @s[nbt={equipment:{offhand:{id: "minecraft:heavy_core", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:heavy_core",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:heavy_core",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air



















