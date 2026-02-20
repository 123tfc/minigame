# scoreboard objectives add levitation dummy

execute at @e[type=minecraft:interaction,tag=jump_pad] positioned ~-0.7 ~ ~-0.7 as @e[type=!minecraft:interaction,type=!minecraft:block_display,type=!minecraft:item_display,type=!minecraft:text_display,dx=0.4,dz=0.4,dy=0.5,nbt={OnGround:1b}] unless entity @e[scores={levitation=0..}] run scoreboard players set @s levitation 0
execute as @e[scores={levitation=0}] run effect give @s levitation infinite 130 true
execute as @e[scores={levitation=3..}] run effect clear @s levitation
execute as @e[scores={levitation=3..}] run scoreboard players reset @s levitation
execute as @e[scores={levitation=0..}] run scoreboard players add @s levitation 1

execute at @e[tag=jump_pad] run particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0 4

execute at @e[type=minecraft:interaction,tag=jump_pad] positioned ~-0.7 ~ ~-0.7 as @e[type=!item,type=!minecraft:interaction,type=!minecraft:block_display,type=!minecraft:item_display,type=!minecraft:text_display,dx=0.4,dz=0.4,dy=0.5,nbt={OnGround:1b}] run playsound minecraft:block.note_block.bit master @a ~ ~2 ~ 1 0.5
execute at @e[type=minecraft:interaction,tag=jump_pad] positioned ~-0.7 ~ ~-0.7 as @e[type=!item,type=!minecraft:interaction,type=!minecraft:block_display,type=!minecraft:item_display,type=!minecraft:text_display,dx=0.4,dz=0.4,dy=0.5,nbt={OnGround:1b}] run playsound minecraft:entity.player.levelup master @a ~ ~2 ~ 1 2
execute at @e[type=minecraft:interaction,tag=jump_pad] positioned ~-0.7 ~ ~-0.7 as @e[type=!item,type=!minecraft:interaction,type=!minecraft:block_display,type=!minecraft:item_display,type=!minecraft:text_display,dx=0.4,dz=0.4,dy=0.5,nbt={OnGround:1b}] run playsound minecraft:block.note_block.bit master @a ~ ~2 ~ 1 1