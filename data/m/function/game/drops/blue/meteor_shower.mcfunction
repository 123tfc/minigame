# scoreboard objectives add meteor dummy
# scoreboard players set #modulus2 meteor 2

execute as @e[tag=dummy] if score @s meteor matches 0.. run scoreboard players add @e[tag=dummy] meteor 1
execute as @e[tag=dummy] if score @s meteor matches 600 run tellraw @a [{"text":"Meteor Shower Has Stopped ","bold":true,"color":"#dd677a"},{"text":"The Skies Are Clear Again","color":"#bb2d43","italic":true,"bold":false}]
execute as @e[tag=dummy] if score @s meteor matches 600 run scoreboard players set @e[tag=dummy] meteor -1

scoreboard players operation @e[tag=dummy2] meteor = @e[tag=dummy] meteor
scoreboard players operation @e[tag=dummy2] meteor %= #modulus2 meteor

execute if score @e[tag=dummy,limit=1] MapSwitch matches 1 if score @n[tag=dummy2] meteor matches 0 run summon minecraft:fireball -272 170 -859 {Motion:[0.0,-1.0,0.0],Tags:[temp_meteor],ExplosionPower:2b}
execute if score @e[tag=dummy,limit=1] MapSwitch matches 2 if score @n[tag=dummy2] meteor matches 0 run summon minecraft:fireball 874 170 -856 {Motion:[0.0,-1.0,0.0],Tags:[temp_meteor],ExplosionPower:2b}

execute if score @e[tag=dummy,limit=1] MapSwitch matches 1 as @e[tag=temp_meteor] store result entity @s Pos[0] double 1 run random value -272..-134
execute if score @e[tag=dummy,limit=1] MapSwitch matches 1 as @e[tag=temp_meteor] store result entity @s Pos[2] double 1 run random value -859..-721
execute if score @e[tag=dummy,limit=1] MapSwitch matches 2 as @e[tag=temp_meteor] store result entity @s Pos[0] double 1 run random value 874..1002
execute if score @e[tag=dummy,limit=1] MapSwitch matches 2 as @e[tag=temp_meteor] store result entity @s Pos[2] double 1 run random value -856..-744
execute as @e[tag=temp_meteor] run data modify entity @s Tags set value [meteor]

execute if score @e[tag=dummy,limit=1] MapSwitch matches 1 as @e[type=fireball,tag=meteor] unless entity @s[x=-323,dx=240,z=-910,dz=240,y=0,dy=300] run kill @s
execute if score @e[tag=dummy,limit=1] MapSwitch matches 2 as @e[type=fireball,tag=meteor] unless entity @s[x=874,dx=125,y=0,dy=300,z=-856,dz=116] run kill @s