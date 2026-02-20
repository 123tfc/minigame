

#$(x1) = Map x1
#$(x2) = Map x2
#$(dx) = x2 - x1
#$(z1) = Map z1
#$(z2) = Map z2
#$(dz) = z2 - z1
#$(y) = Minimum value for respawn location
#$(dy)

$execute unless entity @e[tag=randomtp] run summon armor_stand $(x1) 39 $(z1) {Tags:[randomtp,randomtp],NoGravity:1,Silent:1,Marker:1,Invisible:1}
$execute as @e[tag=randomtp] store result entity @s Pos[0] double 1 run random value $(x1)..$(x2)
$execute as @e[tag=randomtp] store result entity @s Pos[2] double 1 run random value $(z1)..$(z2)
execute as @e[tag=randomtp] at @s positioned over world_surface run tp ~ ~ ~

$execute as @e[tag=randomtp] unless entity @s[x=$(x1),dx=$(dx),z=$(z1),dz=$(dz),y=$(y),dy=10] run function m:game/macros/respawntp_macro {x1:$(x1),x2:$(x2),dx:$(dx),z1:$(z1),z2:$(z2),dz:$(dz),y:$(y),dy:$(dy)}
$execute as @e[tag=randomtp] if entity @s[x=$(x1),dx=$(dx),z=$(z1),dz=$(dz),y=$(y),dy=$(dy)] at @s run tp @a[gamemode=spectator,scores={respawncooldown=101},limit=1,sort=random] @s
execute as @e[tag=randomtp] at @s as @a[gamemode=spectator,distance=..1] if entity @s run gamemode adventure @s

execute as @e[tag=randomtp] run kill @s



# Plains: {x1:"-272",x2:"-134",dx:"138",z1:"-859",z2:"-721",dz:"138",y:"104",dy:"10"}
# Winter: {x1:"874",x2:"1002",dx:"125",z1:"-856",z2:"-744",dz:"116",y:"102",dy:"4"}
# Nether: {x1:"4347",x2:"4441",dx:"94",z1:"-814",z2:"-721",dz:"93",y:"99",dy:"10"}