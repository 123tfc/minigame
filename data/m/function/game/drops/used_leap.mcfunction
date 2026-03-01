#summon item ~ ~ ~ {Item:{id:"minecraft:feather",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Speed Powerup","color":"#55ee88"}',"minecraft:food":{nutrition:0,saturation:0.0f}}}}
#give @s minecraft:feather[minecraft:food={nutrition:0.0,saturation:0.0}]




advancement revoke @s only m:powerups/leap

tag @s add leap_me

execute as @e[tag=leap_me] run scoreboard players add @s leap 1

execute as @e[tag=leap_me,scores={leap=1}] at @s run summon armor_stand ~ ~ ~ {NoAI:1,Tags:[leap_as],Silent:1b,attributes:[{id:"minecraft:scale",base:0.1}],Invulnerable:1b}
execute as @e[tag=leap_as] run data modify entity @s Rotation[0] set from entity @n[tag=leap_me] Rotation[0]

execute as @e[tag=leap_as] at @s at @n[tag=leap_me,scores={leap=1}] rotated as @s run tp @s ^ ^ ^-0.5
execute as @e[tag=leap_as] run scoreboard players add @s leap 1

execute at @e[tag=leap_as,scores={leap=1}] run summon minecraft:breeze_wind_charge ~ ~0.61 ~ {Motion:[0.0,-1.0,0.0]}
execute at @e[tag=leap_as,scores={leap=1}] run summon minecraft:breeze_wind_charge ~ ~0.61 ~ {Motion:[0.0,-1.0,0.0]}
execute as @e[tag=leap_as,scores={leap=3}] run kill @s

execute as @a[scores={leap=5..}] run tag @s remove leap_me
execute as @a[scores={leap=5..}] run scoreboard players reset @s leap


execute if entity @s[nbt={equipment:{offhand:{id: "minecraft:phantom_membrane", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:phantom_membrane",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:phantom_membrane",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
