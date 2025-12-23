execute as @a[gamemode=!spectator,scores={sneaking=1..}] run tag @s add sneaking
execute as @a[gamemode=!spectator,scores={sneaking=0}] run tag @s remove sneaking
execute as @a[gamemode=!spectator,tag=sneaking] run effect give @s minecraft:glowing infinite 0 true
execute as @a[gamemode=!spectator,tag=!sneaking] run effect clear @s minecraft:glowing
execute as @a[gamemode=!spectator,scores={sneaking=1..}] run scoreboard players set @s sneaking 0