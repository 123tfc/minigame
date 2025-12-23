#scoreboard objectives add strength dummy "Number Of Strength"


execute as @e[type=interaction,tag=Strength5] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] strength matches 5 run playsound minecraft:entity.player.attack.crit master @a -5.5 123.5 -113.0 0.5 0.5
execute as @e[type=interaction,tag=Strength4] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] strength matches 4 run playsound minecraft:entity.player.attack.crit master @a -5.5 123.5 -113.0 0.5 0.875
execute as @e[type=interaction,tag=Strength3] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] strength matches 3 run playsound minecraft:entity.player.attack.crit master @a -5.5 123.5 -113.0 0.5 1.25
execute as @e[type=interaction,tag=Strength2] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] strength matches 2 run playsound minecraft:entity.player.attack.crit master @a -5.5 123.5 -113.0 0.5 1.625
execute as @e[type=interaction,tag=Strength1] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] strength matches 1 run playsound minecraft:entity.player.attack.crit master @a -5.5 123.5 -113.0 0.5 2

execute as @e[type=interaction,tag=Strength1] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] strength 1
execute as @e[type=interaction,tag=Strength2] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] strength 2
execute as @e[type=interaction,tag=Strength3] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] strength 3
execute as @e[type=interaction,tag=Strength4] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] strength 4
execute as @e[type=interaction,tag=Strength5] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] strength 5



execute if score @e[tag=dummy,limit=1] strength matches 1 as @a run attribute @s minecraft:attack_damage base set 1
execute if score @e[tag=dummy,limit=1] strength matches 2 as @a run attribute @s minecraft:attack_damage base set 2
execute if score @e[tag=dummy,limit=1] strength matches 3 as @a run attribute @s minecraft:attack_damage base set 3
execute if score @e[tag=dummy,limit=1] strength matches 4 as @a run attribute @s minecraft:attack_damage base set 4
execute if score @e[tag=dummy,limit=1] strength matches 5 as @a run attribute @s minecraft:attack_damage base set 5



execute if entity @e[tag=dummy,scores={strength=..1}] as @a run kill @e[type=item_display,tag=Strength,tag=Strength2]
execute if entity @e[tag=dummy,scores={strength=..2}] as @a run kill @e[type=item_display,tag=Strength,tag=Strength3]
execute if entity @e[tag=dummy,scores={strength=..3}] as @a run kill @e[type=item_display,tag=Strength,tag=Strength4]
execute if entity @e[tag=dummy,scores={strength=..4}] as @a run kill @e[type=item_display,tag=Strength,tag=Strength5]



execute if entity @e[tag=dummy,scores={strength=2..}] unless entity @e[type=item_display,tag=Strength,tag=Strength2] as @a run summon item_display -5.48250 121.98250 -113.03 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.40f,0.40f,0.40f]},item:{id:"minecraft:iron_sword",Count:1b},Tags:[Strength,Strength2]}
execute if entity @e[tag=dummy,scores={strength=3..}] unless entity @e[type=item_display,tag=Strength,tag=Strength3] as @a run summon item_display -5.48250 122.48250 -113.03 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.40f,0.40f,0.40f]},item:{id:"minecraft:golden_sword",Count:1b},Tags:[Strength,Strength3]}
execute if entity @e[tag=dummy,scores={strength=4..}] unless entity @e[type=item_display,tag=Strength,tag=Strength4] as @a run summon item_display -5.48250 122.98250 -113.03 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.40f,0.40f,0.40f]},item:{id:"minecraft:diamond_sword",Count:1b},Tags:[Strength,Strength4]}
execute if entity @e[tag=dummy,scores={strength=5..}] unless entity @e[type=item_display,tag=Strength,tag=Strength5] as @a run summon item_display -5.48250 123.48250 -113.03 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.40f,0.40f,0.40f]},item:{id:"minecraft:netherite_sword",Count:1b},Tags:[Strength,Strength5]}


execute as @e[type=minecraft:interaction,tag=Strength] run data remove entity @s interaction

