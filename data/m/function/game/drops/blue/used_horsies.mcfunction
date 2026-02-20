#summon item ~ ~ ~ {Item:{id:"minecraft:lead",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Horsies For All","color":"#85eb81"}',"minecraft:consumable":{},"minecraft:food":{nutrition:0,saturation:0.0f,can_always_eat:true}}}}
#give @s minecraft:lead[minecraft:food={nutrition:0.0,saturation:0.0}]



execute at @a run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1 0.5
advancement revoke @s only m:powerups/horsies

tellraw @a [{"text":"Yeehaaar! ","bold":true,"color":"#85eb81"},{"text":"Feels Like a Wild Western!","color":"#659979","italic":true,"bold":false}]

execute as @a[gamemode=!spectator] at @s run summon horse ~ ~ ~ {Tame:1,equipment:{saddle:{id:"minecraft:saddle",count:1}},attributes:[{id:max_health,base:20f},{id:knockback_resistance,base:1f}],Tags:[horsie]}
execute as @a at @s rotated as @s run tp @n[type=horse] ~ ~ ~ ~ ~
execute as @a[gamemode=!spectator] at @s run ride @s mount @n[tag=horsie]

scoreboard players set @e[tag=dummy] horsies 0


execute if entity @s[nbt={equipment:{offhand:{id: "minecraft:lead", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:lead",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:lead",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
