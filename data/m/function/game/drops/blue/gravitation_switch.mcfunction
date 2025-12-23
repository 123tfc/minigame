#Active
execute if stopwatch minecraft:gravity_switch 0..10 as @a[tag=alive] run attribute @s minecraft:gravity base set -0.005
execute if stopwatch minecraft:gravity_switch 0..10 as @e[type=!armor_stand] run attribute @s minecraft:gravity base set -0.005

#Deactivate
execute if stopwatch minecraft:gravity_switch 10.. at @a[nbt={attributes:[{base:-0.005d,id:"minecraft:gravity"}]}] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2
execute if stopwatch minecraft:gravity_switch 10.. as @e run attribute @s minecraft:gravity base set 0.08
execute if stopwatch minecraft:gravity_switch 10.. run stopwatch remove gravity_switch