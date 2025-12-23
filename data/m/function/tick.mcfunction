# function m:stage_0_init_lobby
# scoreboard objectives add randomtpentities dummy
function m:base/sidebar
tag @e[tag=plainsrandomtp,limit=1] add this_rtp
execute as @e[type=armor_stand,tag=plainsrandomtp,tag=!this_rtp] run kill @s
tag @e[tag=this_rtp] remove this_rtp
execute if score @e[tag=dummy,limit=1] world_stage matches 1 run function m:stage_1_lobby
execute if score @e[tag=dummy,limit=1] world_stage matches 2 run function m:stage_2_game
function m:base/detectjoin
function m:game/powerups
execute as @a unless entity @s[nbt={active_effects:[{id:"minecraft:resistance",amplifier:-1b,duration:-1}]}] run effect give @s minecraft:resistance infinite 255 true
execute as @a unless entity @s[nbt={active_effects:[{id:"minecraft:saturation",amplifier:-1b,duration:-1}]}] run effect give @s minecraft:saturation infinite 255 true
kill @e[type=minecraft:experience_orb]
execute as @e[type=!player,type=!item,type=!minecraft:block_display,type=!minecraft:text_display,type=!minecraft:item_display] run data merge entity @s {FallDistance:0f}
execute as @a store result score @s max_health run attribute @s minecraft:max_health base get
execute as @a unless score @s max_health = @s health run effect give @s minecraft:instant_health 1 10 true