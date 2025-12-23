# summon item ~ ~ ~ {Item:{id:"minecraft:pufferfish",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Pufferfish Grenade","color":"#55ee88"}',"minecraft:food":{nutrition:0,saturation:0.0f,can_always_eat:true}}}}




execute at @s facing ^ ^ ^1 positioned 0. 0. 0. positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:[temp_pufferfish_grenade_marker]}
execute anchored eyes run summon pufferfish ^ ^ ^1.5 {Tags:[temp_pufferfish_grenade],Item:{id:"minecraft:pufferfish",count:1},Invulnerable:1}
execute as @e[tag=temp_pufferfish_grenade] run data modify entity @s Motion set from entity @n[tag=temp_pufferfish_grenade_marker] Pos
execute as @e[tag=temp_pufferfish_grenade] run data modify entity @s Tags set value [pufferfish_grenade]
kill @e[tag=temp_pufferfish_grenade_marker]
tag @s add pufferfish_thrower











playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~ ~ 1 2
advancement revoke @s only m:powerups/pufferfish_grenade
execute if entity @s[nbt={Inventory:[{Slot: -106b, id: "minecraft:pufferfish", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:pufferfish",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:pufferfish",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
