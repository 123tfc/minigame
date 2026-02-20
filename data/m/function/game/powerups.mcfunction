function m:game/drops/elytradrop
function m:game/drops/heavy_star
function m:game/drops/pink/extra_life
function m:game/drops/pink/infinity_bow
function m:game/drops/pink/fire_stick
function m:game/drops/pink/extended_arms
function m:game/drops/yellow/pufferfish_grenade
function m:game/drops/yellow/detect_landmine
function m:game/drops/yellow/detect_smoke_bomb
function m:game/drops/yellow/detect_growth_bomb
function m:game/drops/yellow/detect_mob_grenade
execute if score @e[tag=dummy,limit=1] MapSwitch matches 1 run function m:game/drops/blue/meteor_shower_macro {x1:"-272",x2:"-134",dx:"138",z1:"-859",z2:"-721",dz:"138",y:"170"}
execute if score @e[tag=dummy,limit=1] MapSwitch matches 2 run function m:game/drops/blue/meteor_shower_macro {x1:"874",x2:"1002",dx:"125",z1:"-856",z2:"-744",dz:"116",y:"170"}
execute if score @e[tag=dummy,limit=1] MapSwitch matches 3 run function m:game/drops/blue/meteor_shower_macro {x1:"4347",x2:"4441",dx:"94",z1:"-814",z2:"-721",dz:"93",y:"180"}
function m:game/drops/blue/motion_sickness
function m:game/drops/blue/horsies
function m:game/drops/blue/destroy_warp_anchor
function m:game/drops/blue/gravitation_switch
function m:game/drops/blue/slow_time
function m:game/drops/blue/clone_decoy