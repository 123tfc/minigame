
execute at @e[tag=smoke_bomb] as @e[tag=smoke_bomb_marker,sort=nearest,limit=1] run tp @s @n[tag=smoke_bomb]
execute as @e[tag=smoke_bomb_marker] at @s unless entity @e[tag=smoke_bomb,distance=..5] run tag @s add boom

execute at @e[tag=smoke_bomb_marker,tag=boom] run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 0.7

execute at @e[tag=smoke_bomb_marker,tag=boom] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.03 2000
execute at @e[tag=smoke_bomb_marker,tag=boom] run particle minecraft:campfire_signal_smoke ~ ~ ~ 0 0 0 0.02 5000

execute at @e[tag=smoke_bomb_marker,tag=boom] as @e[distance=..3] run effect give @s minecraft:blindness 3 255 true
execute at @e[tag=smoke_bomb_marker,tag=boom] as @e[distance=..3] run effect give @s minecraft:slowness 3 2 true






kill @e[tag=smoke_bomb_marker,tag=boom]

