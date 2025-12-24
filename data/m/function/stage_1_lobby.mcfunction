function m:lobby/lives_settings
function m:lobby/strength_settings
function m:lobby/time_settings
function m:lobby/map_switch
function m:teams/join_teams
function m:lobby/start_button
function m:lobby/guidebook_inv
execute as @a if entity @s[x=-10,dx=20,z=-130,dz=20,y=120,dy=20] run tag @s add alive
# execute as @a unless entity @s[x=-10,dx=20,z=-130,dz=20,y=120,dy=20] run tp 0 121 -120
# execute as @a if entity @s[x=-10,dx=20,z=-130,dz=20,y=120,dy=20] run gamemode adventure