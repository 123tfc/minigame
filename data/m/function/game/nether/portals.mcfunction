# # execute as @e[tag=portal,tag=red_1] at @s positioned ~-1 ~-1.4 ~-1 as @e[type=!text_display,type=!item,dx=1,dy=0,dz=1,nbt={OnGround:1b}] run tag @s add tp_red_1
# # execute as @e[tag=portal,tag=red_1] at @s positioned ~-1 ~-1.4 ~-1 as @e[type=!text_display,type=!item,dx=1,dy=0,dz=1,nbt={OnGround:1b}] run tag @s add tp_red_1
# execute as @a[nbt={OnGround:1b}] at @s if block ~ ~-0.2 ~ gray_glazed_terracotta if entity @n[type=text_display,tag=red_1,distance=..2] run tag @s add tp_red_1
# execute as @e[tag=tp_red_1] run scoreboard players add @s portal_timer 1
# execute as @e[tag=tp_red_1] run effect give @s levitation infinite 110 true
# execute as @e[tag=tp_red_1,scores={portal_timer=1}] at @s run tp @s ~7 ~ ~
# # execute as @e[tag=tp_red_1,scores={portal_timer=1}] run attribute @s minecraft:gravity base set -0.75
# execute as @e[tag=tp_red_1,scores={portal_timer=5}] run effect clear @s levitation
# execute as @e[tag=tp_red_1,scores={portal_timer=5}] run tag @s remove tp_red_1
# execute as @e[scores={portal_timer=5}] run scoreboard players reset @s portal_timer

# # execute as @e[tag=portal] at @s positioned ~-1 ~-1.5 ~-1 as @a[dx=1,dy=0,dz=1] run tp @s ~ ~5 ~

function m:game/nether/portals_macro {portal:"blue_1",notportal:"blue_2",pos:"~-70 ~23 ~36"}
function m:game/nether/portals_macro {portal:"blue_2",notportal:"blue_1",pos:"~70 ~-23 ~-36"}

function m:game/nether/portals_macro {portal:"red_1",notportal:"red_2",pos:"~38 ~12 ~-37"}
function m:game/nether/portals_macro {portal:"red_2",notportal:"red_1",pos:"~-38 ~-12 ~37"}

function m:game/nether/portals_macro {portal:"green_1",notportal:"green_2",pos:"~59 ~8 ~76"}
function m:game/nether/portals_macro {portal:"green_2",notportal:"green_1",pos:"~-59 ~-8 ~-76"}

function m:game/nether/portals_macro {portal:"purple_1",notportal:"purple_2",pos:"~-102 ~-3 ~-21"}
function m:game/nether/portals_macro {portal:"purple_2",notportal:"purple_1",pos:"~102 ~3 ~21"}