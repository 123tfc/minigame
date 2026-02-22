#scoreboard objectives add MapSwitch dummy "Map Switch"

# Summon map selector head
#summon minecraft:armor_stand 6.5 120.6 -113.5 {Tags:[MapHead],NoGravity:1,Invisible:1,Invulnerable:1,PersistanceRequired:1}

# Summon text display to map selector
#summon minecraft:text_display 6.5 123.0 -113.5 {background:16777215,billboard:"vertical",Tags:[mstext],text:'[{"text":"\n Map Selector ", "bold":true, "color":"yellow"}, {"text":"\n\nMap: ", "bold":false, "color":"yellow"}, {text:"Plains", color:green, bold:false}, {"text":"\nSize: ", "bold":false, "color":"yellow"}, {"text":"Large", "bold":false, "color":"red"}, {text:"\n"}]'}


execute as @e[tag=MapHead] at @s run tp @s ~ ~ ~ facing ^0.015 ^ ^1


execute as @e[type=interaction,tag=MapSwitch,tag=Nether] run data merge entity @s {Tags:[MapSwitch,Nether,UnUsed]}
execute as @e[type=interaction,tag=MapSwitch,tag=Winter] run data merge entity @s {Tags:[MapSwitch,Winter,UnUsed]}
execute as @e[type=interaction,tag=MapSwitch,tag=Plains] run data merge entity @s {Tags:[MapSwitch,Plains,UnUsed]}
execute as @e[type=interaction,tag=MapSwitch,tag=City] run data merge entity @s {Tags:[MapSwitch,City,UnUsed]}
execute as @e[type=interaction,tag=MapSwitch,tag=Game] run data merge entity @s {Tags:[MapSwitch,Game,UnUsed]}


execute if score @e[limit=1,tag=dummy] MapSwitch matches 1 run data merge entity @e[tag=MapHead,limit=1] {equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-488355013,-463780434,-2100416812,545359010],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk1ZDM3OTkzZTU5NDA4MjY3ODQ3MmJmOWQ4NjgyMzQxM2MyNTBkNDMzMmEyYzdkOGM1MmRlNDk3NmIzNjIifX19"}]}}}}}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 2 run data merge entity @e[tag=MapHead,limit=1] {equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;2051120161,-1871428681,-1539055754,-44653882],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDNjNTJlYWU3NDdjYWQ1YjRmZDE5YjFhMjNiMzlhMzM2YjYyZWQ0MjI3OTdhNjIyZDA0NWY0M2U1ZDM4In19fQ=="}]}}}}}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 3 run data merge entity @e[tag=MapHead,limit=1] {equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;806523663,-1155054857,-2087728779,-579371496],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTljNmEzNzhhNzJkYTE3NTgzMWM5Mzk0ZmE0NWViNzM0M2YzMWQ3ZDA1OGZhNzZhOWE2NDZiZTAwN2I3ODg4ZCJ9fX0="}]}}}}}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 4 run data merge entity @e[tag=MapHead,limit=1] {equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1405364207,-1606991436,-1355415516,1240041300],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjIzYWM5M2Q1ZTk5OTVkZTg0YWE5NWRlM2M4OWU0MDQyNTYwNjAzNGRkOGQ3NWNmZDcxOTYxNjA5YmQ1MjgxNSJ9fX0="}]}}}}}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 5 run data merge entity @e[tag=MapHead,limit=1] {equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1476494838,1714899740,-1767455839,-1080473117],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU2ZDMzMTE1MDUwOWY0ZTY1OWFlYjkzZDQ4M2E3N2JjOGNkODgwYjQ4OTZhYjRhNWEyMmE5YWQ5ODE0MDcwNCJ9fX0="}]}}}}}

