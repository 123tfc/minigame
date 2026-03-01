# Global Glow Up
advancement revoke @s only m:powerups/global_glow_up
#Add Playsound Effect Here

execute as @a[tag=!glowup] run effect clear @s glowing
execute if entity @s[team=red] run tag @a[team=!red] add glowup
execute if entity @s[team=red] run tag @a[team=red] remove glowup
execute if entity @s[team=white] run tag @a[team=!white] add glowup
execute if entity @s[team=white] run tag @a[team=white] remove glowup
execute if entity @s[team=yellow] run tag @a[team=!yellow] add glowup
execute if entity @s[team=yellow] run tag @a[team=yellow] remove glowup
execute if entity @s[team=blue] run tag @a[team=!blue] add glowup
execute if entity @s[team=blue] run tag @a[team=blue] remove glowup
execute if entity @s[team=pink] run tag @a[team=!pink] add glowup
execute if entity @s[team=pink] run tag @a[team=pink] remove glowup
execute if entity @s[team=black] run tag @a[team=!black] add glowup
execute if entity @s[team=black] run tag @a[team=black] remove glowup
execute if entity @s[team=lime] run tag @a[team=!lime] add glowup
execute if entity @s[team=lime] run tag @a[team=lime] remove glowup
execute if entity @s[team=orange] run tag @a[team=!orange] add glowup
execute if entity @s[team=orange] run tag @a[team=orange] remove glowup
execute if entity @s[team=lone] run tag @a add glowup
execute if entity @s[team=lone] run tag @s remove glowup
execute as @a[tag=!glowup] run effect give @s night_vision 30 0 true
execute as @a[tag=glowup] run effect give @s glowing 30 0 true

execute if entity @s[nbt={equipment:{offhand:{id: "minecraft:glow_ink_sac", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:glow_ink_sac",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glow_ink_sac",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air
