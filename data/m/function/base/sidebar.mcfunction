# scoreboard objectives add knockblock dummy [{"text":"-☆ ","bold":false,"color":"green"},{"text":"Knock","bold":true,"color":"yellow"},{"text":"Block","bold":true,"color":"gold"},{"text":" ☆-","bold":false,"color":"green"}]



scoreboard players reset * Migger

scoreboard players set #division2 Migger 2
execute as @a if entity @s[tag=alive,team=red] run scoreboard players operation Red Migger += @s health
execute as @a if entity @s[tag=alive,team=blue] run scoreboard players operation Blue Migger += @s health
execute as @a if entity @s[tag=alive,team=white] run scoreboard players operation White Migger += @s health
execute as @a if entity @s[tag=alive,team=yellow] run scoreboard players operation Yellow Migger += @s health
execute as @a if entity @s[tag=alive,team=pink] run scoreboard players operation Pink Migger += @s health
execute as @a if entity @s[tag=alive,team=black] run scoreboard players operation Black Migger += @s health
execute as @a if entity @s[tag=alive,team=lime] run scoreboard players operation Lime Migger += @s health
execute as @a if entity @s[tag=alive,team=orange] run scoreboard players operation Orange Migger += @s health
execute as @a if entity @s[tag=alive,team=lone] run scoreboard players operation @s Migger = @s health
execute if score Red Migger matches 1.. run scoreboard players operation Red Migger /= #division2 Migger
execute if score Blue Migger matches 1.. run scoreboard players operation Blue Migger /= #division2 Migger
execute if score White Migger matches 1.. run scoreboard players operation White Migger /= #division2 Migger
execute if score Yellow Migger matches 1.. run scoreboard players operation Yellow Migger /= #division2 Migger
execute if score Pink Migger matches 1.. run scoreboard players operation Pink Migger /= #division2 Migger
execute if score Black Migger matches 1.. run scoreboard players operation Black Migger /= #division2 Migger
execute if score Lime Migger matches 1.. run scoreboard players operation Lime Migger /= #division2 Migger
execute if score Orange Migger matches 1.. run scoreboard players operation Orange Migger /= #division2 Migger
execute as @a[team=lone] if score @s Migger matches 1.. run scoreboard players operation @s Migger /= #division2 Migger

execute if score Blue Migger matches 1.. run scoreboard players operation Blue knockblock = Blue Migger
execute if score Red Migger matches 1.. run scoreboard players operation Red knockblock = Red Migger
execute if score White Migger matches 1.. run scoreboard players operation White knockblock = White Migger
execute if score Yellow Migger matches 1.. run scoreboard players operation Yellow knockblock = Yellow Migger
execute if score Pink Migger matches 1.. run scoreboard players operation Pink knockblock = Pink Migger
execute if score Black Migger matches 1.. run scoreboard players operation Black knockblock = Black Migger
execute if score Lime Migger matches 1.. run scoreboard players operation Lime knockblock = Lime Migger
execute if score Orange Migger matches 1.. run scoreboard players operation Orange knockblock = Orange Migger
execute as @a[team=lone] if score @s Migger matches 1.. run scoreboard players operation @s knockblock = @s Migger

# team join red Red
# team join white White
# team join yellow Yellow
# team join blue Blue
# team join pink Pink
# team join black Black
# team join lime Lime
# team join orange Orange

execute unless entity @a[tag=alive,team=blue] run scoreboard players reset Blue knockblock
execute unless entity @a[tag=alive,team=red] run scoreboard players reset Red knockblock
execute unless entity @a[tag=alive,team=white] run scoreboard players reset White knockblock
execute unless entity @a[tag=alive,team=yellow] run scoreboard players reset Yellow knockblock
execute unless entity @a[tag=alive,team=pink] run scoreboard players reset Pink knockblock
execute unless entity @a[tag=alive,team=black] run scoreboard players reset Black knockblock
execute unless entity @a[tag=alive,team=lime] run scoreboard players reset Lime knockblock
execute unless entity @a[tag=alive,team=orange] run scoreboard players reset Orange knockblock
execute as @a[team=lone] unless entity @s[tag=alive] run scoreboard players reset @s knockblock
execute as @a unless entity @s[team=lone] run scoreboard players reset @s knockblock



execute if score @e[tag=dummy,limit=1] world_stage matches 2 run function m:game/victory








