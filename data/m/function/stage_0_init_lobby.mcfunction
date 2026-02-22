# Kill entities from maps:
forceload add -245 -833 -161 -751
forceload add 874 -856 1002 -740
forceload add 4304 -859 4442 -721
kill @e[type=!player,tag=!dummy,tag=!dummy2]
forceload remove -245 -833 -161 -751
forceload remove 874 -856 1002 -740
forceload remove 4304 -859 4442 -721

#Summon Lobby
function m:lobby/summon_lives_settings
function m:lobby/summon_time_settings
function m:lobby/summon_strength_settings
function m:lobby/summon_start_button
function m:lobby/summon_map_switch
function m:lobby/summon_team_as
function m:teams/create_teams
tag @a add alive
clear @a
effect clear @a
function m:base/knockback
scoreboard players set @e[tag=dummy] world_stage 1

# Stop Powerup Effects:
scoreboard players set @e[tag=dummy] meteor -1
scoreboard players set @e[tag=dummy] motion_sickness -1
scoreboard players set @e[tag=dummy] horsies -1
stopwatch remove gravity_switch

execute as @a unless entity @s[x=-10,dx=20,z=-130,dz=20,y=120,dy=20] run tp @s 0 121 -120 0 0
execute as @a if entity @s[x=-10,dx=20,z=-130,dz=20,y=120,dy=20] run gamemode adventure
execute as @a run playsound minecraft:block.lava.pop master @s ~ ~ ~ 2 0.5
execute as @a run attribute @s minecraft:gravity base set 0.08
execute as @a run attribute @s minecraft:scale base set 1