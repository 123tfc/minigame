execute unless entity @e[tag=arcaderandomtp] run summon armor_stand 3252 101 -814 {Tags:[arcaderandomtp],NoGravity:1,Silent:1,Marker:1,Invisible:1}
execute as @e[tag=arcaderandomtp] store result entity @s Pos[0] double 1 run random value 3207..3252
execute as @e[tag=arcaderandomtp] store result entity @s Pos[2] double 1 run random value -808..-771
execute as @e[tag=arcaderandomtp] at @s positioned over world_surface run tp ~ ~ ~

execute as @e[tag=arcaderandomtp] unless entity @s[x=3207,dx=45,z=-808,dz=37,y=102] run function m:game/arcade/respawntp
execute as @e[tag=arcaderandomtp] if entity @s[x=3207,dx=45,z=-808,dz=37,y=102] at @s run tp @a[gamemode=spectator,scores={respawncooldown=101},limit=1,sort=random] @s
execute as @e[tag=arcaderandomtp] at @s as @a[gamemode=spectator,distance=..1] if entity @s run gamemode adventure @s
execute as @e[tag=arcaderandomtp] at @s as @a[gamemode=spectator,distance=..1] if entity @s run scoreboard players set @s player_hurt_level 0
execute as @e[tag=arcaderandomtp] run kill @s


