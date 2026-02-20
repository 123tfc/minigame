# summon item ~ ~ ~ {Item:{id:"piston",components:{"consumable":{},"custom_name":'{"text":"Extended Arms","color":"light_purple","italic":false}',"max_stack_size":1}},CustomName:'{"text":"Extended Arms","color":"light_purple","italic":false}',CustomNameVisible:1b}

execute as @a[nbt={Inventory:[{id:"minecraft:piston",components:{"minecraft:custom_name":{"text":"Extended Arms","color":"#FF9D5C","italic":false}}}]}] run attribute @s minecraft:entity_interaction_range base set 3.5
execute as @a[nbt={Inventory:[{id:"minecraft:piston",components:{"minecraft:custom_name":{"text":"Extended Arms","color":"#FF9D5C","italic":false}}}]}] run scoreboard players set @s extended_arms 0

execute as @a[scores={extended_arms=0..}] run scoreboard players add @s extended_arms 1
execute as @a[scores={extended_arms=1}] run clear @a minecraft:piston[minecraft:custom_name={"text":"Extended Arms","color":"#FF9D5C","italic":false}]
execute as @a[scores={extended_arms=1}] run tellraw @s [{"color":"#FF9D5C","text":"Extended Arms! ",bold:true,italic:false},{"color":"#99592f","text":"You Now Have Further Reach!",bold:false,italic:true}]
execute as @a[scores={extended_arms=600..}] run attribute @s entity_interaction_range base reset
execute as @a[scores={extended_arms=600..}] run scoreboard players reset @s extended_arms
















