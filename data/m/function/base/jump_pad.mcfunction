




execute at @e[tag=jump_pad,type=armor_stand] positioned ~-0.4 ~-0.5 ~-0.4 as @e[type=!armor_stand] unless entity @s[dx=0.8,dz=0.8,dy=0.1] run effect clear @s minecraft:levitation
execute at @e[tag=jump_pad,type=armor_stand] positioned ~-0.4 ~-0.5 ~-0.4 as @e[type=!armor_stand,dx=0.8,dz=0.8,dy=0.1] run effect give @s minecraft:levitation infinite 120 true
execute at @e[tag=jump_pad,type=armor_stand] positioned ~0.5 ~ ~0.5 run particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0 4

execute at @e[tag=jump_pad,type=armor_stand] positioned ~-0.4 ~-0.6 ~-0.4 as @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,gamemode=!spectator,type=!minecraft:block_display,type=!minecraft:item_display,type=!minecraft:text_display] if entity @s[dx=0.8,dz=0.8,dy=0.1] run playsound minecraft:block.note_block.bit master @a ~ ~2 ~ 1 0.5
execute at @e[tag=jump_pad,type=armor_stand] positioned ~-0.4 ~-0.6 ~-0.4 as @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,gamemode=!spectator,type=!minecraft:block_display,type=!minecraft:item_display,type=!minecraft:text_display] if entity @s[dx=0.8,dz=0.8,dy=0.1] run playsound minecraft:entity.player.levelup master @a ~ ~2 ~ 1 2
execute at @e[tag=jump_pad,type=armor_stand] positioned ~-0.4 ~-0.6 ~-0.4 as @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,gamemode=!spectator,type=!minecraft:block_display,type=!minecraft:item_display,type=!minecraft:text_display] if entity @s[dx=0.8,dz=0.8,dy=0.1] run playsound minecraft:block.note_block.bit master @a ~ ~2 ~ 1 1