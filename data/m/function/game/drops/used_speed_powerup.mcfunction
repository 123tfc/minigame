#summon item ~ ~ ~ {Item:{id:"minecraft:feather",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Speed Powerup","color":"#55ee88"}',"minecraft:food":{nutrition:0,saturation:0.0f}}}}
#give @s minecraft:feather[minecraft:food={nutrition:0.0,saturation:0.0}]



playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 2
advancement revoke @s only m:powerups/speed_powerup
effect give @s speed 5 3 true
execute if entity @s[nbt={equipment:{offhand:{id: "minecraft:feather", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:feather",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:feather",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
