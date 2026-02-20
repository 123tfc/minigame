execute as @e[type=mannequin,limit=1,sort=random,tag=decoy_mq] run tag @s add this_mq
execute as @e[type=mannequin,tag=this_mq] at @s facing ^ ^ ^1 positioned 0. 0. 0. positioned ^ ^ ^0.5 positioned ~ 0 ~ run summon marker ~ ~ ~ {Tags:[temp_clone_decoy_marker]}
execute as @e[type=mannequin,tag=this_mq] run data modify entity @s Motion set from entity @n[tag=temp_clone_decoy_marker] Pos
tag @e[tag=this_mq] remove this_mq
kill @e[tag=temp_clone_decoy_marker]

# execute if entity @e[type=mannequin,nbt={Motion:[0.0d,0.0d,0.0d]}] run function m:game/drops/blue/clone_decoy_walk
