# $(portal) = Tag of portal
# $(notportal) = Tag of other portal
# $(pos) = Relative Tp Position


$execute as @e[type=!text_display,nbt={OnGround:1b},tag=!$(notportal)] at @s if block ~ ~-0.2 ~ gray_glazed_terracotta if entity @n[type=text_display,tag=$(portal),distance=..2] run tag @s add $(portal)
$execute as @e[type=!text_display,tag=$(portal)] run scoreboard players add @s portal_timer 1
$execute as @e[type=!text_display,tag=$(portal)] run effect give @s levitation infinite 110 true
$execute as @e[type=!text_display,tag=$(portal),scores={portal_timer=1}] at @s run tp @s $(pos)


$execute as @e[type=!text_display,tag=$(portal),scores={portal_timer=1}] at @e[tag=$(portal)] run playsound minecraft:block.bubble_column.upwards_inside master @a ~ ~ ~ 1 0.5
$execute as @e[type=!text_display,tag=$(portal),scores={portal_timer=1}] at @e[tag=$(portal)] run playsound minecraft:block.bubble_column.upwards_inside master @a ~ ~ ~ 1 2
$execute as @e[type=!text_display,tag=$(portal),scores={portal_timer=1}] at @e[tag=$(portal)] run playsound minecraft:item.spear.lunge_1 master @a ~ ~ ~ 1 0.5


$execute as @e[type=!text_display,tag=$(portal),scores={portal_timer=5}] run effect clear @s levitation
$execute as @e[type=!text_display,tag=$(portal),scores={portal_timer=5}] run tag @s remove $(portal)
execute as @e[scores={portal_timer=5}] run scoreboard players reset @s portal_timer


