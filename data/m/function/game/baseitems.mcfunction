# Plains
execute if score @e[limit=1,tag=dummy] MapSwitch matches 1 run give @s stick[minecraft:max_stack_size=1,enchantments={"knockback":15},custom_name={"text":"Knockback Stick","color":"light_purple","italic":false}]
execute if score @e[limit=1,tag=dummy] MapSwitch matches 1 run give @s bow[minecraft:enchantment_glint_override=false,unbreakable={},enchantments={"punch":10},custom_name={"text":"Knockback Bow","color":"light_purple","italic":false}]
execute if score @e[limit=1,tag=dummy] MapSwitch matches 1 run give @s arrow 5

# Winter
execute if score @e[limit=1,tag=dummy] MapSwitch matches 2 run give @s stick[minecraft:max_stack_size=1,enchantments={"knockback":10},custom_name={"text":"Knockback Stick","color":"light_purple","italic":false}]
execute if score @e[limit=1,tag=dummy] MapSwitch matches 2 run give @s bow[minecraft:enchantment_glint_override=false,unbreakable={},enchantments={"punch":5},custom_name={"text":"Knockback Bow","color":"light_purple","italic":false}]
execute if score @e[limit=1,tag=dummy] MapSwitch matches 2 run give @s arrow 5

scoreboard players set @s player_hurt_level 0