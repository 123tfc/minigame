# scoreboard objectives add meteor dummy
# scoreboard players set #modulus2 meteor 2
# scoreboard players set #modulus40 meteor 40

execute as @e[tag=dummy] if score @s meteor matches 0.. run scoreboard players add @e[tag=dummy] meteor 1
execute as @e[tag=dummy] if score @s meteor matches 600 run tellraw @a [{"text":"Meteor Shower Has Stopped ","bold":true,"color":"#dd677a"},{"text":"The Skies Are Clear Again","color":"#bb2d43","italic":true,"bold":false}]
execute as @e[tag=dummy] if score @s meteor matches 600 run scoreboard players set @e[tag=dummy] meteor -1

scoreboard players operation @e[tag=dummy2] meteor = @e[tag=dummy] meteor
scoreboard players operation @e[tag=dummy2] meteor %= #modulus2 meteor

$execute if score @n[tag=dummy2] meteor matches 0 run summon minecraft:fireball $(x1) $(y) $(z1) {Motion:[0.0,-1.0,0.0],Tags:[temp_meteor],ExplosionPower:2b}

$execute as @e[tag=temp_meteor] store result entity @s Pos[0] double 1 run random value $(x1)..$(x2)
$execute as @e[tag=temp_meteor] store result entity @s Pos[2] double 1 run random value $(z1)..$(z2)

execute as @e[tag=temp_meteor] run data modify entity @s Tags set value [meteor]

scoreboard players operation @e[tag=dummy2] meteor = @e[tag=dummy] meteor
scoreboard players operation @e[tag=dummy2] meteor %= #modulus40 meteor


$execute if score @n[tag=dummy2] meteor matches 0 as @r[gamemode=adventure] at @s positioned ~ $(y) ~ run summon minecraft:fireball ~ ~ ~ {Motion:[0.0,-1.0,0.0],Tags:[meteor],ExplosionPower:2b}

$execute as @e[type=fireball,tag=meteor] unless entity @s[x=$(x1),dx=$(dx),z=$(z1),dz=$(dz),y=0,dy=300] run kill @s


# Plains: {x1:"-272",x2:"-134",dx:"138",z1:"-859",z2:"-721",dz:"138",y:"170"}
# Winter: {x1:"874",x2:"1002",dx:"125",z1:"-856",z2:"-744",dz:"116",y:"170"}
# Nether: {x1:"4347",x2:"4441",dx:"94",z1:"-814",z2:"-721",dz:"93",y:"180}