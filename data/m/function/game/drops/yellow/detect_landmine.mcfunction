execute as @e[tag=landmine] if score @s landmine_timer matches 0.. run scoreboard players add @s landmine_timer 1
execute as @e[tag=landmine] if score @s landmine_timer matches 20 at @s run playsound minecraft:block.chorus_flower.grow master @a ~ ~ ~ 0.2 0.5
execute as @e[tag=landmine] if score @s landmine_timer matches 40 run tag @s add active
execute as @e[tag=landmine] if score @s landmine_timer matches 1200 run tag @s add boom

execute as @e[tag=landmine,tag=active] run data modify entity @s block_state.Name set value "minecraft:open_eyeblossom"
execute as @e[tag=landmine,tag=active] at @s if entity @e[type=!armor_stand,dx=0,dy=0,dz=0] run tag @s add boom
execute as @e[tag=landmine,tag=active] at @s as @e[type=!armor_stand,dx=0,dy=0,dz=0] run damage @s 10
execute as @e[tag=landmine,tag=boom] at @s run playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 1 0.5
execute as @e[tag=landmine,tag=boom] at @s run summon minecraft:breeze_wind_charge ~ ~0.5 ~ {Motion:[0.0,-1.0,0.0]}
execute as @e[tag=landmine,tag=boom] at @s run summon minecraft:breeze_wind_charge ~ ~0.5 ~ {Motion:[0.0,-1.0,0.0]}

execute as @e[tag=landmine,tag=boom] run kill @s



