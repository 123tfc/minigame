# summon item ~ ~ ~ {Item:{id:"spawner",components:{"consumable":{consume_seconds:10000},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":'{"text":"Mob Grenade","color":"dark_purple","italic":false}',"max_stack_size":1}},CustomName:'{"text":"Mob Grenade","color":"dark_purple","italic":false}',CustomNameVisible:1b}

advancement revoke @s only m:powerups/mob_grenade




execute at @s facing ^ ^ ^1 positioned 0. 0. 0. positioned ^ ^ ^1.5 run summon marker ~ ~ ~ {Tags:[temp_mob_grenade_marker]}
execute at @s anchored eyes run summon snowball ^ ^ ^1 {Item:{id:"minecraft:spawner"},Tags:[temp_mob_grenade]}
execute as @e[tag=temp_mob_grenade] run data modify entity @s Motion set from entity @n[tag=temp_mob_grenade_marker] Pos
execute as @e[tag=temp_mob_grenade_marker] run tp @s @n[tag=temp_mob_grenade]
execute as @e[tag=temp_mob_grenade_marker] run data modify entity @s Tags set value [mob_grenade_marker]
execute as @e[tag=temp_mob_grenade] run data modify entity @s Tags set value [mob_grenade]



playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 1 0.5
execute if entity @s[nbt={Inventory:[{Slot: -106b, id: "minecraft:spawner", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:spawner",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:spawner",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air



















