

execute unless entity @e[tag=winterrandomtp] run summon armor_stand 874 39 -856 {Tags:[winterrandomtp],NoGravity:1,Silent:1,Marker:1,Invisible:1}
execute as @e[tag=winterrandomtp] store result entity @s Pos[0] double 1 run random value 874..1002
execute as @e[tag=winterrandomtp] store result entity @s Pos[2] double 1 run random value -856..-744
execute as @e[tag=winterrandomtp] at @s positioned over world_surface run tp ~ ~ ~

execute as @e[tag=winterrandomtp] unless entity @s[x=874,dx=125,y=102,dy=4,z=-856,dz=116] run function m:game/winter/respawntp
execute as @e[tag=winterrandomtp] if entity @s[x=874,dx=125,y=102,dy=4,z=-856,dz=116] at @s run tp @a[gamemode=spectator,scores={respawncooldown=101},limit=1,sort=random] @s
execute as @e[tag=winterrandomtp] at @s as @a[gamemode=spectator,distance=..1] if entity @s run gamemode adventure @s

execute as @e[tag=winterrandomtp] run kill @s
# -272 104 -859 

# -134 114 -721

