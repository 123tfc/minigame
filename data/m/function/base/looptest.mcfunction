# Start of loop
scoreboard players set $counter loop 0

# Loop
execute as @a[scores={counter=..100}] run say @s[scores={counter=..100}]
execute as @a[scores={counter=..100}] run scoreboard players add $counter loop 1