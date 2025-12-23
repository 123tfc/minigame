#summon item ~ ~ ~ {Item:{id:"minecraft:netherite_upgrade_smithing_template",components:{"max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"bold":false,"text":"Gravitation Switch","color":"#EE8855"}',"minecraft:food":{nutrition:0,saturation:0.0f}}}}
#give @s minecraft:netherite_upgrade_smithing_template[minecraft:food={nutrition:0.0,saturation:0.0}]



execute at @a run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2
advancement revoke @s only m:powerups/gravitation_switch
execute as @a[tag=alive] run attribute @s minecraft:gravity base set -0.005
tellraw @a [{"text":"Light As a Feather... ","bold":true,"color":"#EE8855"},{"text":"Oh, The Gravity Just Flipped!","color":"#AA3300","italic":true,"bold":false}]
execute if entity @s[nbt={Inventory:[{Slot: -106b, id: "minecraft:netherite_upgrade_smithing_template", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_upgrade_smithing_template",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_upgrade_smithing_template",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
schedule function m:game/drops/blue/deactivate_gravitation_switch 10s