# function m:stage_0_init_lobby
# scoreboard objectives add randomtpentities dummy
function m:base/sidebar
tag @e[tag=randomtp,limit=1] add this_rtp
execute as @e[type=armor_stand,tag=randomtp,tag=!this_rtp] run kill @s
tag @e[tag=this_rtp] remove this_rtp
execute if score @e[tag=dummy,limit=1] world_stage matches 1 run function m:stage_1_lobby
execute if score @e[tag=dummy,limit=1] world_stage matches 2 run function m:stage_2_game
function m:base/detectjoin
function m:game/powerups
function m:base/kb_armor/kb_armor
execute as @a unless entity @s[nbt={active_effects:[{id:"minecraft:resistance",amplifier:-1b,duration:-1}]}] run effect give @s minecraft:resistance infinite 255 true
execute as @a unless entity @s[nbt={active_effects:[{id:"minecraft:saturation",amplifier:-1b,duration:-1}]}] run effect give @s minecraft:saturation infinite 255 true
kill @e[type=minecraft:experience_orb]
execute as @e unless entity @s[nbt={attributes:[{base:1000.0d,id:"minecraft:safe_fall_distance"}]}] run attribute @s minecraft:safe_fall_distance base set 1000
execute as @a store result score @s max_health run attribute @s minecraft:max_health base get
execute as @a unless score @s max_health = @s health run effect give @s minecraft:instant_health 1 10 true