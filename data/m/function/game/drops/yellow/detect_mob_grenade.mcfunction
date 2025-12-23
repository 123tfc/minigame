
execute at @e[tag=mob_grenade] as @e[tag=mob_grenade_marker,sort=nearest,limit=1] run tp @s @n[tag=mob_grenade]
execute as @e[tag=mob_grenade_marker] at @s unless entity @e[tag=mob_grenade,distance=..5] run tag @s add boom


execute as @e[tag=mob_grenade_marker,tag=boom] at @s run function m:game/drops/yellow/boom_mob_grenade


kill @e[tag=mob_grenade_marker,tag=boom]

