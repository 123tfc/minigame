# scoreboard objectives add n_teams dummy

execute as @a[limit=1,team=red] run scoreboard players add #n_teams n_teams 1
execute as @a[limit=1,team=white] run scoreboard players add #n_teams n_teams 1
execute as @a[limit=1,team=yellow] run scoreboard players add #n_teams n_teams 1
execute as @a[limit=1,team=blue] run scoreboard players add #n_teams n_teams 1
execute as @a[limit=1,team=pink] run scoreboard players add #n_teams n_teams 1
execute as @a[limit=1,team=black] run scoreboard players add #n_teams n_teams 1
execute as @a[limit=1,team=lime] run scoreboard players add #n_teams n_teams 1
execute as @a[limit=1,team=orange] run scoreboard players add #n_teams n_teams 1
execute as @a[team=lone] run scoreboard players add #n_teams n_teams 1

execute if score #n_teams n_teams matches ..1 unless entity @e[tag=start_button_shield] run summon minecraft:interaction 0.50 122.09 -111.90 {height:1.07,width:1.42,Tags:[st_group,start_button_shield]}
execute unless score #n_teams n_teams matches ..1 if entity @e[tag=start_button_shield] run kill @e[tag=start_button_shield]

execute as @e[tag=start_button_shield,type=interaction] if data entity @s interaction on target run stopsound @a master minecraft:block.chest.locked
execute as @e[tag=start_button_shield,type=interaction] if data entity @s interaction on target run title @a actionbar {"text":"Not Enough Teams To Start The Game","color":"#FF0000"}
execute as @e[tag=start_button_shield,type=interaction] if data entity @s interaction on target at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 0.5
execute as @e[tag=start_button_shield,type=interaction] run data remove entity @s interaction

scoreboard players set #n_teams n_teams 0