#summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",components:{"minecraft:attribute_modifiers":[{id:"attack_damage",amount:0,slot:"mainhand"}],"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Strength Powerup","color":"#55ee88"}',"minecraft:food":{nutrition:0,saturation:0.0f}}}}


playsound minecraft:entity.ravager.celebrate master @a ~ ~ ~ 1 1.5
advancement revoke @s only m:powerups/strength_powerup
effect give @s strength 8 0 true
execute if entity @s[nbt={equipment:{offhand:{id: "minecraft:iron_sword", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air




