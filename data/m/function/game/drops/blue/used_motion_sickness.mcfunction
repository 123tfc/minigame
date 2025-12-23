#summon item ~ ~ ~ {Item:{id:"minecraft:turtle_scute",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Motion Sickness Pill","color":"#44FFCC"}',"minecraft:consumable":{},"minecraft:food":{nutrition:0,saturation:0.0f,can_always_eat:true}}}}
#give @s minecraft:turtle_scute[minecraft:food={nutrition:0.0,saturation:0.0}]
# scoreboard objectives add player_id dummy



advancement revoke @s only m:powerups/motion_sickness
tellraw @a [{"text":"A Rumble Has Begun! ","bold":true,"color":"#44FFCC"},{"text":"Move Slow Or You'll Get Dizzy!","color":"#00AA77","italic":true,"bold":false}]

tag @s add motion_resistant
scoreboard players set @e[tag=dummy] motion_sickness 0


execute if entity @s[nbt={Inventory:[{Slot: -106b, id: "minecraft:turtle_scute", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:turtle_scute",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_scute",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
