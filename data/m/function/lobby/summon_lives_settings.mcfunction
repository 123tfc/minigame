scoreboard objectives add lives dummy "Number Of Lives"
kill @e[tag=Lives]
summon minecraft:interaction -3.50 121.25 -111.85 {Tags:[Lives1,Lives],height:0.5,width:0.5}
summon minecraft:interaction -3.50 121.75 -111.85 {Tags:[Lives2,Lives],height:0.5,width:0.5}
summon minecraft:interaction -3.50 122.25 -111.85 {Tags:[Lives3,Lives],height:0.5,width:0.5}
summon minecraft:interaction -3.50 122.75 -111.85 {Tags:[Lives4,Lives],height:0.5,width:0.5}
summon minecraft:interaction -3.50 123.25 -111.85 {Tags:[Lives5,Lives],height:0.5,width:0.5}

summon block_display -3.5 121.25 -112.1 {Tags:[Lives],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]},block_state:{Name:"minecraft:dark_oak_stairs"},Rotation:[90f,-45f]}
summon block_display -3.5 121.75 -112.1 {Tags:[Lives],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]},block_state:{Name:"minecraft:dark_oak_stairs"},Rotation:[90f,-45f]}
summon block_display -3.5 122.25 -112.1 {Tags:[Lives],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]},block_state:{Name:"minecraft:dark_oak_stairs"},Rotation:[90f,-45f]}
summon block_display -3.5 122.75 -112.1 {Tags:[Lives],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]},block_state:{Name:"minecraft:dark_oak_stairs"},Rotation:[90f,-45f]}
summon block_display -3.5 123.25 -112.1 {Tags:[Lives],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]},block_state:{Name:"minecraft:dark_oak_stairs"},Rotation:[90f,-45f]}

summon block_display -3.5 121.285 -112.15 {Tags:[Lives,Lives1],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:cherry_stairs"},Rotation:[90f,-45f]}

summon text_display -3.484375 123.9 -112.005 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.4f,1.2f,1.4f]},text:{"text":"Lives","color":"#000000","bold":false,"underlined":true},background:16711680,Rotation:[180f,0f],Tags:[Lives]}