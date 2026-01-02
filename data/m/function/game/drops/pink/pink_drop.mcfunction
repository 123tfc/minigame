execute store result score random_pink_item drop_item run random value 1..7

execute at @s if score random_pink_item drop_item matches 1 run summon item ~ ~-1 ~ {Tags:[pink_drop_item],NoGravity:1b,Item:{id:"end_crystal",components:{"custom_name":{"text":"Extra Life","color":"#FF4477","italic":false},"max_stack_size":1}},CustomName:{"text":"Extra Life","color":"#FF4477","italic":false},CustomNameVisible:1b}
execute at @s if score random_pink_item drop_item matches 2..3 run summon item ~ ~-1 ~ {Tags:[pink_drop_item],NoGravity:1b,Item:{id:"blaze_powder",components:{"custom_name":{"text":"Fire Stick Enchant","color":"#ffaa55","italic":false},"max_stack_size":1}},CustomName:{"text":"Fire Stick Enchant","color":"#ffaa55","italic":false},CustomNameVisible:1b}
execute at @s if score random_pink_item drop_item matches 4..5 run summon item ~ ~-1 ~ {Tags:[pink_drop_item],NoGravity:1b,Item:{id:"enchanted_book",components:{"consumable":{},"custom_name":{"text":"Infinity Bow Enchant","color":"light_purple","italic":false},"max_stack_size":1}},CustomName:{"text":"Infinity Bow Enchant","color":"light_purple","italic":false},CustomNameVisible:1b}
execute at @s if score random_pink_item drop_item matches 6..7 run summon item ~ ~-1 ~ {Tags:[pink_drop_item],NoGravity:1b,Item:{id:"guster_banner_pattern",components:{"consumable":{},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":{"text":"Spell of Shrinking","color":"#EEAAFF","italic":false},"max_stack_size":1}},CustomName:{"text":"Spell of Shrinking","color":"#EEAAFF","italic":false},CustomNameVisible:1b}


execute at @s run playsound minecraft:block.sniffer_egg.plop master @a ~ ~ ~ 1


#ild 143
#bue 160
#liv 83
#shrink 168

#ild 284
#bue 260
#liv 149
#shrink 281