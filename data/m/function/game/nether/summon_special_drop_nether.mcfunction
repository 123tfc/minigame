kill @e[tag=special_drop]

#pink
summon minecraft:text_display 4372.5 132.0 -803.5 {Tags:[pink_drop_td,special_drop],text:[{text:"\n Enhancment Drop ",italic:true,bold:true,color:"#FFAAAA"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}

#yellow
summon minecraft:text_display 4337.5 152.0 -757.5 {Tags:[yellow_drop_td,special_drop],text:[{text:"\n Offensive Drop ",italic:true,bold:true,color:"#FFFF44"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}
summon minecraft:text_display 4385.5 142.0 -834.5 {Tags:[yellow_drop_td,special_drop],text:[{text:"\n Offensive Drop ",italic:true,bold:true,color:"#FFFF44"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}

#blue
summon minecraft:text_display 4420.5 138.0 -762.5 {Tags:[blue_drop_td,special_drop],text:[{text:"\n Chaotic Drop ",italic:true,bold:true,color:"#AAAAFF"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}
summon minecraft:text_display 4333.5 126.0 -835.5 {Tags:[blue_drop_td,special_drop],text:[{text:"\n Chaotic Drop ",italic:true,bold:true,color:"#AAAAFF"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}

scoreboard players set @e[tag=special_drop] special_drop 0