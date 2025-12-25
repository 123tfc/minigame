# Slow Time

# execute if stopwatch slow_timer 0..0.1 run tick rate 10
# execute if stopwatch slow_timer 5.. run tick rate 20
# execute if stopwatch slow_timer 5.. run stopwatch remove slow_timer

# execute as 123TFC if entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run tick rate 10
# execute as 123TFC unless entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run tick rate 20
tick rate 10