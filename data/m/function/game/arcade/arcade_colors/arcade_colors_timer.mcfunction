# scoreboard objectives add color_timer dummy "Arcade Color Timer"
# scoreboard objectives add color dummy "Arcade Color"

scoreboard players add #color color_timer 1


execute if score #color color_timer matches 1 run function m:game/arcade/arcade_colors/arcade_colors_reset
execute if score #color color_timer matches 80 store result score #color color run random value 1..12
execute if score #color color_timer matches 100 run function m:game/arcade/arcade_colors/arcade_colors_glass
execute if score #color color_timer matches 110 run function m:game/arcade/arcade_colors/arcade_colors_reset
execute if score #color color_timer matches 120 run function m:game/arcade/arcade_colors/arcade_colors_glass
execute if score #color color_timer matches 130 run function m:game/arcade/arcade_colors/arcade_colors_reset
execute if score #color color_timer matches 140 run function m:game/arcade/arcade_colors/arcade_colors_glass
execute if score #color color_timer matches 150 run function m:game/arcade/arcade_colors/arcade_colors_air
execute if score #color color_timer matches 200 run scoreboard players reset #color color_timer











