# scoreboard objectives add growth_bomb_timer dummy
execute at @e[tag=growth_bomb] as @e[tag=growth_bomb_marker,sort=nearest,limit=1] run tp @s @n[tag=growth_bomb]
execute as @e[tag=growth_bomb_marker] at @s unless entity @e[tag=growth_bomb,distance=..5] run tag @s add boom

execute at @e[tag=growth_bomb_marker,tag=boom] run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 0.7

execute at @e[tag=growth_bomb_marker,tag=boom] run particle minecraft:happy_villager ~ ~ ~ 2 2 2 1 100

execute at @e[tag=growth_bomb_marker,tag=boom] as @a[distance=..4] if entity @s[tag=growth_2,tag=!growth_3] run attribute @s minecraft:scale modifier add m:growth_3 0.25 add_multiplied_total
execute at @e[tag=growth_bomb_marker,tag=boom] as @a[distance=..4] if entity @s[tag=growth_2,tag=!growth_3] run tag @s add growth_3
execute at @e[tag=growth_bomb_marker,tag=boom] as @a[distance=..4] if entity @s[tag=growth_1,tag=!growth_2] run attribute @s minecraft:scale modifier add m:growth_2 0.25 add_multiplied_total
execute at @e[tag=growth_bomb_marker,tag=boom] as @a[distance=..4] if entity @s[tag=growth_1,tag=!growth_2] run tag @s add growth_2
execute at @e[tag=growth_bomb_marker,tag=boom] as @a[distance=..4] if entity @s[tag=!growth_1] run attribute @s minecraft:scale modifier add m:growth_1 0.5 add_multiplied_total
execute at @e[tag=growth_bomb_marker,tag=boom] as @a[distance=..4] if entity @s[tag=!growth_1] run tag @s add growth_1



execute at @e[tag=growth_bomb_marker,tag=boom] as @a[distance=..4] run scoreboard players set @s growth_bomb_timer 1

kill @e[tag=growth_bomb_marker,tag=boom]

execute as @a if score @s growth_bomb_timer matches 1.. run scoreboard players add @s growth_bomb_timer 1

execute as @a if score @s growth_bomb_timer matches 200.. run attribute @s minecraft:scale modifier remove m:growth_1
execute as @a if score @s growth_bomb_timer matches 200.. run tag @s remove growth_1
execute as @a if score @s growth_bomb_timer matches 200.. run attribute @s minecraft:scale modifier remove m:growth_2
execute as @a if score @s growth_bomb_timer matches 200.. run tag @s remove growth_2
execute as @a if score @s growth_bomb_timer matches 200.. run attribute @s minecraft:scale modifier remove m:growth_3
execute as @a if score @s growth_bomb_timer matches 200.. run tag @s remove growth_3

execute as @a if score @s growth_bomb_timer matches 200.. run scoreboard players reset @s growth_bomb_timer
