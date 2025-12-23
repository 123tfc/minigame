# summon item ~ ~ ~ {Item:{id:"end_crystal",components:{"custom_name":'{"text":"Extra Life","color":"#FF4477","italic":false}',"max_stack_size":1}},CustomName:'{"text":"Extra Life","color":"#FF4477","italic":false}',CustomNameVisible:1b}


execute as @a[nbt={Inventory:[{id:"minecraft:end_crystal",components:{"minecraft:custom_name":{"text":"Extra Life","color":"#FF4477","italic":false}}}]}] unless score @e[tag=dummy,limit=1] lives matches 4 if score @s max_health matches 8 run attribute @s minecraft:max_health base set 10
execute as @a[nbt={Inventory:[{id:"minecraft:end_crystal",components:{"minecraft:custom_name":{"text":"Extra Life","color":"#FF4477","italic":false}}}]}] unless score @e[tag=dummy,limit=1] lives matches 3 if score @s max_health matches 6 run attribute @s minecraft:max_health base set 8
execute as @a[nbt={Inventory:[{id:"minecraft:end_crystal",components:{"minecraft:custom_name":{"text":"Extra Life","color":"#FF4477","italic":false}}}]}] unless score @e[tag=dummy,limit=1] lives matches 2 if score @s max_health matches 4 run attribute @s minecraft:max_health base set 6
execute as @a[nbt={Inventory:[{id:"minecraft:end_crystal",components:{"minecraft:custom_name":{"text":"Extra Life","color":"#FF4477","italic":false}}}]}] unless score @e[tag=dummy,limit=1] lives matches 1 if score @s max_health matches 2 run attribute @s minecraft:max_health base set 4
clear @a minecraft:end_crystal[minecraft:custom_name={"text":"Extra Life","color":"#FF4477","italic":false}]
