# summon item ~ ~ ~ {Item:{id:"dragon_egg",components:{"consumable":{consume_seconds:10000},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":'{"text":"Warp Anchor","color":"dark_purple","italic":false}',"max_stack_size":1}},CustomName:'{"text":"Warp Anchor","color":"dark_purple","italic":false}',CustomNameVisible:1b}
#give @s minecraft:dragon_egg[minecraft:food={nutrition:0.0,saturation:0.0},consumable={}]



execute as @s at @s if block ~ ~-0.1 ~ #m:non_solids run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b}] run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 1.5
advancement revoke @s only m:powerups/warp_anchor

execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b}] align xz run summon block_display ~0.25 ~.5 ~0.25 {block_state:{Name:"dragon_egg"},Tags:[warp_anchor],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,1f,0.5f]}}
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b}] align xz run summon block_display ~ ~ ~ {block_state:{Name:"sculk_shrieker"},Tags:[warp_anchor],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b}] align xz run summon block_display ~0.125 ~.5 ~0.125 {block_state:{Name:"lime_stained_glass"},Tags:[warp_anchor,warp_anchor_point],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,1.2f,0.75f]}}

execute as @s at @s if entity @s[nbt={OnGround:0b}] run title @s actionbar {"text":"Invalid Placement. Need Ground To Establish","color":"#FF0000"}
execute as @s at @s if block ~ ~-0.1 ~ #m:non_solids run title @s actionbar {"text":"Invalid Placement. Need Ground To Establish","color":"#FF0000"}


execute at @s unless block ~ ~-1 ~ #m:non_solids if entity @s[nbt={OnGround:1b,equipment:{offhand:{id: "minecraft:dragon_egg", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={OnGround:1b,SelectedItem:{id:"minecraft:dragon_egg",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute at @s unless block ~ ~-1 ~ #m:non_solids if entity @s[nbt={OnGround:1b,SelectedItem:{id:"minecraft:dragon_egg",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air

execute as @s at @s unless block ~ ~-1 ~ #m:non_solids if entity @s[nbt={OnGround:1b}] run give @s minecraft:ender_eye[minecraft:custom_name={"text":"Teleport To Warp", color:"dark_purple",italic:false},minecraft:max_stack_size=1]