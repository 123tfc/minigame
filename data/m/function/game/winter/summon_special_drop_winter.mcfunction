kill @e[tag=special_drop]

#pink
summon minecraft:text_display 944.5 122.00 -801.5 {Tags:[pink_drop_td,special_drop],text:[{text:"\n Enhancment Drop ",italic:true,bold:true,color:"#FFAAAA"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}

#yellow
summon minecraft:text_display 889.50 106.00 -821.50 {Tags:[yellow_drop_td,special_drop],text:[{text:"\n Offensive Drop ",italic:true,bold:true,color:"#FFFF44"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}
summon minecraft:text_display 988.50 108.00 -800.50 {Tags:[yellow_drop_td,special_drop],text:[{text:"\n Offensive Drop ",italic:true,bold:true,color:"#FFFF44"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}

#blue
summon minecraft:text_display 944.50 106.00 -756.50 {Tags:[blue_drop_td,special_drop],text:[{text:"\n Chaotic Drop ",italic:true,bold:true,color:"#AAAAFF"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}
summon minecraft:text_display 948.50 110.00 -836.50 {Tags:[blue_drop_td,special_drop],text:[{text:"\n Chaotic Drop ",italic:true,bold:true,color:"#AAAAFF"},{text:"\n||||||||||\n",italic:true,bold:true,color:"#FF0000"}],billboard:"vertical"}

scoreboard players set @e[tag=special_drop] special_drop 0