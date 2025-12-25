f.write('execute at @e[tag=' + filename + '] as @e[tag=' + filename + '_marker,sort=nearest,limit=1] run tp @s @n[tag=' + filename + ']\n')
f.write('execute as @e[tag=' + filename + '_marker] at @s unless entity @e[tag=' + filename + ',distance=..5] run tag @s add boom\n\n')

f.write('# execute at @e[tag=' + filename + '_marker,tag=boom] run playsound...\n')
f.write('# execute at @e[tag=' + filename + '_marker,tag=boom] run particle...\n')
f.write('# execute at @e[tag=' + filename + '_marker,tag=boom] as @e[distance=..3] run EFFEKT HER!\n\n')

f.write('kill @e[tag=' + filename + '_marker,tag=boom]\n')