#summon item ~ ~ ~ {Item:{id:"minecraft:rabbit_foot",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Jump Powerup","color":"#55ee88"}',"minecraft:food":{nutrition:0,saturation:0.0f}}}}
#give @s minecraft:rabbit_foot[minecraft:food={nutrition:0.0,saturation:0.0}]



playsound minecraft:entity.frog.hurt master @a ~ ~ ~ 1 1
advancement revoke @s only m:powerups/jump_powerup
effect give @s jump_boost 8 3 true
execute if entity @s[nbt={Inventory:[{Slot: -106b, id: "minecraft:rabbit_foot", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:rabbit_foot",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:rabbit_foot",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
