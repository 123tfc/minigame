execute unless entity @e[tag=plainsrandomtp] run summon armor_stand -272 39 -859 {Tags:[plainsrandomtp],NoGravity:1,Silent:1,Marker:1,Invisible:1}
execute as @e[tag=plainsrandomtp] store result entity @s Pos[0] double 1 run random value -272..-134
execute as @e[tag=plainsrandomtp] store result entity @s Pos[2] double 1 run random value -859..-721
execute as @e[tag=plainsrandomtp] at @s positioned over world_surface run tp ~ ~ ~

execute as @e[tag=plainsrandomtp] unless entity @s[x=-272,dx=138,z=-859,dz=138,y=104,dy=10] run function m:game/plains/respawntp
execute as @e[tag=plainsrandomtp] if entity @s[x=-272,dx=138,z=-859,dz=138,y=104,dy=10] at @s run tp @a[gamemode=spectator,scores={respawncooldown=101},limit=1,sort=random] @s
execute as @e[tag=plainsrandomtp] at @s as @a[gamemode=spectator,distance=..1] if entity @s run gamemode adventure @s
execute as @e[tag=plainsrandomtp] at @s as @a[gamemode=spectator,distance=..1] if entity @s run scoreboard players set @s player_hurt_level 0
execute as @e[tag=plainsrandomtp] run kill @s
# -272 104 -859 

# -134 114 -721

