

execute as @a if entity @s[x=-361,dx=721,y=-100,dy=36,z=-280,dz=721] run scoreboard players set @s death 1
execute as @a if score @s death matches 1 run gamemode spectator @s
execute as @a if score @s death matches 1 run tp @s 0.50 151.00 81.50 facing 0.50 150.00 81.50
execute as @a if score @s death matches 1 run scoreboard players set @s death 0








