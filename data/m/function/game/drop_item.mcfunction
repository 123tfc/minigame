execute as @e[tag=drop_item] if entity @s[nbt={OnGround:1b}] run kill @s
execute as @e[tag=drop_item] unless entity @s[x=-272,dx=138,z=-859,dz=138,y=10,dy=170] run kill @s
execute as @e[tag=drop_item] unless entity @s[nbt={Passengers:[{id:"minecraft:item"}]}] run kill @s