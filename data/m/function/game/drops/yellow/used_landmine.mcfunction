# summon item ~ ~ ~ {Item:{id:"open_eyeblossom",components:{"consumable":{consume_seconds:10000},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":'{"text":"Explosive Landmine","color":"gray","italic":false}',"max_stack_size":1}},CustomName:'{"text":"Explosive Landmine","color":"gray","italic":false}',CustomNameVisible:1b}
# scoreboard objectives add landmine_timer dummy "Landmine Timer"

advancement revoke @s only m:powerups/landmine

#Check for valid position:
execute at @s if entity @s[nbt={OnGround:1b}] unless block ~ ~-0.1 ~ #m:non_solids unless block ~ ~-0.1 ~ #minecraft:slabs run tag @s add valid
execute at @s if entity @s[nbt={OnGround:1b}] if block ~ ~ ~ #minecraft:slabs run tag @s add valid
execute unless entity @s[tag=valid] run title @s actionbar {"text":"Invalid Placement. Need Ground To Establish","color":"#FF0000"}
execute unless entity @s[tag=valid] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1

#If valid position:
execute as @s[tag=valid] at @s run playsound minecraft:item.mace.smash_air master @a ~ ~ ~ 0.2 0.8
execute as @s[tag=valid] at @s run playsound minecraft:block.gravel.hit master @a ~ ~ ~ 0.2 0.8
execute as @s[tag=valid] at @s align xz run summon block_display ~ ~-0.4 ~ {Tags:[landmine],block_state:{Name:"minecraft:closed_eyeblossom"}}
execute as @s[tag=valid] at @s align xz run summon block_display ~ ~-0.4 ~ {Tags:[landmine],block_state:{Name:"minecraft:closed_eyeblossom"}}




execute as @e[tag=landmine] unless score @s landmine_timer matches 0.. run scoreboard players set @s landmine_timer 0

execute if entity @s[tag=valid,nbt={Inventory:[{Slot: -106b, id: "minecraft:open_eyeblossom", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:open_eyeblossom",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[tag=valid,nbt={SelectedItem:{id:"minecraft:open_eyeblossom",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air


execute as @s[tag=valid] run tag @s remove valid