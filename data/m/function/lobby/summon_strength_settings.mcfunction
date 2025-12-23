scoreboard objectives add strength dummy "Player Strength"
kill @e[tag=Strength]
summon minecraft:interaction -5.50 121.25 -112.85 {Tags:[Strength1,Strength],height:0.5,width:0.5}
summon minecraft:interaction -5.50 121.75 -112.85 {Tags:[Strength2,Strength],height:0.5,width:0.5}
summon minecraft:interaction -5.50 122.25 -112.85 {Tags:[Strength3,Strength],height:0.5,width:0.5}
summon minecraft:interaction -5.50 122.75 -112.85 {Tags:[Strength4,Strength],height:0.5,width:0.5}
summon minecraft:interaction -5.50 123.25 -112.85 {Tags:[Strength5,Strength],height:0.5,width:0.5}

summon item_display -5.50 121.50 -113.01 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.50f,0.50f,0.50f]},item:{id:"minecraft:wooden_sword",Count:1b},Tags:[Strength]}
summon item_display -5.50 122.0 -113.01 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.50f,0.50f,0.50f]},item:{id:"minecraft:wooden_sword",Count:1b},Tags:[Strength]}
summon item_display -5.50 122.50 -113.01 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.50f,0.50f,0.50f]},item:{id:"minecraft:wooden_sword",Count:1b},Tags:[Strength]}
summon item_display -5.50 123.0 -113.01 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.50f,0.50f,0.50f]},item:{id:"minecraft:wooden_sword",Count:1b},Tags:[Strength]}
summon item_display -5.50 123.50 -113.01 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.50f,0.50f,0.50f]},item:{id:"minecraft:wooden_sword",Count:1b},Tags:[Strength]}

summon item_display -5.48250 121.48250 -113.03 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.40f,0.40f,0.40f]},item:{id:"minecraft:stone_sword",Count:1b},Tags:[Strength,Strength1]}

summon text_display -5.489583333 123.9 -113.005 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,1.2f,0.7f]},text:{"text":"Strength","color":"#000000","bold":true,"underlined":true},background:16711680,Rotation:[180f,0f],Tags:[Strength]}