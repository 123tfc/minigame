# stopwatch create summon_default_drop
execute as @a unless entity @s[scores={knockback=100..}] run function m:base/player_hurt/player_hurt
function m:game/anti_drop_items
function m:game/respawn
function m:game/drop_item
function m:game/special_drop
function m:teams/join_teams
function m:game/winter/launch_pad
function m:game/plains/jump_pad
function m:game/nether/portals
function m:base/sneaking
function m:game/drops/elytradrop
function m:base/player_hurt
function m:base/knockback


execute if stopwatch minecraft:summon_default_drop 5.. if entity @e[tag=dummy,limit=1,scores={MapSwitch=1}] run function m:game/macros/summon_drop_macro {x1:"-272",x2:"-134",z1:"-859",z2:"-721",y:"170"}
execute if stopwatch minecraft:summon_default_drop 5.. if entity @e[tag=dummy,limit=1,scores={MapSwitch=2}] run function m:game/macros/summon_drop_macro {x1:"874",x2:"1002",z1:"-856",z2:"-744",y:"170"}
execute if stopwatch minecraft:summon_default_drop 4.. if entity @e[tag=dummy,limit=1,scores={MapSwitch=3}] run function m:game/macros/summon_drop_macro {x1:"4347",x2:"4441",z1:"-814",z2:"-721",y:"180"}
execute if stopwatch minecraft:reset_knockback ..0.5 as @a[scores={player_hurt_level=1..}] run scoreboard players set @s player_hurt_level 0
execute if stopwatch minecraft:reset_knockback 0.5.. run stopwatch remove reset_knockback


kill @e[type=arrow,nbt={inGround:1b}]
execute unless entity @e[tag=alive] run function m:stage_0_init_lobby


