#summon item ~ ~ ~ {Item:{id:"minecraft:mangrove_propagule",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Resurface","color":"#55ee88"}',"minecraft:food":{nutrition:0,saturation:0.0f}}}}
#give @s minecraft:mangrove_propagule[minecraft:food={nutrition:0.0,saturation:0.0}]




advancement revoke @s only m:powerups/resurface

execute positioned over world_surface unless block ~ ~-1 ~ air run tag @s add resurface_me
execute unless entity @s[tag=resurface_me] run title @s actionbar {"text":"You are not under any ground to resurface on.","color":"#FF0000"}
execute unless entity @s[tag=resurface_me] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1

execute if entity @s[tag=resurface_me] positioned over world_surface run tp ~ ~ ~
execute if entity @s[tag=resurface_me,nbt={equipment:{offhand:{id: "minecraft:mangrove_propagule", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[tag=resurface_me,nbt={SelectedItem:{id:"minecraft:mangrove_propagule",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[tag=resurface_me,nbt={SelectedItem:{id:"minecraft:mangrove_propagule",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
execute if entity @s[tag=resurface_me] positioned over world_surface run playsound minecraft:entity.player.teleport master @a ~ ~ ~ 1 0.7
tag @s remove resurface_me