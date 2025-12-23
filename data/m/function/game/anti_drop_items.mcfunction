# scoreboard objectives add uuid dummy

# execute as @e[type=item,limit=1,tag=!item,sort=random,nbt={Item:{id:"minecraft:stick"}}] if data entity @s Thrower run tag @s add throwed_item
# execute as @e[tag=throwed_item] if data entity @s Thrower store result score @s uuid run data get entity @s Thrower[0]
# execute as @a if score @s uuid = @n[tag=throwed_item] uuid run tag @s add thrower
# execute as @n[tag=throwed_item] run tp @s @p[tag=thrower]
# data modify entity @n[tag=throwed_item] PickupDelay set value 0s
# tag @a remove thrower
# tag @e remove throwed_item

execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:blaze_rod"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:stick"}]}] if score @e[limit=1,tag=dummy] MapSwitch matches 1 run give @s stick[minecraft:max_stack_size=1,enchantments={"knockback":15},custom_name={"text":"Knockback Stick","color":"light_purple","italic":false}]
kill @e[type=item,nbt={Item:{id:"minecraft:stick"}}]
