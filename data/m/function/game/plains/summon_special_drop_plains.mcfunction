kill @e[tag=special_drop]

#pink
summon minecraft:text_display -197.5 146.0 -786.5 {Tags:[pink_drop_td,special_drop],text:[{text:"\n Enhancment Drop ",italic:true,bold:true,color:"#FFAAAA"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}

#yellow
summon minecraft:text_display -166.5 132.0 -790.5 {Tags:[yellow_drop_td,special_drop],text:[{text:"\n Offensive Drop ",italic:true,bold:true,color:"#FFFF44"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}
summon minecraft:text_display -241.5 142.0 -791.5 {Tags:[yellow_drop_td,special_drop],text:[{text:"\n Offensive Drop ",italic:true,bold:true,color:"#FFFF44"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}

#blue
summon minecraft:text_display -210.5 131.0 -753.5 {Tags:[blue_drop_td,special_drop],text:[{text:"\n Chaotic Drop ",italic:true,bold:true,color:"#AAAAFF"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}
summon minecraft:text_display -188.5 125.0 -813.5 {Tags:[blue_drop_td,special_drop],text:[{text:"\n Chaotic Drop ",italic:true,bold:true,color:"#AAAAFF"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}

scoreboard players set @e[tag=special_drop] special_drop 0