# summon item ~ ~ ~ {Item:{id:"nether_star",components:{"custom_name":'{"text":"Heavy Star","color":"#FF4477","italic":false}',"max_stack_size":1}},CustomName:'{"text":"Heavy Star","color":"#FF4477","italic":false}',CustomNameVisible:1b}

execute as @a[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run scoreboard players remove @s player_hurt_level 10
clear @a minecraft:nether_star[minecraft:custom_name={"text":"Heavy Star","color":"#FF4477","italic":false}]