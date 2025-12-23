


function m:lobby/summon_lives_settings
function m:lobby/summon_time_settings
function m:lobby/summon_strength_settings
function m:lobby/summon_start_button
function m:lobby/summon_ms_text
function m:teams/create_teams
tag @a add alive
clear @a
effect clear @a
function m:base/knockback
scoreboard players set @e[tag=dummy] world_stage 1

# Kill entities from maps:
#Grass
kill @e[type=!player,type=!armor_stand,x=-272,dx=138,z=-859,dz=138,y=94,dy=50]
kill @e[tag=plainsrandomtp]


execute as @a unless entity @s[x=-10,dx=20,z=-130,dz=20,y=120,dy=20] run tp @s 0 121 -120 0 0
execute as @a if entity @s[x=-10,dx=20,z=-130,dz=20,y=120,dy=20] run gamemode adventure
# effect give @a minecraft:instant_health 1 10 true
execute as @a run playsound minecraft:block.lava.pop master @s ~ ~ ~ 2 0.5
execute as @a run attribute @s minecraft:gravity base set 0.08
execute as @a run attribute @s minecraft:scale base set 1