# summon item ~ ~ ~ {Item:{id:"ender_eye",components:{"consumable":{consume_seconds:10000},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":'{"text":"Warp Anchor","color":"dark_purple","italic":false}',"max_stack_size":1}},CustomName:'{"text":"Warp Anchor","color":"dark_purple","italic":false}',CustomNameVisible:1b}
# give @s minecraft:ender_eye[minecraft:custom_name='{"text":"Teleport To Warp", color:"dark_purple",italic:false}']



execute if entity @e[tag=warp_anchor] run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 2
advancement revoke @s only m:powerups/warp_teleport

tag @e[sort=random,tag=warp_anchor_point,limit=1] add this_warp_anchor_point
execute as @s at @e[tag=this_warp_anchor_point,limit=1,sort=nearest] align xyz run tp @s ~.5 ~ ~.5
execute at @e[tag=this_warp_anchor_point,limit=1,sort=nearest] run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 1
execute at @e[tag=this_warp_anchor_point,limit=1,sort=nearest] run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 2

execute at @s align xyz positioned ~-0.1 ~-0.6 ~-0.1 if entity @e[tag=warp_anchor,dx=0.1,dy=0.6,dz=0.1] run particle block{block_state:"minecraft:lime_stained_glass"} ~ ~1 ~ 0.5 1 0.5 5 100 normal
execute at @s align xyz positioned ~-0.1 ~-0.6 ~-0.1 if entity @e[tag=warp_anchor,dx=0.1,dy=0.6,dz=0.1] run particle block{block_state:"minecraft:sculk_shrieker"} ~ ~1 ~ 0.5 1 0.5 5 100 normal
execute at @s align xyz positioned ~-0.1 ~-0.6 ~-0.1 if entity @e[tag=warp_anchor,dx=0.1,dy=0.6,dz=0.1] run particle block{block_state:"minecraft:dragon_egg"} ~ ~1 ~ 0.5 1 0.5 5 100 normal
execute at @s align xyz positioned ~-0.1 ~-0.6 ~-0.1 unless entity @e[tag=warp_anchor,dx=0.1,dy=0.6,dz=0.1] run title @s actionbar {"text":"There Were No More Warp Anchors Available","color":"#FF0000"}
execute at @s align xyz positioned ~-0.1 ~-0.6 ~-0.1 unless entity @e[tag=warp_anchor,dx=0.1,dy=0.6,dz=0.1] run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 0.5

execute at @s align xyz positioned ~-0.1 ~-0.6 ~-0.1 run kill @e[tag=warp_anchor,dx=0.1,dy=0.6,dz=0.1]

execute if entity @s[nbt={Inventory:[{Slot: -106b, id: "minecraft:ender_eye", }]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] run item replace entity @s weapon.mainhand with air
