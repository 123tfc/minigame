# scoreboard objectives add player_hurt_detect minecraft.custom:minecraft.damage_resisted
# scoreboard objectives add player_hurt_level dummy
# scoreboard players set #division10 player_hurt_level 10




execute as @a[tag=alive] if score @s player_hurt_detect matches 1.. run scoreboard players operation @s player_hurt_detect += #division10 player_hurt_level
execute as @a[tag=alive] if score @s player_hurt_level matches ..100 run scoreboard players operation @s player_hurt_detect /= #division10 player_hurt_level
execute as @a[tag=alive] if score @s player_hurt_level matches ..100 run scoreboard players operation @s player_hurt_level += @s player_hurt_detect
execute as @a[tag=alive] run scoreboard players set @s player_hurt_detect 0

execute as @a[tag=alive] if score @s player_hurt_level matches 101.. run scoreboard players set @s player_hurt_level 100
execute as @a[tag=alive] if score @s player_hurt_level matches ..0 run scoreboard players set @s player_hurt_level 0



execute as @a[tag=alive] if score @s player_hurt_level matches 0 run xp set @s 0 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 1 run xp set @s 1 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 2 run xp set @s 2 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 3 run xp set @s 3 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 4 run xp set @s 4 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 5 run xp set @s 5 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 6 run xp set @s 6 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 7 run xp set @s 7 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 8 run xp set @s 8 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 9 run xp set @s 9 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 10 run xp set @s 10 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 11 run xp set @s 11 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 12 run xp set @s 12 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 13 run xp set @s 13 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 14 run xp set @s 14 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 15 run xp set @s 15 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 16 run xp set @s 16 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 17 run xp set @s 17 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 18 run xp set @s 18 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 19 run xp set @s 19 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 20 run xp set @s 20 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 21 run xp set @s 21 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 22 run xp set @s 22 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 23 run xp set @s 23 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 24 run xp set @s 24 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 25 run xp set @s 25 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 26 run xp set @s 26 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 27 run xp set @s 27 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 28 run xp set @s 28 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 29 run xp set @s 29 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 30 run xp set @s 30 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 31 run xp set @s 31 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 32 run xp set @s 32 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 33 run xp set @s 33 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 34 run xp set @s 34 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 35 run xp set @s 35 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 36 run xp set @s 36 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 37 run xp set @s 37 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 38 run xp set @s 38 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 39 run xp set @s 39 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 40 run xp set @s 40 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 41 run xp set @s 41 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 42 run xp set @s 42 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 43 run xp set @s 43 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 44 run xp set @s 44 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 45 run xp set @s 45 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 46 run xp set @s 46 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 47 run xp set @s 47 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 48 run xp set @s 48 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 49 run xp set @s 49 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 50 run xp set @s 50 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 51 run xp set @s 51 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 52 run xp set @s 52 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 53 run xp set @s 53 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 54 run xp set @s 54 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 55 run xp set @s 55 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 56 run xp set @s 56 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 57 run xp set @s 57 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 58 run xp set @s 58 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 59 run xp set @s 59 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 60 run xp set @s 60 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 61 run xp set @s 61 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 62 run xp set @s 62 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 63 run xp set @s 63 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 64 run xp set @s 64 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 65 run xp set @s 65 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 66 run xp set @s 66 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 67 run xp set @s 67 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 68 run xp set @s 68 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 69 run xp set @s 69 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 70 run xp set @s 70 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 71 run xp set @s 71 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 72 run xp set @s 72 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 73 run xp set @s 73 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 74 run xp set @s 74 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 75 run xp set @s 75 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 76 run xp set @s 76 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 77 run xp set @s 77 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 78 run xp set @s 78 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 79 run xp set @s 79 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 80 run xp set @s 80 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 81 run xp set @s 81 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 82 run xp set @s 82 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 83 run xp set @s 83 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 84 run xp set @s 84 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 85 run xp set @s 85 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 86 run xp set @s 86 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 87 run xp set @s 87 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 88 run xp set @s 88 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 89 run xp set @s 89 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 90 run xp set @s 90 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 91 run xp set @s 91 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 92 run xp set @s 92 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 93 run xp set @s 93 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 94 run xp set @s 94 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 95 run xp set @s 95 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 96 run xp set @s 96 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 97 run xp set @s 97 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 98 run xp set @s 98 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 99 run xp set @s 99 levels
execute as @a[tag=alive] if score @s player_hurt_level matches 100 run xp set @s 100 levels








