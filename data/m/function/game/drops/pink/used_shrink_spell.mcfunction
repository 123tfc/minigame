# summon item ~ ~ ~ {Item:{id:"guster_banner_pattern",components:{"consumable":{consume_seconds:10000},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":'{"text":"Spell of Shrinking","color":"#EEAAFF","italic":false}',"max_stack_size":1}},CustomName:'{"text":"Spell of Shrinking","color":"#EEAAFF","italic":false}',CustomNameVisible:1b}

execute at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 1 1.7
execute at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 1 1.4
advancement revoke @s only m:powerups/shrink_spell
attribute @s minecraft:scale base set 0.75
execute if entity @s[nbt={Inventory:[{Slot: -106b, id: "minecraft:guster_banner_pattern", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:guster_banner_pattern",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:guster_banner_pattern",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air