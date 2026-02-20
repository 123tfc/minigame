
execute as @a at @s if block ~ ~-0.2 ~ minecraft:light_blue_glazed_terracotta if entity @s[nbt={OnGround:1b}] run tag @s add launch_me
execute as @a[tag=launch_me] run scoreboard players add @s launch 1

execute as @a[tag=launch_me,scores={launch=1}] at @s run summon armor_stand ~ ~ ~ {NoAI:1,Tags:[launch_as],Silent:1b,attributes:[{id:"minecraft:scale",base:0.1}],Invulnerable:1b}
execute as @e[tag=launch_as] run data modify entity @s Rotation[0] set from entity @p[tag=launch_me] Rotation[0]

execute as @e[tag=launch_as] at @s at @p[tag=launch_me,scores={launch=1}] rotated as @s run tp @s ^ ^ ^-0.5
execute as @e[tag=launch_as] run scoreboard players add @s launch 1

execute at @e[tag=launch_as,scores={launch=1}] run summon minecraft:breeze_wind_charge ~ ~0.61 ~ {Motion:[0.0,-1.0,0.0]}
execute at @e[tag=launch_as,scores={launch=1}] run summon minecraft:breeze_wind_charge ~ ~0.61 ~ {Motion:[0.0,-1.0,0.0]}
execute at @e[tag=launch_as,scores={launch=1}] run summon minecraft:breeze_wind_charge ~ ~0.61 ~ {Motion:[0.0,-1.0,0.0]}
execute as @e[tag=launch_as,scores={launch=3}] run kill @s

execute as @a[scores={launch=5..}] run tag @s remove launch_me
execute as @a[scores={launch=5..}] run scoreboard players reset @s launch

