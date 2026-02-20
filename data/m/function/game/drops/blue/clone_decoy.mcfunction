# scoreboard objectives add mq_timer dummy
execute as @e[type=mannequin,tag=decoy_mq] run scoreboard players add @s mq_timer 1



# execute as @e[type=mannequin,scores={mq_timer=1..}] run
execute as @e[type=mannequin,tag=decoy_mq,scores={mq_timer=100..}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.2 1.5
execute as @e[type=mannequin,tag=decoy_mq,scores={mq_timer=100..}] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.5 1
execute as @e[type=mannequin,tag=decoy_mq,scores={mq_timer=100..}] at @s run particle minecraft:white_smoke ~ ~1 ~ 0 0 0 0.1 200
execute as @e[type=mannequin,tag=decoy_mq,scores={mq_timer=100..}] at @s run tp @s ~ ~10000 ~
execute as @e[type=mannequin,tag=decoy_mq,scores={mq_timer=100..}] run kill @s


execute as @e[type=minecraft:mannequin,tag=decoy_mq,sort=random,tag=right_mq] at @s run tp @s ~ ~ ~ facing ^-0.1 ^ ^1
execute as @e[type=minecraft:mannequin,tag=decoy_mq,sort=random,tag=left_mq] at @s run tp @s ~ ~ ~ facing ^0.1 ^ ^1
execute as @e[type=minecraft:mannequin,tag=decoy_mq,sort=random] at @s run tp @s ~ ~ ~ facing ^-0.1 ^ ^1
execute as @e[type=minecraft:mannequin,tag=decoy_mq,sort=random] at @s run tp @s ~ ~ ~ facing ^0.1 ^ ^1

function m:game/drops/blue/clone_decoy_walk
function m:game/drops/blue/clone_decoy_walk
function m:game/drops/blue/clone_decoy_walk
function m:game/drops/blue/clone_decoy_walk
function m:game/drops/blue/clone_decoy_walk
function m:game/drops/blue/clone_decoy_walk
function m:game/drops/blue/clone_decoy_walk
function m:game/drops/blue/clone_decoy_walk
execute as @e[type=minecraft:mannequin,tag=decoy_mq] run data modify entity @s Motion[1] set value -0.5

