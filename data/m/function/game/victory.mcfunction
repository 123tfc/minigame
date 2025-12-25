execute as @a[tag=alive] run scoreboard players operation #victory Migger += @s health
execute if score #victory Migger matches 1.. run scoreboard players operation #victory Migger /= #division2 Migger


execute unless score #victory victory matches 1..160 if score #victory Migger = Red Migger run scoreboard players set #victory victory 1
execute unless score #victory victory matches 1..160 if score #victory Migger = White Migger run scoreboard players set #victory victory 1
execute unless score #victory victory matches 1..160 if score #victory Migger = Yellow Migger run scoreboard players set #victory victory 1
execute unless score #victory victory matches 1..160 if score #victory Migger = Blue Migger run scoreboard players set #victory victory 1
execute unless score #victory victory matches 1..160 if score #victory Migger = Pink Migger run scoreboard players set #victory victory 1
execute unless score #victory victory matches 1..160 if score #victory Migger = Black Migger run scoreboard players set #victory victory 1
execute unless score #victory victory matches 1..160 if score #victory Migger = Lime Migger run scoreboard players set #victory victory 1
execute unless score #victory victory matches 1..160 if score #victory Migger = Orange Migger run scoreboard players set #victory victory 1
execute as @a[team=lone] unless score #victory victory matches 1..160 if score #victory Migger = @s Migger run scoreboard players set #victory victory 1

execute if score #victory victory matches 1..160 run scoreboard players add #victory victory 1
execute if score #victory victory matches 1..160 at @a[tag=alive] run particle minecraft:lava ~ ~ ~ 1 1 1 1 2
execute if score #victory victory matches 1..160 at @a[tag=alive] run playsound minecraft:block.note_block.cow_bell master @a ~ ~ ~ 0.1 1
execute if score #victory victory matches 1..160 at @a[tag=alive] run playsound minecraft:block.lava.pop master @a ~ ~ ~ 0.2 1

execute if score #victory victory matches 2 run tag @a[tag=alive] add victory
execute if score #victory victory matches 2 if score #victory Migger = Blue Migger run tellraw @a [{"text":"The ","color":"yellow"},{"text":"Blue Axolotls","color":"blue","bold":true},{"text":" has won the game!","color":"yellow"}]
execute if score #victory victory matches 2 if score #victory Migger = Blue Migger run title @a title {"text":"Blue Axolotls","color":"blue","bold":true}
execute if score #victory victory matches 2 if score #victory Migger = Blue Migger run title @a subtitle {"text":"Won the game!","color":"yellow"}
execute if score #victory victory matches 2 if score #victory Migger = Red Migger run tellraw @a [{"text":"The ","color":"yellow"},{"text":"Red Parrots","color":"red","bold":true},{"text":" has won the game!","color":"yellow"}]
execute if score #victory victory matches 2 if score #victory Migger = Red Migger run title @a title {"text":"Red Parrots","color":"red","bold":true}
execute if score #victory victory matches 2 if score #victory Migger = Red Migger run title @a subtitle {"text":"Won the game!","color":"yellow"}
execute if score #victory victory matches 2 if score #victory Migger = White Migger run tellraw @a [{"text":"The ","color":"yellow"},{"text":"White Chicks","color":"white","bold":true},{"text":" has won the game!","color":"yellow"}]
execute if score #victory victory matches 2 if score #victory Migger = White Migger run title @a title {"text":"White Chicks","color":"white","bold":true}
execute if score #victory victory matches 2 if score #victory Migger = White Migger run title @a subtitle {"text":"Won the game!","color":"yellow"}
execute if score #victory victory matches 2 if score #victory Migger = Yellow Migger run tellraw @a [{"text":"The ","color":"yellow"},{"text":"Yellow Ocelot","color":"yellow","bold":true},{"text":" has won the game!","color":"yellow"}]
execute if score #victory victory matches 2 if score #victory Migger = Yellow Migger run title @a title {"text":"Yellow Ocelots","color":"yellow","bold":true}
execute if score #victory victory matches 2 if score #victory Migger = Yellow Migger run title @a subtitle {"text":"Won the game!","color":"yellow"}
execute if score #victory victory matches 2 if score #victory Migger = Pink Migger run tellraw @a [{"text":"The ","color":"yellow"},{"text":"Pink Pig","color":"light_purple","bold":true},{"text":" has won the game!","color":"yellow"}]
execute if score #victory victory matches 2 if score #victory Migger = Pink Migger run title @a title {"text":"Pink Pigs","color":"light_purple","bold":true}
execute if score #victory victory matches 2 if score #victory Migger = Pink Migger run title @a subtitle {"text":"Won the game!","color":"yellow"}
execute if score #victory victory matches 2 if score #victory Migger = Black Migger run tellraw @a [{"text":"The ","color":"yellow"},{"text":"Black Spider","color":"dark_gray","bold":true},{"text":" has won the game!","color":"yellow"}]
execute if score #victory victory matches 2 if score #victory Migger = Black Migger run title @a title {"text":"Black Spiders","color":"dark_gray","bold":true}
execute if score #victory victory matches 2 if score #victory Migger = Black Migger run title @a subtitle {"text":"Won the game!","color":"yellow"}
execute if score #victory victory matches 2 if score #victory Migger = Lime Migger run tellraw @a [{"text":"The ","color":"yellow"},{"text":"Lime Slime","color":"green","bold":true},{"text":" has won the game!","color":"yellow"}]
execute if score #victory victory matches 2 if score #victory Migger = Lime Migger run title @a title {"text":"Lime Slimes","color":"green","bold":true}
execute if score #victory victory matches 2 if score #victory Migger = Lime Migger run title @a subtitle {"text":"Won the game!","color":"yellow"}
execute if score #victory victory matches 2 if score #victory Migger = Orange Migger run tellraw @a [{"text":"The ","color":"yellow"},{"text":"Orange Clownfish","color":"gold","bold":true},{"text":" has won the game!","color":"yellow"}]
execute if score #victory victory matches 2 if score #victory Migger = Orange Migger run title @a title {"text":"Orange Clownfishes","color":"gold","bold":true}
execute if score #victory victory matches 2 if score #victory Migger = Orange Migger run title @a subtitle {"text":"Won the game!","color":"yellow"}

