execute as @a unless entity @s[scores={knockback=100..}] run function m:base/player_hurt/player_hurt
function m:game/anti_drop_items
function m:game/respawn
function m:game/drop_item
function m:game/special_drop
function m:teams/join_teams
function m:base/jump_pad
function m:base/sneaking
function m:game/drops/elytradrop
function m:base/player_hurt
function m:base/knockback
function m:game/victory
kill @e[type=arrow,nbt={inGround:1b}]
execute unless entity @e[tag=alive] run function m:stage_0_init_lobby