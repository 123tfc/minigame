#scoreboard objectives add lives dummy "Number Of Lives"


execute as @e[type=interaction,tag=Lives1] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] lives matches 1 run playsound minecraft:block.slime_block.step master @a -3.5 123.5 -112.0 1 0.5
execute as @e[type=interaction,tag=Lives2] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] lives matches 2 run playsound minecraft:block.slime_block.step master @a -3.5 123.5 -112.0 1 0.875
execute as @e[type=interaction,tag=Lives3] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] lives matches 3 run playsound minecraft:block.slime_block.step master @a -3.5 123.5 -112.0 1 1.25
execute as @e[type=interaction,tag=Lives4] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] lives matches 4 run playsound minecraft:block.slime_block.step master @a -3.5 123.5 -112.0 1 1.625
execute as @e[type=interaction,tag=Lives5] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] lives matches 5 run playsound minecraft:block.slime_block.step master @a -3.5 123.5 -112.0 1 2

execute as @e[type=interaction,tag=Lives1] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] lives 1
execute as @e[type=interaction,tag=Lives2] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] lives 2
execute as @e[type=interaction,tag=Lives3] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] lives 3
execute as @e[type=interaction,tag=Lives4] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] lives 4
execute as @e[type=interaction,tag=Lives5] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] lives 5



execute if score @e[tag=dummy,limit=1] lives matches 1 as @a run attribute @s minecraft:max_health base set 2
execute if score @e[tag=dummy,limit=1] lives matches 2 as @a run attribute @s minecraft:max_health base set 4
execute if score @e[tag=dummy,limit=1] lives matches 3 as @a run attribute @s minecraft:max_health base set 6
execute if score @e[tag=dummy,limit=1] lives matches 4 as @a run attribute @s minecraft:max_health base set 8
execute if score @e[tag=dummy,limit=1] lives matches 5 as @a run attribute @s minecraft:max_health base set 10



execute if entity @e[tag=dummy,scores={lives=..1}] as @a run kill @e[type=block_display,tag=Lives,nbt={block_state:{Name:"minecraft:cherry_stairs"}},tag=Lives2]
execute if entity @e[tag=dummy,scores={lives=..2}] as @a run kill @e[type=block_display,tag=Lives,nbt={block_state:{Name:"minecraft:cherry_stairs"}},tag=Lives3]
execute if entity @e[tag=dummy,scores={lives=..3}] as @a run kill @e[type=block_display,tag=Lives,nbt={block_state:{Name:"minecraft:cherry_stairs"}},tag=Lives4]
execute if entity @e[tag=dummy,scores={lives=..4}] as @a run kill @e[type=block_display,tag=Lives,nbt={block_state:{Name:"minecraft:cherry_stairs"}},tag=Lives5]



execute if entity @e[tag=dummy,scores={lives=2..}] unless entity @e[type=block_display,tag=Lives,tag=Lives2] as @a run summon block_display -3.5 121.785 -112.15 {Tags:[Lives,Lives2],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:cherry_stairs"},Rotation:[90f,-45f]}
execute if entity @e[tag=dummy,scores={lives=3..}] unless entity @e[type=block_display,tag=Lives,tag=Lives3] as @a run summon block_display -3.5 122.285 -112.15 {Tags:[Lives,Lives3],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:cherry_stairs"},Rotation:[90f,-45f]}
execute if entity @e[tag=dummy,scores={lives=4..}] unless entity @e[type=block_display,tag=Lives,tag=Lives4] as @a run summon block_display -3.5 122.785 -112.15 {Tags:[Lives,Lives4],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:cherry_stairs"},Rotation:[90f,-45f]}
execute if entity @e[tag=dummy,scores={lives=5..}] unless entity @e[type=block_display,tag=Lives,tag=Lives5] as @a run summon block_display -3.5 123.285 -112.15 {Tags:[Lives,Lives5],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:cherry_stairs"},Rotation:[90f,-45f]}


# execute as @e[type=interaction,tag=Lives] if data entity @s interaction on target run effect give @a minecraft:instant_health 1 10 true

execute as @e[type=minecraft:interaction,tag=Lives] run data remove entity @s interaction