execute as @a[team=lone,tag=victory] if score #victory victory matches 2 if score #victory Migger = @s Migger run tellraw @a [{"color":"gray","selector":"@s","bold":true},{"text":" has won the game!","color":"yellow","bold":false}]
execute as @a[team=lone,tag=victory] if score #victory victory matches 2 if score #victory Migger = @s Migger run title @a title {"selector":"@s","color":"gray","bold":true}
execute as @a[team=lone,tag=victory] if score #victory victory matches 2 if score #victory Migger = @s Migger run title @a subtitle {"text":"Won the game!","color":"yellow"}



execute if score #victory victory matches 2 if score #victory Migger = Red Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16717591],fade_colors:[I;7346991]}]}}}}
execute if score #victory victory matches 25 if score #victory Migger = Red Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16717591],fade_colors:[I;7346991]}]}}}}
execute if score #victory victory matches 50 if score #victory Migger = Red Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16717591],fade_colors:[I;7346991]}]}}}}
execute if score #victory victory matches 75 if score #victory Migger = Red Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16717591],fade_colors:[I;7346991]}]}}}}

execute if score #victory victory matches 2 if score #victory Migger = White Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16775912],fade_colors:[I;16777110]}]}}}}
execute if score #victory victory matches 25 if score #victory Migger = White Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16775912],fade_colors:[I;16777110]}]}}}}
execute if score #victory victory matches 50 if score #victory Migger = White Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16775912],fade_colors:[I;16777110]}]}}}}
execute if score #victory victory matches 75 if score #victory Migger = White Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16775912],fade_colors:[I;16777110]}]}}}}

execute if score #victory victory matches 2 if score #victory Migger = Yellow Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16770560],fade_colors:[I;16756278]}]}}}}
execute if score #victory victory matches 25 if score #victory Migger = Yellow Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16770560],fade_colors:[I;16756278]}]}}}}
execute if score #victory victory matches 50 if score #victory Migger = Yellow Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16770560],fade_colors:[I;16756278]}]}}}}
execute if score #victory victory matches 75 if score #victory Migger = Yellow Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16770560],fade_colors:[I;16756278]}]}}}}

