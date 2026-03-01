execute at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.7
execute at @s run playsound minecraft:entity.copper_golem.death master @a ~ ~ ~ 1 0.5

attribute @s minecraft:entity_interaction_range base set 4.0
# attribute @s minecraft:entity_interaction_range base set 3.5
scoreboard players set @s extended_arms 0
advancement revoke @s only m:powerups/extended_arms

execute if entity @s[nbt={equipment:{offhand:{id: "minecraft:piston", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:piston",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:piston",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air

execute as @a[scores={extended_arms=0..}] run scoreboard players add @s extended_arms 1
execute as @a[scores={extended_arms=600..}] run attribute @s entity_interaction_range base reset
execute as @a[scores={extended_arms=600..}] run scoreboard players reset @s extended_arms












