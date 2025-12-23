kill @e[tag=st_group]

summon minecraft:interaction 0.50 122.10 -111.90 {height:1.05,width:1.4,Tags:[st_group,start_button]}
summon minecraft:block_display 0.50 122.50 -112.00 {block_state:{Name:"minecraft:red_shulker_box"},transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[-0.7f,-0.7f,-0.7f],scale:[1.4f,1.4f,1.4f]}, Rotation:[0f,-45f],Tags:[st_group,start_button]}
scoreboard objectives add start_button dummy "Start Button Timer"
scoreboard players set @e[tag=dummy] start_button 0

summon minecraft:block_display -0.35 120.8 -111.5 {block_state:{Name:"minecraft:lodestone"},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.7f,1.7f,1.7f]},Rotation:[0.0f,-45.0f],Tags:[st_group,start_button_rock]}
summon minecraft:text_display 0.53 122.71 -112.785 {Tags:[st_group,start_button],background:0,text: {"text":"GO!","color":"#5F0000","bold":true},Rotation:[180.0f,-45f]}
data modify entity @n[tag=start_button,type=text_display] transformation.scale set value [2.5f,2.5f,1.0f]


summon text_display 0.50 124 -112.0 {text:[{"text":"\n Press To ",bold:true,color:"yellow"},{"text":"\nStart! \n",color:"red"}],Tags:[st_group,start_button_td],billboard:vertical}

summon block_display 0.50 122.10 -111.90 {Tags:[st_group,start_button_block_mount]}
summon shulker 0 121 -120 {Invulnerable:1,Silent:1,NoAI:1,Tags:[st_group,start_button_block,start_button],Invisible:1}
ride @e[limit=1,tag=start_button_block] mount @e[limit=1,tag=start_button_block_mount]
effect give @e[tag=start_button_block] minecraft:invisibility infinite 0 true
attribute @e[type=minecraft:shulker,limit=1,tag=start_button_block] minecraft:scale base set 0.9