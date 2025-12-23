
scoreboard objectives add time dummy "Game Time"
kill @e[tag=Time]

summon minecraft:interaction -7.50 121.25 -113.75 {Tags:[Time1,Time],height:0.7,width:0.7}
summon minecraft:interaction -7.50 122.15 -113.75 {Tags:[Time2,Time],height:0.7,width:0.7}
summon minecraft:interaction -7.50 123.05 -113.75 {Tags:[Time3,Time],height:0.7,width:0.7}

summon block_display -7.85 121.25 -114.1 {Tags:[Time],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"minecraft:dark_oak_planks"},Marker:1b}
summon block_display -7.85 122.15 -114.1 {Tags:[Time],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"minecraft:dark_oak_planks"},Marker:1b}
summon block_display -7.85 123.05 -114.1 {Tags:[Time],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"minecraft:dark_oak_planks"},Marker:1b}

summon text_display -7.5 123.9 -114.005 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.4f,1.2f,1.4f]},text:{"text":"Time","color":"#000000","bold":false,"underlined":true},background:16711680,Rotation:[180f,0f],Tags:[Time]}