execute if score @e[limit=1,tag=dummy] MapSwitch matches 1 run data modify entity @e[tag=mstext,limit=1] text set value [{"text":"\n Map Selector ", "bold":true, "color":"yellow"}, {"text":"\n\nMap: ", "bold":false, "color":"yellow"}, {text:"Plains", color:green, bold:false}, {"text":"\nSize: ", "bold":false, "color":"yellow"}, {"text":"Large", "bold":false, "color":"red"}, {text:"\n"}]
execute if score @e[limit=1,tag=dummy] MapSwitch matches 2 run data modify entity @e[tag=mstext,limit=1] text set value [{"text":"\n Map Selector ", "bold":true, "color":"yellow"}, {"text":"\n\nMap: ", "bold":false, "color":"yellow"}, {text:"Winter", color:aqua, bold:false}, {"text":"\nSize: ", "bold":false, "color":"yellow"}, {"text":"Medium", "bold":false, "color":"gold"}, {text:"\n"}]
execute if score @e[limit=1,tag=dummy] MapSwitch matches 3 run data modify entity @e[tag=mstext,limit=1] text set value [{"text":"\n Map Selector ", "bold":true, "color":"yellow"}, {"text":"\n\nMap: ", "bold":false, "color":"yellow"}, {text:"Nether", color:red, bold:false}, {"text":"\nSize: ", "bold":false, "color":"yellow"}, {"text":"Huge", "bold":false, "color":"dark_purple"}, {text:"\n"}]
execute if score @e[limit=1,tag=dummy] MapSwitch matches 4 run data modify entity @e[tag=mstext,limit=1] text set value [{"text":"\n Map Selector ", "bold":true, "color":"yellow"}, {"text":"\n\nMap: ", "bold":false, "color":"yellow"}, {text:"City", color:dark_gray, bold:false}, {"text":"\nSize: ", "bold":false, "color":"yellow"}, {"text":"Unset", "bold":false, "color":"blue"}, {text:"\n"}]
execute if score @e[limit=1,tag=dummy] MapSwitch matches 5 run data modify entity @e[tag=mstext,limit=1] text set value [{"text":"\n Map Selector ", "bold":true, "color":"yellow"}, {"text":"\n\nMap: ", "bold":false, "color":"yellow"}, {text:"Arcade", color:light_purple, bold:false}, {"text":"\nSize: ", "bold":false, "color":"yellow"}, {"text":"Unset", "bold":false, "color":"blue"}, {text:"\n"}]

#  Højreklik

execute as @e[type=interaction,tag=MapSwitch,tag=Game,tag=UnUsed] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] MapSwitch 1
execute as @e[type=interaction,tag=MapSwitch,tag=Game,tag=UnUsed] if data entity @s interaction on target run scoreboard objectives add plainsAnimation dummy
execute as @e[type=interaction,tag=MapSwitch,tag=Game,tag=UnUsed] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] plainsAnimation 0
execute as @e[type=interaction,tag=MapSwitch,tag=Game,tag=UnUsed] if data entity @s interaction on target run summon minecraft:interaction 6.5 121.8 -113.5 {height:1.1,width:1.1,Tags:[Temp]}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 1 as @e[type=minecraft:interaction,tag=MapSwitch,tag=Game] run data merge entity @s {Tags:[MapSwitch,Plains,Used]}



execute as @e[type=interaction,tag=MapSwitch,tag=Plains,tag=UnUsed] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] MapSwitch 2
execute as @e[type=interaction,tag=MapSwitch,tag=Plains,tag=UnUsed] if data entity @s interaction on target run scoreboard objectives add winterAnimation dummy
execute as @e[type=interaction,tag=MapSwitch,tag=Plains,tag=UnUsed] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] winterAnimation 0
execute as @e[type=interaction,tag=MapSwitch,tag=Plains,tag=UnUsed] if data entity @s interaction on target run summon minecraft:interaction 6.5 121.8 -113.5 {height:1.1,width:1.1,Tags:[Temp]}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 2 as @e[type=minecraft:interaction,tag=MapSwitch,tag=Plains] run data merge entity @s {Tags:[MapSwitch,Winter,Used]}



