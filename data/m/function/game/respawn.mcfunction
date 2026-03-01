execute as @a store result score @s ylevel run data get entity @s Pos[1]





execute as @a if score @s ylevel matches ..0 run scoreboard players set @s respawncooldown 1
execute as @a[tag=!victory,gamemode=!spectator] if score @s respawncooldown matches 1.. run gamemode spectator @s

execute as @a store result score @s hit_uuid on attacker run data get entity @s UUID[0]
execute as @a if score @s ylevel matches ..0 run tag @s add just_died
execute as @a if score @s uuid = @p[tag=just_died] hit_uuid run tag @s add just_killed
execute as @a[tag=just_killed] run scoreboard players operation @s player_hurt_level *= #multiply70 calc
execute as @a[tag=just_killed] run scoreboard players operation @s player_hurt_level /= #division100 calc
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 1 unless score @s health matches 2 unless entity @s[scores={hit_uuid=0}] run tellraw @a [{"selector":"@s[tag=just_died]"},{"text":" was knocked out by ","color":"white"},{"selector":"@p[tag=just_killed]"}]
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 1 if score @s health matches 2 unless entity @s[scores={hit_uuid=0}] run tellraw @a [{"selector":"@s[tag=just_died]"},{"text":" was knocked out by ","color":"white"},{"selector":"@p[tag=just_killed]"},{"text":" FINAL KILL!","bold":true,"color":"red"}]
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 1 unless score @s health matches 2 if entity @s[scores={hit_uuid=0}] run tellraw @a [{"selector":"@s[tag=just_died]"},{"text":" fell into void","color":"white"}]
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 1 if score @s health matches 2 if entity @s[scores={hit_uuid=0}] run tellraw @a [{"selector":"@s[tag=just_died]"},{"text":" fell into void","color":"white"},{"text":" FINAL KILL!","bold":true,"color":"red"}]
execute as @a[tag=just_died] run tag @s remove just_died
execute as @a[tag=just_killed] run tag @s remove just_killed


execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 1..100 run scoreboard players add @s respawncooldown 1
execute as @a[tag=victory,tag=alive,gamemode=adventure] if score @s respawncooldown matches 1 run scoreboard players add @s respawncooldown 1
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 if score @e[tag=dummy,limit=1] MapSwitch matches 1 run tp @s -197.50 164.00 -786.50 facing -197.50 163.00 -786.50
execute as @a[tag=victory,tag=alive,gamemode=adventure] if score @s respawncooldown matches 2 if score @e[tag=dummy,limit=1] MapSwitch matches 1 run tp @s -197.50 164.00 -786.50 facing -197.50 163.00 -786.50
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 if score @e[tag=dummy,limit=1] MapSwitch matches 2 run tp @s 944.5 140 -801.5 facing 944.5 139 -801.5
execute as @a[tag=victory,tag=alive,gamemode=adventure] if score @s respawncooldown matches 2 if score @e[tag=dummy,limit=1] MapSwitch matches 2 run tp @s 944.5 140 -801.5 facing 944.5 139 -801.5
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 if score @e[tag=dummy,limit=1] MapSwitch matches 3 run tp @s 4372.5 150 -803.5 facing 4372.5 149 -803.5
execute as @a[tag=victory,tag=alive,gamemode=adventure] if score @s respawncooldown matches 2 if score @e[tag=dummy,limit=1] MapSwitch matches 3 run tp @s 4372.5 150 -803.5 facing 4372.5 149 -803.5
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 if score @s health matches 2 run tag @s add dead
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 if score @s health matches 2 run tag @s remove alive
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 if score @s health matches 4 run attribute @s minecraft:max_health base set 2
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 if score @s health matches 6 run attribute @s minecraft:max_health base set 4
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 if score @s health matches 8 run attribute @s minecraft:max_health base set 6
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 if score @s health matches 10 run attribute @s minecraft:max_health base set 8
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 run effect clear @s
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 run title @s title {"text":"YOU ARE DEAD","color":"red"}
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 2 run title @a subtitle [{"text":"You'll respawn in","color":"yellow"},{"text":" 5","color":"green","bold":true}]
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 21 run title @s title {"text":"YOU ARE DEAD","color":"red"}
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 21 run title @a subtitle [{"text":"You'll respawn in","color":"yellow"},{"text":" 4","color":"green","bold":true}]
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 41 run title @s title {"text":"YOU ARE DEAD","color":"red"}
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 41 run title @a subtitle [{"text":"You'll respawn in","color":"yellow"},{"text":" 3","color":"green","bold":true}]
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 61 run title @s title {"text":"YOU ARE DEAD","color":"red"}
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 61 run title @a subtitle [{"text":"You'll respawn in","color":"yellow"},{"text":" 2","color":"green","bold":true}]
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 81 run title @s title {"text":"YOU ARE DEAD","color":"red"}
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 81 run title @a subtitle [{"text":"You'll respawn in","color":"yellow"},{"text":" 1","color":"green","bold":true}]
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 100 run title @s title ""
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 100 run title @a subtitle ""
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 100 run clear @s blaze_rod
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 100 run clear @s knowledge_book
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 100 run give @s arrow 5
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 100 run attribute @s minecraft:scale base set 1
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 100 run scoreboard players set @s player_hurt_level 0
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 100 run scoreboard players set #division10 player_hurt_level 10
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 100 run scoreboard players set @s hit_uuid 0
execute as @a[tag=!victory,tag=alive,gamemode=spectator] if score @s respawncooldown matches 100 run effect give @a minecraft:instant_health 1 10 true
execute as @a[tag=alive,gamemode=spectator] if score @s respawncooldown matches 101 if score @e[tag=dummy,limit=1] MapSwitch matches 1 run function m:game/macros/respawntp_macro {x1:"-272",x2:"-134",dx:"138",z1:"-859",z2:"-721",dz:"138",y:"104",dy:"10"}
execute as @a[tag=alive,gamemode=spectator] if score @s respawncooldown matches 101 if score @e[tag=dummy,limit=1] MapSwitch matches 2 run function m:game/macros/respawntp_macro {x1:"874",x2:"1002",dx:"125",z1:"-856",z2:"-744",dz:"116",y:"102",dy:"4"}
execute as @a[tag=alive,gamemode=spectator] if score @s respawncooldown matches 101 if score @e[tag=dummy,limit=1] MapSwitch matches 3 run function m:game/macros/respawntp_macro {x1:"4347",x2:"4441",dx:"94",z1:"-814",z2:"-721",dz:"93",y:"99",dy:"10"}
execute as @a[tag=!victory,tag=alive,gamemode=adventure] if score @s respawncooldown matches 101 run scoreboard players reset @s respawncooldown
execute as @a[tag=victory,tag=alive,gamemode=adventure] if score @s respawncooldown matches 2 run scoreboard players reset @s respawncooldown



execute as @a[tag=dead] run gamemode spectator

execute if score @e[tag=dummy,limit=1] MapSwitch matches 1 as @a[gamemode=spectator] unless entity @s[x=-323,dx=241,z=-910,dz=240,y=0,dy=241] run tp @s -197.50 164.00 -786.50 facing -197.50 163.00 -786.50
execute if score @e[tag=dummy,limit=1] MapSwitch matches 2 as @a[gamemode=spectator] unless entity @s[x=824,dx=225,y=0,dy=300,z=-910,dz=241] run tp @s 944.5 140 -801.5 facing 944.5 139 -801.5
execute if score @e[tag=dummy,limit=1] MapSwitch matches 3 as @a[gamemode=spectator] unless entity @s[x=4253,dx=241,y=0,dy=300,z=-910,dz=241] run tp @s 4372.5 150 -803.5 facing 4372.5 149 -803.5

