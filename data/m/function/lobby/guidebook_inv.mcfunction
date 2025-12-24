# scoreboard objectives add guidebook dummy
execute as @a store result score @s guidebook if items entity @s container.* minecraft:knowledge_book
execute as @a[gamemode=adventure] if score @s guidebook matches 2.. run clear @s minecraft:knowledge_book
execute as @a[gamemode=adventure] unless entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",components:{"minecraft:recipes":["m:guidebook"],"minecraft:custom_name":{"color":"#55EE88","text":"KnockBlock Guidebook","italic":0b}}}]}] run item replace entity @s container.8 with minecraft:knowledge_book[recipes=["m:guidebook"],minecraft:custom_name={"color":"#55ee88","text":"KnockBlock Guidebook","italic":false},minecraft:max_stack_size=1]
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}]
