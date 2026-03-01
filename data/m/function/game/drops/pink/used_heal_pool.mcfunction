# summon item ~ ~ ~ {Item:{id:"cake",components:{"consumable":{consume_seconds:10000},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":'{"text":"Warp Anchor","color":"dark_purple","italic":false}',"max_stack_size":1}},CustomName:'{"text":"Warp Anchor","color":"dark_purple","italic":false}',CustomNameVisible:1b}
#give @s minecraft:cake[minecraft:food={nutrition:0.0,saturation:0.0},consumable={}]



execute as @s at @s if block ~ ~-0.1 ~ #m:non_solids run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b}] run playsound minecraft:item.goat_horn.sound.1 master @a ~ ~ ~ 1 1.5
advancement revoke @s only m:powerups/heal_pool

execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b},team=lone] align xz positioned ~ ~ ~ run summon block_display ~ ~ ~ {block_state:{Name:"gray_candle_cake"},Tags:[heal_pool]}
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b},team=red] align xz positioned ~ ~ ~ run summon block_display ~ ~ ~ {block_state:{Name:"red_candle_cake"},Tags:[heal_pool]}
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b},team=white] align xz positioned ~ ~ ~ run summon block_display ~ ~ ~ {block_state:{Name:"white_candle_cake"},Tags:[heal_pool]}
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b},team=yellow] align xz positioned ~ ~ ~ run summon block_display ~ ~ ~ {block_state:{Name:"yellow_candle_cake"},Tags:[heal_pool]}
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b},team=blue] align xz positioned ~ ~ ~ run summon block_display ~ ~ ~ {block_state:{Name:"blue_candle_cake"},Tags:[heal_pool]}
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b},team=pink] align xz positioned ~ ~ ~ run summon block_display ~ ~ ~ {block_state:{Name:"pink_candle_cake"},Tags:[heal_pool]}
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b},team=black] align xz positioned ~ ~ ~ run summon block_display ~ ~ ~ {block_state:{Name:"black_candle_cake"},Tags:[heal_pool]}
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b},team=lime] align xz positioned ~ ~ ~ run summon block_display ~ ~ ~ {block_state:{Name:"lime_candle_cake"},Tags:[heal_pool]}
execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b},team=orange] align xz positioned ~ ~ ~ run summon block_display ~ ~ ~ {block_state:{Name:"orange_candle_cake"},Tags:[heal_pool]}

function m:game/drops/pink/heal_pool_macro {team:lone,color:gray}
function m:game/drops/pink/heal_pool_macro {team:red,color:red}
function m:game/drops/pink/heal_pool_macro {team:white,color:white}
function m:game/drops/pink/heal_pool_macro {team:yellow,color:yellow}
function m:game/drops/pink/heal_pool_macro {team:blue,color:blue}
function m:game/drops/pink/heal_pool_macro {team:pink,color:pink}
function m:game/drops/pink/heal_pool_macro {team:black,color:black}
function m:game/drops/pink/heal_pool_macro {team:lime,color:lime}
function m:game/drops/pink/heal_pool_macro {team:orange,color:orange}

execute as @s at @s unless block ~ ~-0.1 ~ #m:non_solids if entity @s[nbt={OnGround:1b}] align xz positioned ~0.0625 ~ ~0.0625 run summon marker ~ ~ ~ {Tags:[heal_pool]}

execute as @s at @s if entity @s[nbt={OnGround:0b}] run title @s actionbar {"text":"Invalid Placement. Need Ground To Establish","color":"#FF0000"}
execute as @s at @s if block ~ ~-0.1 ~ #m:non_solids run title @s actionbar {"text":"Invalid Placement. Need Ground To Establish","color":"#FF0000"}

execute as @e[tag=heal_pool,type=marker] at @s at @n[tag=heal_pool,type=block_display] positioned ~0.5 ~ ~0.5 rotated as @s run function m:game/drops/pink/heal_pool_sphere


execute at @s unless block ~ ~-1 ~ #m:non_solids if entity @s[nbt={OnGround:1b,equipment:{offhand:{id: "minecraft:cake", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={OnGround:1b,SelectedItem:{id:"minecraft:cake",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute at @s unless block ~ ~-1 ~ #m:non_solids if entity @s[nbt={OnGround:1b,SelectedItem:{id:"minecraft:cake",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
