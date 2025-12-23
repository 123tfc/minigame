execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade] if entity @s[nbt={OnGround:1b}] at @s run data modify entity @s Tags set value [pufferfish_grenade_boom]
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade] at @s unless block ~0.36 ~ ~ #m:non_solids run data modify entity @s Tags set value [pufferfish_grenade_boom]
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade] at @s unless block ~-0.36 ~ ~ #m:non_solids run data modify entity @s Tags set value [pufferfish_grenade_boom]
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade] at @s unless block ~ ~ ~0.36 #m:non_solids run data modify entity @s Tags set value [pufferfish_grenade_boom]
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade] at @s unless block ~ ~ ~-0.36 #m:non_solids run data modify entity @s Tags set value [pufferfish_grenade_boom]
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade] at @s positioned ~-0.5 ~ ~-0.5 if entity @p[tag=!pufferfish_thrower,dx=0,dz=0,dy=0] run data modify entity @s Tags set value [pufferfish_grenade_boom]
execute as @a at @s unless entity @e[tag=pufferfish_grenade,distance=..2] run tag @s remove pufferfish_thrower

execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade_boom] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:dust,color:[0.094,0.639,0.51],scale:5},Radius:2,RadiusPerTick:0.05,potion_duration_scale:0.25f,Duration:100,potion_contents:{potion:poison,custom_color:1614722,duration:100}}
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade_boom] at @s run effect give @s invisibility 10 0 true
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade_boom] at @s run data modify entity @s Silent set value 1
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade_boom] at @s run playsound minecraft:entity.puffer_fish.sting master @a ~ ~ ~ 1 0.5
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade_boom] at @s run playsound minecraft:entity.puffer_fish.sting master @a ~ ~ ~ 1 1
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade_boom] at @s run tp ~ ~10000 ~
execute as @e[type=minecraft:pufferfish,tag=pufferfish_grenade_boom] at @s run kill @s