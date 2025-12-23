# scoreboard objectives add horsies dummy

execute as @e[tag=dummy] if score @s horsies matches 0.. run scoreboard players add @e[tag=dummy] horsies 1
execute as @e[tag=dummy] if score @s horsies matches 600 run tellraw @a [{"text":"Ahh Mannn! ","bold":true,"color":"#85eb81"},{"text":"No More Horsies...","color":"#659979","italic":true,"bold":false}]
execute as @e[tag=dummy] if score @s horsies matches 600 run kill @e[tag=horsie]
execute as @e[tag=dummy] if score @s horsies matches 600 run scoreboard players set @e[tag=dummy] horsies -1

execute as @e[type=item,nbt={Item:{id:"minecraft:saddle"}}] if entity @s run kill @s

