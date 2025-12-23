# scoreboard objectives add motion_sickness dummy

execute as @e[tag=dummy] if score @s motion_sickness matches 0.. run scoreboard players add @e[tag=dummy] motion_sickness 1
execute as @e[tag=dummy] if score @s motion_sickness matches 0.. as @a unless entity @s[tag=sneaking] run effect give @s minecraft:nausea 2 0 true
# execute as @e[tag=dummy] if score @s motion_sickness matches 0.. as @a[tag=motion_resistant] run effect clear @s minecraft:nausea
execute as @e[tag=dummy] if score @s motion_sickness matches 0.. as @a unless entity @s[tag=sneaking] run effect give @s minecraft:blindness 2 0 true
# execute as @e[tag=dummy] if score @s motion_sickness matches 0.. as @a[tag=motion_resistant] run effect clear @s minecraft:blindness
execute as @e[tag=dummy] if score @s motion_sickness matches 300 run tellraw @a [{"text":"The Rumble Is Over! ","bold":true,"color":"#44FFCC"},{"text":"You Can Now Move Again!","color":"#00AA77","italic":true,"bold":false}]
execute as @e[tag=dummy] if score @s motion_sickness matches 300 run effect clear @a minecraft:nausea
execute as @e[tag=dummy] if score @s motion_sickness matches 300 run effect clear @a minecraft:blindness
execute as @e[tag=dummy] if score @s motion_sickness matches 300 run tag @a remove motion_resistant
execute as @e[tag=dummy] if score @s motion_sickness matches 300 run scoreboard players set @e[tag=dummy] motion_sickness -1
execute as @a[gamemode=!spectator,scores={sneaking=1..}] run scoreboard players set @s sneaking 0

