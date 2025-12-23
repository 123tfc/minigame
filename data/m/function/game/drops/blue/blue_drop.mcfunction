execute store result score random_blue_item drop_item run random value 1..5

execute at @s if score random_blue_item drop_item matches 1 run summon item ~ ~-1 ~ {Tags:[blue_drop_item],NoGravity:1b,Item:{id:"minecraft:lead",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":{"italic":false,"bold":false,"text":"Horsies For All","color":"#85eb81"},"minecraft:consumable":{},"minecraft:food":{nutrition:0,saturation:0.0f,can_always_eat:true}}}}
execute at @s if score random_blue_item drop_item matches 2 run summon item ~ ~-1 ~ {Tags:[blue_drop_item],NoGravity:1b,Item:{id:"minecraft:turtle_scute",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":{"italic":false,"bold":false,"text":"Motion Sickness Pill","color":"#44FFCC"},"minecraft:consumable":{},"minecraft:food":{nutrition:0,saturation:0.0f,can_always_eat:true}}}}
execute at @s if score random_blue_item drop_item matches 3 run summon item ~ ~-1 ~ {Tags:[blue_drop_item],NoGravity:1b,Item:{id:"minecraft:fire_charge",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":{"italic":false,"bold":false,"text":"Meteor Shower","color":"#cc4422"},"minecraft:consumable":{},"minecraft:food":{"nutrition":0,"saturation":0.0f,"can_always_eat":true}}}}
execute at @s if score random_blue_item drop_item matches 4 run summon item ~ ~-1 ~ {Tags:[blue_drop_item],NoGravity:1b,Item:{id:"dragon_egg",components:{"consumable":{consume_seconds:10000},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":{"text":"Warp Anchor","color":"dark_purple","italic":false},"max_stack_size":1}},CustomName:{"text":"Warp Anchor","color":"dark_purple","italic":false},CustomNameVisible:1b}
execute at @s if score random_blue_item drop_item matches 5 run summon item ~ ~-1 ~ {Tags:[blue_drop_item],NoGravity:1b,Item:{id:"netherite_upgrade_smithing_template",components:{"minecraft:enchantment_glint_override":true,"consumable":{consume_seconds:10000},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":{"italic":false,"bold":false,"text":"Gravitation Switch","color":"#EE8855"},"max_stack_size":1}},CustomName:{"italic":false,"bold":false,"text":"Gravitation Switch","color":"#EE8855"},CustomNameVisible:1b}


execute at @s run playsound minecraft:block.sniffer_egg.plop master @a ~ ~ ~ 1



