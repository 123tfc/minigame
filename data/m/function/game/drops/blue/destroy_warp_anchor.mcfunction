# scoreboard objectives add destroy_warp_anchor dummy







execute as @e[tag=warp_anchor_point] at @s positioned ~0.375 ~-0.5 ~0.375 if entity @a[distance=..0.3,gamemode=!spectator,tag=sneaking] run tag @s add destroy_warp_anchor_point

execute as @e[tag=destroy_warp_anchor_point] run scoreboard players add @s destroy_warp_anchor 1





execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 10 at @s positioned ~0.375 ~-0.5 ~0.375 run playsound minecraft:block.glass.break block @a ~ ~ ~ 0.5 0.5
execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 20 at @s positioned ~0.375 ~-0.5 ~0.375 run playsound minecraft:block.glass.break block @a ~ ~ ~ 0.5 0.6
execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 30 at @s positioned ~0.375 ~-0.5 ~0.375 run playsound minecraft:block.glass.break block @a ~ ~ ~ 0.5 0.7
execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 40 at @s positioned ~0.375 ~-0.5 ~0.375 run playsound minecraft:block.glass.break block @a ~ ~ ~ 0.5 0.8
execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 50 at @s positioned ~0.375 ~-0.5 ~0.375 run playsound minecraft:block.glass.break block @a ~ ~ ~ 0.5 0.9
execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 60 at @s positioned ~0.375 ~-0.5 ~0.375 run playsound minecraft:block.glass.break block @a ~ ~ ~ 0.5 1.0
execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 60 at @s positioned ~0.375 ~-0.5 ~0.375 run playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1 0.5
execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 60 at @s positioned ~0.375 ~-0.5 ~0.375 run particle block{block_state:"minecraft:lime_stained_glass"} ~ ~1 ~ 0.5 1 0.5 5 100 normal
execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 60 at @s positioned ~0.375 ~-0.5 ~0.375 run particle block{block_state:"minecraft:sculk_shrieker"} ~ ~1 ~ 0.5 1 0.5 5 100 normal
execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 60 at @s positioned ~0.375 ~-0.5 ~0.375 run particle block{block_state:"minecraft:dragon_egg"} ~ ~1 ~ 0.5 1 0.5 5 100 normal
execute as @e[tag=destroy_warp_anchor_point] if score @s destroy_warp_anchor matches 60 at @s align xyz positioned ~-0.1 ~-0.1 ~-0.1 as @e[tag=warp_anchor,dx=0,dy=0,dz=0] run kill @s


execute as @e[tag=destroy_warp_anchor_point] at @s positioned ~0.375 ~-0.5 ~0.375 unless entity @a[distance=..0.3,gamemode=!spectator,tag=sneaking] run tag @s remove destroy_warp_anchor_point
execute as @e[tag=warp_anchor_point,scores={destroy_warp_anchor=1..}] unless entity @s[tag=destroy_warp_anchor_point] run scoreboard players reset @s destroy_warp_anchor