execute as @e[type=interaction,tag=MapSwitch,tag=Winter,tag=UnUsed] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] MapSwitch 3
execute as @e[type=interaction,tag=MapSwitch,tag=Winter,tag=UnUsed] if data entity @s interaction on target run scoreboard objectives add netherAnimation dummy
execute as @e[type=interaction,tag=MapSwitch,tag=Winter,tag=UnUsed] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] netherAnimation 0
execute as @e[type=interaction,tag=MapSwitch,tag=Winter,tag=UnUsed] if data entity @s interaction on target run summon minecraft:interaction 6.5 121.8 -113.5 {height:1.1,width:1.1,Tags:[Temp]}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 3 as @e[type=minecraft:interaction,tag=MapSwitch,tag=Winter] run data merge entity @s {Tags:[MapSwitch,Nether,Used]}


execute as @e[type=interaction,tag=MapSwitch,tag=Nether,tag=UnUsed] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] MapSwitch 4
execute as @e[type=interaction,tag=MapSwitch,tag=Nether,tag=UnUsed] if data entity @s interaction on target run scoreboard objectives add cityAnimation dummy
execute as @e[type=interaction,tag=MapSwitch,tag=Nether,tag=UnUsed] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] cityAnimation 0
execute as @e[type=interaction,tag=MapSwitch,tag=Nether,tag=UnUsed] if data entity @s interaction on target run summon minecraft:interaction 6.5 121.8 -113.5 {height:1.1,width:1.1,Tags:[Temp]}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 4 as @e[type=minecraft:interaction,tag=MapSwitch,tag=Nether] run data merge entity @s {Tags:[MapSwitch,City,Used]}


execute as @e[type=interaction,tag=MapSwitch,tag=City,tag=UnUsed] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] MapSwitch 5
execute as @e[type=interaction,tag=MapSwitch,tag=City,tag=UnUsed] if data entity @s interaction on target run scoreboard objectives add gameAnimation dummy
execute as @e[type=interaction,tag=MapSwitch,tag=City,tag=UnUsed] if data entity @s interaction on target run scoreboard players set @e[tag=dummy] gameAnimation 0
execute as @e[type=interaction,tag=MapSwitch,tag=City,tag=UnUsed] if data entity @s interaction on target run summon minecraft:interaction 6.5 121.8 -113.5 {height:1.1,width:1.1,Tags:[Temp]}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 5 as @e[type=minecraft:interaction,tag=MapSwitch,tag=City] run data merge entity @s {Tags:[MapSwitch,Game,Used]}


# Venstreklik

execute as @e[type=interaction,tag=MapSwitch,tag=Winter,tag=UnUsed] if data entity @s attack on attacker run scoreboard players set @e[tag=dummy] MapSwitch 1
execute as @e[type=interaction,tag=MapSwitch,tag=Winter,tag=UnUsed] if data entity @s attack on attacker run scoreboard objectives add plainsAnimation dummy
execute as @e[type=interaction,tag=MapSwitch,tag=Winter,tag=UnUsed] if data entity @s attack on attacker run scoreboard players set @e[tag=dummy] plainsAnimation 0
execute as @e[type=interaction,tag=MapSwitch,tag=Winter,tag=UnUsed] if data entity @s attack on attacker run summon interaction 6.5 121.8 -113.5 {height:1.1,width:1.1,Tags:[Temp]}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 1 as @e[type=interaction,tag=MapSwitch,tag=Winter] run data merge entity @s {Tags:[MapSwitch,Plains,Used]}



