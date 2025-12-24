# scoreboard objectives add growth_bomb_timer dummy
execute at @e[tag=growth_bomb] as @e[tag=growth_bomb_marker,sort=nearest,limit=1] run tp @s @n[tag=growth_bomb]
execute as @e[tag=growth_bomb_marker] at @s unless entity @e[tag=growth_bomb,distance=..5] run tag @s add boom

execute at @e[tag=growth_bomb_marker,tag=boom] run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 0.7

execute at @e[tag=growth_bomb_marker,tag=boom] run particle minecraft:happy_villager ~ ~ ~ 2 2 2 1 100

execute at @e[tag=growth_bomb_marker,tag=boom] as @a[distance=..3] if entity @s[nbt={attributes:[{id:"minecraft:scale",base:0.75d}]}] run tag @s add size_075
execute at @e[tag=growth_bomb_marker,tag=boom] as @a[distance=..3] if entity @s[nbt={attributes:[{id:"minecraft:scale",base:1.0d}]}] run tag @s add size_100
execute at @e[tag=growth_bomb_marker,tag=boom] as @a[distance=..3] run scoreboard players set @s growth_bomb_timer 1

kill @e[tag=growth_bomb_marker,tag=boom]

execute as @a if score @s growth_bomb_timer matches 1.. run scoreboard players add @s growth_bomb_timer 1
execute as @a[tag=size_100] if score @s growth_bomb_timer matches 1.. run attribute @s minecraft:scale base set 1.5
execute as @a[tag=size_075] if score @s growth_bomb_timer matches 1.. run attribute @s minecraft:scale base set 1.125

execute as @a[tag=size_100] if score @s growth_bomb_timer matches 200.. run attribute @s minecraft:scale base set 1
execute as @a[tag=size_075] if score @s growth_bomb_timer matches 200.. run attribute @s minecraft:scale base set 0.75

execute as @a[tag=size_100] if score @s growth_bomb_timer matches 200.. run tag @s remove size_100
execute as @a[tag=size_075] if score @s growth_bomb_timer matches 200.. run tag @s remove size_075

execute as @a if score @s growth_bomb_timer matches 200.. run scoreboard players reset @s growth_bomb_timer
