kill @e[tag=mstext]
kill @e[tag=MapHead]
kill @e[tag=MapSwitch]
summon minecraft:text_display 6.5 123.0 -113.5 {billboard:"vertical",Tags:[mstext],text:'[{"text":"\\n Map Selector ", "bold":true, "color":"yellow"}, {"text":"\\n\\nMap: ", "bold":false, "color":"yellow"}, {text:"Plains", color:green, bold:false}, {"text":"\\nSize: ", "bold":false, "color":"yellow"}, {"text":"Large", "bold":false, "color":"red"}, {text:"\\n"}]'}
summon minecraft:armor_stand 6.5 120.6 -113.5 {Tags:[MapHead],NoGravity:1,Invisible:1,Invulnerable:1,PersistanceRequired:1}
execute if entity @e[tag=dummy,limit=1,scores={MapSwitch=1}] run summon minecraft:interaction 6.5 121.8125 -113.5 {Tags:[UnUsed,MapSwitch,Plains],height:1.0,width:1.0}
execute if entity @e[tag=dummy,limit=1,scores={MapSwitch=2}] run summon minecraft:interaction 6.5 121.8125 -113.5 {Tags:[UnUsed,MapSwitch,Winter],height:1.0,width:1.0}
execute if entity @e[tag=dummy,limit=1,scores={MapSwitch=3}] run summon minecraft:interaction 6.5 121.8125 -113.5 {Tags:[UnUsed,MapSwitch,Nether],height:1.0,width:1.0}
execute if entity @e[tag=dummy,limit=1,scores={MapSwitch=4}] run summon minecraft:interaction 6.5 121.8125 -113.5 {Tags:[UnUsed,MapSwitch,City],height:1.0,width:1.0}
execute if entity @e[tag=dummy,limit=1,scores={MapSwitch=5}] run summon minecraft:interaction 6.5 121.8125 -113.5 {Tags:[UnUsed,MapSwitch,Arcade],height:1.0,width:1.0}