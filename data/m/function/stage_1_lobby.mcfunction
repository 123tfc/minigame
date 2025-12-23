function m:lobby/lives_settings
function m:lobby/strength_settings
function m:lobby/time_settings
function m:lobby/map_switch
function m:teams/join_teams
function m:lobby/start_button
execute as @a if entity @s[x=-10,dx=20,z=-130,dz=20,y=120,dy=20] run tag @s add alive
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",components:{"minecraft:recipes":["m:guidebook"],"minecraft:custom_name":{"color":"#55EE88","text":"KnockBlock Guidebook","italic":0b}}}]}] run give @s minecraft:knowledge_book[recipes=["m:guidebook"],minecraft:custom_name={"color":"#55ee88","text":"KnockBlock Guidebook","italic":false},minecraft:max_stack_size=1]
# execute as @a unless entity @s[x=-10,dx=20,z=-130,dz=20,y=120,dy=20] run tp 0 121 -120
# execute as @a if entity @s[x=-10,dx=20,z=-130,dz=20,y=120,dy=20] run gamemode adventure
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}]
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",count:1},{id:"minecraft:knowledge_book",count:1}]}] run clear @s minecraft:knowledge_book