execute as @e[type=interaction,tag=MapSwitch,tag=Nether,tag=UnUsed] if data entity @s attack on attacker run scoreboard players set @e[tag=dummy] MapSwitch 2
execute as @e[type=interaction,tag=MapSwitch,tag=Nether,tag=UnUsed] if data entity @s attack on attacker run scoreboard objectives add winterAnimation dummy
execute as @e[type=interaction,tag=MapSwitch,tag=Nether,tag=UnUsed] if data entity @s attack on attacker run scoreboard players set @e[tag=dummy] winterAnimation 0
execute as @e[type=interaction,tag=MapSwitch,tag=Nether,tag=UnUsed] if data entity @s attack on attacker run summon interaction 6.5 121.8 -113.5 {height:1.1,width:1.1,Tags:[Temp]}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 2 as @e[type=interaction,tag=MapSwitch,tag=Nether] run data merge entity @s {Tags:[MapSwitch,Winter,Used]}



execute as @e[type=interaction,tag=MapSwitch,tag=City,tag=UnUsed] if data entity @s attack on attacker run scoreboard players set @e[tag=dummy] MapSwitch 3
execute as @e[type=interaction,tag=MapSwitch,tag=City,tag=UnUsed] if data entity @s attack on attacker run scoreboard objectives add netherAnimation dummy
execute as @e[type=interaction,tag=MapSwitch,tag=City,tag=UnUsed] if data entity @s attack on attacker run scoreboard players set @e[tag=dummy] netherAnimation 0
execute as @e[type=interaction,tag=MapSwitch,tag=City,tag=UnUsed] if data entity @s attack on attacker run summon interaction 6.5 121.8 -113.5 {height:1.1,width:1.1,Tags:[Temp]}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 3 as @e[type=interaction,tag=MapSwitch,tag=City] run data merge entity @s {Tags:[MapSwitch,Nether,Used]}


execute as @e[type=interaction,tag=MapSwitch,tag=Game,tag=UnUsed] if data entity @s attack on attacker run scoreboard players set @e[tag=dummy] MapSwitch 4
execute as @e[type=interaction,tag=MapSwitch,tag=Game,tag=UnUsed] if data entity @s attack on attacker run scoreboard objectives add cityAnimation dummy
execute as @e[type=interaction,tag=MapSwitch,tag=Game,tag=UnUsed] if data entity @s attack on attacker run scoreboard players set @e[tag=dummy] cityAnimation 0
execute as @e[type=interaction,tag=MapSwitch,tag=Game,tag=UnUsed] if data entity @s attack on attacker run summon interaction 6.5 121.8 -113.5 {height:1.1,width:1.1,Tags:[Temp]}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 4 as @e[type=interaction,tag=MapSwitch,tag=Game] run data merge entity @s {Tags:[MapSwitch,City,Used]}


execute as @e[type=interaction,tag=MapSwitch,tag=Plains,tag=UnUsed] if data entity @s attack on attacker run scoreboard players set @e[tag=dummy] MapSwitch 5
execute as @e[type=interaction,tag=MapSwitch,tag=Plains,tag=UnUsed] if data entity @s attack on attacker run scoreboard objectives add gameAnimation dummy
execute as @e[type=interaction,tag=MapSwitch,tag=Plains,tag=UnUsed] if data entity @s attack on attacker run scoreboard players set @e[tag=dummy] gameAnimation 0
execute as @e[type=interaction,tag=MapSwitch,tag=Plains,tag=UnUsed] if data entity @s attack on attacker run summon interaction 6.5 121.8 -113.5 {height:1.1,width:1.1,Tags:[Temp]}
execute if score @e[limit=1,tag=dummy] MapSwitch matches 5 as @e[type=interaction,tag=MapSwitch,tag=Plains] run data merge entity @s {Tags:[MapSwitch,Game,Used]}



# execute unless block 1010 122 -118 redstone_block unless block 1010 122 -119 redstone_block unless block 1010 122 -120 redstone_block unless block 1010 122 -121 redstone_block unless block 1010 122 -122 redstone_block run kill @e[tag=Temp,type=minecraft:interaction]



execute as @e[type=minecraft:interaction,tag=MapSwitch] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=MapSwitch] run data remove entity @s attack




function m:lobby/plains_map
function m:lobby/winter_map
function m:lobby/nether_map
function m:lobby/city_map
function m:lobby/game_map
















