
#summon item ~ ~ ~ {Item:{id:"minecraft:elytra",count:1,components:{"custom_name":'{"text":" Elytra ","italic":false}'}}}

execute as @a[nbt={Inventory:[{id:"minecraft:elytra",components:{"minecraft:custom_name":{"italic":false,"text":" Elytra "}}}]}] run item replace entity @s armor.chest with elytra[enchantments={"binding_curse":1},damage=422]
execute as @a[nbt={Inventory:[{id:"minecraft:elytra",components:{"minecraft:custom_name":{"italic":false,"text":" Elytra "}}}]}] run clear @s minecraft:elytra[minecraft:custom_name={"italic":false,"text":" Elytra "}]
clear @a elytra[damage=431]

