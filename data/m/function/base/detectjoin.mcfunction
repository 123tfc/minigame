scoreboard players add @a join 1
execute as @a[scores={join=1}] run attribute @s minecraft:gravity base set 0.08
execute as @a[scores={join=1}] run spawnpoint @s 0 121 -120
execute as @a[scores={join=1}] run tag @s remove victory
execute as @a[scores={join=1}] run tag @s remove alive
execute as @a[scores={join=1}] run tag @s add dead
execute as @a[scores={join=1}] run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWelcome to KnockBlock!\n\n","bold":true,"color":"yellow"},{"bold":false,"color":"white","text":"Remember to use the "},{"bold":false,"color":"#55ee88","text":"KnockBlock Guidebook "},{"bold":false,"color":"white","text":"to look up all sorts of information you'll need!\nYou'll find the Guidebook in the Game Menu tab"},{"bold":false,"text":" (Press Escape)\n\n","color":"gray"},{"bold":false,"color":"yellow","text":"Have Fun!\n"}]
execute as @a[scores={join=1}] run team join lone @s
execute as @a[scores={join=1}] run scoreboard players enable * book
execute as @a[scores={join=1}] store result score @s uuid run data get entity @s UUID[0]
execute if score @n[tag=dummy] world_stage matches 1 as @a[scores={join=1}] run tp @s 0 121 -120 0 0
execute if score @n[tag=dummy] world_stage matches 1 as @a[scores={join=1}] run gamemode adventure @s
execute if score @n[tag=dummy] world_stage matches 1 as @a[scores={join=1}] run clear @s
execute if score @n[tag=dummy] world_stage matches 1 as @a[scores={join=1}] run attribute @s minecraft:scale base set 1
execute if score @n[tag=dummy] world_stage matches 1 as @a[scores={join=1}] run function m:base/knockback

execute as @a[scores={join=2}] run scoreboard players add #n_players join 1
execute unless score #n_players join >= #n_players n_players run scoreboard players reset * knockblock
execute unless score #n_players join = #n_players n_players run scoreboard players operation #n_players n_players = #n_players join

scoreboard objectives remove join
scoreboard objectives add join dummy
scoreboard players add @a join 1

# scoreboard objectives add n_players dummy