execute if score #victory victory matches 2 if score #victory Migger = Blue Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;2228479],fade_colors:[I;4909055]}]}}}}
execute if score #victory victory matches 25 if score #victory Migger = Blue Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;2228479],fade_colors:[I;4909055]}]}}}}
execute if score #victory victory matches 50 if score #victory Migger = Blue Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;2228479],fade_colors:[I;4909055]}]}}}}
execute if score #victory victory matches 75 if score #victory Migger = Blue Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;2228479],fade_colors:[I;4909055]}]}}}}

execute if score #victory victory matches 2 if score #victory Migger = Pink Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16738037],fade_colors:[I;16508671]}]}}}}
execute if score #victory victory matches 25 if score #victory Migger = Pink Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16738037],fade_colors:[I;16508671]}]}}}}
execute if score #victory victory matches 50 if score #victory Migger = Pink Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16738037],fade_colors:[I;16508671]}]}}}}
execute if score #victory victory matches 75 if score #victory Migger = Pink Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16738037],fade_colors:[I;16508671]}]}}}}

execute if score #victory victory matches 2 if score #victory Migger = Black Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;0],fade_colors:[I;8421504]}]}}}}
execute if score #victory victory matches 25 if score #victory Migger = Black Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;0],fade_colors:[I;8421504]}]}}}}
execute if score #victory victory matches 50 if score #victory Migger = Black Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;0],fade_colors:[I;8421504]}]}}}}
execute if score #victory victory matches 75 if score #victory Migger = Black Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;0],fade_colors:[I;8421504]}]}}}}

execute if score #victory victory matches 2 if score #victory Migger = Lime Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;7864174],fade_colors:[I;15728557]}]}}}}
execute if score #victory victory matches 25 if score #victory Migger = Lime Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;7864174],fade_colors:[I;15728557]}]}}}}
execute if score #victory victory matches 50 if score #victory Migger = Lime Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;7864174],fade_colors:[I;15728557]}]}}}}
execute if score #victory victory matches 75 if score #victory Migger = Lime Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;7864174],fade_colors:[I;15728557]}]}}}}

execute if score #victory victory matches 2 if score #victory Migger = Orange Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16751624],fade_colors:[I;16740935]}]}}}}
execute if score #victory victory matches 25 if score #victory Migger = Orange Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16751624],fade_colors:[I;16740935]}]}}}}
execute if score #victory victory matches 50 if score #victory Migger = Orange Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16751624],fade_colors:[I;16740935]}]}}}}
execute if score #victory victory matches 75 if score #victory Migger = Orange Migger at @a[tag=alive] run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16751624],fade_colors:[I;16740935]}]}}}}

execute as @a[team=lone,tag=victory] if score #victory victory matches 2 if score #victory Migger = @s Migger at @s run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;2171169],fade_colors:[I;9211020]}]}}}}
execute as @a[team=lone,tag=victory] if score #victory victory matches 25 if score #victory Migger = @s Migger at @s run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;2171169],fade_colors:[I;9211020]}]}}}}
execute as @a[team=lone,tag=victory] if score #victory victory matches 50 if score #victory Migger = @s Migger at @s run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;2171169],fade_colors:[I;9211020]}]}}}}
execute as @a[team=lone,tag=victory] if score #victory victory matches 75 if score #victory Migger = @s Migger at @s run summon firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0,0.5,0.0],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;2171169],fade_colors:[I;9211020]}]}}}}



# execute if score #victory victory matches 2 if score #victory Migger = Red Migger run
# execute if score #victory victory matches 2 if score #victory Migger = White Migger run
# execute if score #victory victory matches 2 if score #victory Migger = Yellow Migger run
# execute if score #victory victory matches 2 if score #victory Migger = Pink Migger run
# execute if score #victory victory matches 2 if score #victory Migger = Black Migger run
# execute if score #victory victory matches 2 if score #victory Migger = Lime Migger run
# execute if score #victory victory matches 2 if score #victory Migger = Orange Migger run









execute if score #victory victory matches 160 run kill @e[type=item]
execute if score #victory victory matches 160 run tag @a[tag=victory] remove victory
execute if score #victory victory matches 160 run kill @e[tag=special_drop]
execute if score #victory victory matches 160 run function m:stage_0_init_lobby
execute if score #victory victory matches 160 run scoreboard players reset #victory victory