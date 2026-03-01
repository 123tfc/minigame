# scoreboard objectives add heal_pool dummy
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},type=block_display] run scoreboard players add @s heal_pool 1
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=10}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=20}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=30}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=40}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=50}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=60}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=70}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=80}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=90}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=100}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=110}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=120}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=130}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=140}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=150}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=160}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=170}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=180}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=190}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=200}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=210}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=220}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=230}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=240}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
$execute as @e[tag=heal_pool,nbt={block_state:{Name:"minecraft:$(color)_candle_cake"}},scores={heal_pool=250}] at @s as @r[team=$(team),distance=..5] run scoreboard players remove @s player_hurt_level 2
execute as @e[tag=heal_pool,scores={heal_pool=250}] at @s run particle minecraft:block{block_state:"cake"} ~0.5 ~0.25 ~0.5 0.5 0.25 0.5 0 100
execute as @e[tag=heal_pool,scores={heal_pool=250}] at @s run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 1
execute as @e[tag=heal_pool,scores={heal_pool=250}] at @s run playsound minecraft:entity.donkey.eat master @a ~ ~ ~ 1 1.5
execute as @e[tag=heal_pool,scores={heal_pool=250}] run kill @n[type=marker,tag=heal_pool]
execute as @e[tag=heal_pool,scores={heal_pool=250}] run kill @s
