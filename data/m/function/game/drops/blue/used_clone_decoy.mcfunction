# Clone Decoy
advancement revoke @s only m:powerups/clone_decoy
#Add Playsound Effect Here

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 2
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 0.5

tag @s add temp_mq

summon minecraft:mannequin ~ ~ ~ {Motion:[0.0d,0.2d,0.01d],Tags:[temp_mq,decoy_mq],Rotation:[70.0,0.0]}
summon minecraft:mannequin ~ ~ ~ {Motion:[0.01d,0.2d,0.0d],Tags:[temp_mq,decoy_mq],Rotation:[20.0,0.0]}
summon minecraft:mannequin ~ ~ ~ {Motion:[0.0d,0.2d,-0.01d],Tags:[temp_mq,decoy_mq],Rotation:[160.0,0.0]}
summon minecraft:mannequin ~ ~ ~ {Motion:[-0.01d,0.2d,0.0d],Tags:[temp_mq,decoy_mq],Rotation:[180.0,0.0]}

summon minecraft:mannequin ~ ~ ~ {Motion:[0.01d,0.2d,0.01d],Tags:[temp_mq,decoy_mq],Rotation:[260.0,0.0]}
summon minecraft:mannequin ~ ~ ~ {Motion:[0.01d,0.2d,-0.01d],Tags:[temp_mq,decoy_mq],Rotation:[20.0,0.0]}
summon minecraft:mannequin ~ ~ ~ {Motion:[-0.01d,0.2d,-0.01d],Tags:[temp_mq,decoy_mq],Rotation:[100.0,0.0]}
summon minecraft:mannequin ~ ~ ~ {Motion:[-0.01d,0.2d,0.01d],Tags:[temp_mq,decoy_mq],Rotation:[90.0,0.0]}
summon minecraft:mannequin ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Tags:[temp_mq,decoy_mq],Rotation:[140.0,0.0]}

execute as @e[type=minecraft:mannequin,tag=temp_mq] run attribute @s minecraft:knockback_resistance base set 0.9
execute as @e[type=minecraft:mannequin,tag=temp_mq] run attribute @s minecraft:step_height base set 1

execute as @e[type=minecraft:mannequin,tag=temp_mq] run data modify entity @s profile.id set from entity @p[tag=temp_mq] UUID
execute as @e[type=minecraft:mannequin,tag=temp_mq] run data modify entity @s equipment.head set from entity @p[tag=temp_mq] equipment.head
execute as @e[type=minecraft:mannequin,tag=temp_mq] run data modify entity @s equipment.chest set from entity @p[tag=temp_mq] equipment.chest
execute as @e[type=minecraft:mannequin,tag=temp_mq] run data modify entity @s equipment.legs set from entity @p[tag=temp_mq] equipment.legs
execute as @e[type=minecraft:mannequin,tag=temp_mq] run data modify entity @s equipment.feet set from entity @p[tag=temp_mq] equipment.feet
execute as @e[type=minecraft:mannequin,tag=temp_mq] run data modify entity @s equipment.offhand set from entity @p[tag=temp_mq] equipment.offhand
execute as @e[type=minecraft:mannequin,tag=temp_mq] run data modify entity @s equipment.mainhand set value {id:"stick",count:1,components:{enchantment_glint_override:true}}

execute as @e[type=mannequin,tag=temp_mq,tag=!right_mq,tag=!left_mq,limit=3] run tag @s add right_mq 
execute as @e[type=mannequin,tag=temp_mq,tag=!right_mq,tag=!left_mq,limit=3] run tag @s add left_mq 

tag @e[tag=temp_mq] remove temp_mq

execute if entity @s[nbt={equipment:{offhand:{id: "minecraft:armor_stand", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:armor_stand",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:armor_stand",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air

effect give @s invisibility 2 0 true
item replace entity @s armor.head with air
execute unless entity @p[nbt={equipment:{chest:{id:"minecraft:elytra"}}}] run item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
