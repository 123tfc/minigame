#summon item ~ ~ ~ {Item:{id:"minecraft:glass",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Invisibility Powerup","color":"#55ee88"}',"minecraft:food":{nutrition:0,saturation:0.0f}}}}
#give @s minecraft:glass[minecraft:food={nutrition:0.0,saturation:0.0}]



playsound minecraft:block.conduit.activate master @a ~ ~ ~ 1 2
advancement revoke @s only m:powerups/invisibility_powerup
effect give @s invisibility 8 3 true
execute if entity @s[nbt={equipment:{offhand:{id: "minecraft:glass", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:glass",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glass",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
item replace entity @s armor.head with air
execute unless entity @p[nbt={equipment:{chest:{id:"minecraft:elytra"}}}] run item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air