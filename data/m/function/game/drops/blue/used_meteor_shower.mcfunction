#summon item ~ ~ ~ {Item:{id:"minecraft:fire_charge",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Meteor Shower","color":"#cc4422"}',"minecraft:consumable":{},"minecraft:food":{nutrition:0,saturation:0.0f,can_always_eat:true}}}}
#give @s minecraft:fire_charge[minecraft:food={nutrition:0.0,saturation:0.0}]



execute at @a run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1 0.5
advancement revoke @s only m:powerups/meteor_shower

tellraw @a [{"text":"Don't Look Up! ","bold":true,"color":"#dd677a"},{"text":"Ahh! Meteors Incoming!","color":"#bb2d43","italic":true,"bold":false}]

scoreboard players set @e[tag=dummy] meteor 0

execute if score @e[tag=dummy,limit=1] MapSwitch matches 2 if entity @s[nbt={Inventory:[{Slot: -106b, id: "minecraft:fire_charge", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:fire_charge",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fire_charge",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
