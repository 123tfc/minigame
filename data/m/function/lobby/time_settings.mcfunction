
execute as @e[type=interaction,tag=Time1] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] time matches 1 run playsound minecraft:block.note_block.basedrum master @a -7.5 123.5 -114.0 1 0.5
execute as @e[type=interaction,tag=Time2] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] time matches 2 run playsound minecraft:block.note_block.basedrum master @a -7.5 123.5 -114.0 1 0.875
execute as @e[type=interaction,tag=Time3] if data entity @s interaction on target unless score @e[tag=dummy,limit=1] time matches 3 run playsound minecraft:block.note_block.basedrum master @a -7.5 123.5 -114.0 1 1.25

execute as @e[type=interaction,tag=Time1] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] time 1
execute as @e[type=interaction,tag=Time2] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] time 2
execute as @e[type=interaction,tag=Time3] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] time 3

execute if score @e[tag=dummy,limit=1] time matches 1 as @a run time set 18000
execute if score @e[tag=dummy,limit=1] time matches 2 as @a run time set 13000
execute if score @e[tag=dummy,limit=1] time matches 3 as @a run time set 6000


execute if entity @e[tag=dummy,scores={time=1}] as @a run kill @e[type=block_display,tag=Time,tag=!Time1,nbt=!{block_state:{Name:"minecraft:dark_oak_planks"}}]
execute if entity @e[tag=dummy,scores={time=2}] as @a run kill @e[type=block_display,tag=Time,tag=!Time2,nbt=!{block_state:{Name:"minecraft:dark_oak_planks"}}]
execute if entity @e[tag=dummy,scores={time=3}] as @a run kill @e[type=block_display,tag=Time,tag=!Time3,nbt=!{block_state:{Name:"minecraft:dark_oak_planks"}}]

execute if entity @e[tag=dummy,scores={time=1}] unless entity @e[type=block_display,tag=Time,tag=Time1] as @a run summon block_display -7.8 121.3 -114.2 {Tags:[Time,Time1],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:sculk"}}
execute if entity @e[tag=dummy,scores={time=2}] unless entity @e[type=block_display,tag=Time,tag=Time2] as @a run summon block_display -7.8 122.2 -114.2 {Tags:[Time,Time2],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:shroomlight"}}
execute if entity @e[tag=dummy,scores={time=3}] unless entity @e[type=block_display,tag=Time,tag=Time3] as @a run summon block_display -7.8 123.1 -114.2 {Tags:[Time,Time3],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:ochre_froglight",Properties:{axis:z}}}

execute as @e[type=minecraft:interaction,tag=Time] run data remove entity @s interaction
