

# Get Info:
# Name Of Item
# Color Of Name
# Category
# Right-Click or Pick up
# - Throw or Use
#
# 
# 
# 
# 
# 
# 
# Description:
# -
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 

print("Generate Drop Item")
name=str(input("Name: "))
item=str(input("Item: "))
color=str(input("Color of Name: ")).lower()

category_valid = {"d":"default","y":"yellow","b":"blue","p":"pink"}
while True:
    category = str(input("Category (d/y/b/p): ").lower())
    if category in category_valid:
        break
    print("Invalid input, try again.")



r_click_valid = {"y","n"}
while True:
    r_click = str(input("Right-Click Detection (y/n): ").lower())
    if r_click in r_click_valid:
        break
    print("Invalid input, try again.")


if r_click == "y":
    throw_valid = {"y","n"}
    while True:
        throw = str(input("Throwable (y/n): ").lower())
        if throw in throw_valid:
            break
        print("Invalid input, try again.")

if r_click == "n":
    pick_up_valid = {"y","n"}
    while True:
        pick_up = str(input("Pick-up Detection (y/n): ").lower())
        if pick_up in pick_up_valid:
            break
        print("Invalid input, try again.")


if r_click == "y":
    description = input("Description: Right-Clicking ")
    description = str('{"color":"yellow","text":"Right-Clicking "},{"color":"white","text": "' + description + '"}')
else:
    description = input("Description: ")
    description = str('{"color":"white","text": "' + description + '"}')

notice = str(input("Notice (Leave Empty To Avoid): "))
if notice == "":
    notice = ""
else:
    notice = str(',{"color":"#f5a29d","text":"\\n\\n Notice: \\n ' + notice + '"}')




################################################################################




filename=str(name.lower().replace(" ", "_"))

if category in {"y","b","p"}:
    functionname=str("data/m/function/game/drops/" + category_valid[category] + "/" + filename + ".mcfunction")
    used_functionname=str("data/m/function/game/drops/" + category_valid[category] + "/used_" + filename + ".mcfunction")
    dialogname=str("data/m/dialog/"+ category_valid[category] + "/" + filename + ".json")
else:
    functionname=str("data/m/function/game/drops/" + filename + ".mcfunction")
    used_functionname=str("data/m/function/game/drops/used_" + filename + ".mcfunction")
    dialogname=str("data/m/dialog/default/"+ filename + ".json")

advancementname=str("data/m/advancement/powerups/"+ filename + ".json")


print("Name: "+name)
print("Filename: "+ filename)
print("Color: "+ color)
print("Category: "+ category_valid[category])


if r_click == "y":
    #Used Throw Function
    with open(used_functionname, "w", encoding="utf-8") as f:
        f.write('# ' + name + '\n')
        # f.write('# summon item ~ ~ ~ {Item:{id:"' + item + '",components:{"consumable":{consume_seconds:10000},"food":{"nutrition":0.0f,"saturation":0.0f,"can_always_eat":true},"custom_name":'{"text":"' + name + '","color":"dark_gray","italic":false}',"max_stack_size":1}},CustomName:'{"text":"' + name + '","color":"dark_gray","italic":false}',CustomNameVisible:1b}')

        f.write('advancement revoke @s only m:powerups/' + filename + '\n')

        if throw == "y":
            f.write('execute at @s facing ^ ^ ^1 positioned 0. 0. 0. positioned ^ ^ ^1.5 run summon marker ~ ~ ~ {Tags:[temp_' + filename + '_marker]}\n')
            f.write('execute at @s anchored eyes run summon snowball ^ ^ ^1 {Item:{id:"minecraft:' + item + '"},Tags:[temp_' + filename + ']}\n')
            f.write('execute as @e[tag=temp_' + filename + '] run data modify entity @s Motion set from entity @n[tag=temp_' + filename + '_marker] Pos\n')
            f.write('execute as @e[tag=temp_' + filename + '_marker] run tp @s @n[tag=temp_' + filename + ']\n')
            f.write('execute as @e[tag=temp_' + filename + '_marker] run data modify entity @s Tags set value [' + filename + '_marker]\n')
            f.write('execute as @e[tag=temp_' + filename + '] run data modify entity @s Tags set value [' + filename + ']\n')
            f.write('playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 1 0.5\n')
        if throw == "n":
            f.write('#Add Playsound Effect Here\n')
        f.write('execute if entity @s[nbt={equipment:{offhand:{id: "minecraft:' + item + '", components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:' + item + '",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.offhand with air\n')
        f.write('execute if entity @s[nbt={SelectedItem:{id:"minecraft:' + item + '",components:{"minecraft:food":{nutrition:0,saturation:0.0f}}}}] run item replace entity @s weapon.mainhand with air\n')
    
    
    if throw == "y":
        with open(functionname, "w", encoding="utf-8") as f:
            f.write('# ' + name + '\n')
            f.write('execute at @e[tag=' + filename + '] as @e[tag=' + filename + '_marker,sort=nearest,limit=1] run tp @s @n[tag=' + filename + ']\n')
            f.write('execute as @e[tag=' + filename + '_marker] at @s unless entity @e[tag=' + filename + ',distance=..5] run tag @s add boom\n\n')
            f.write('# execute at @e[tag=' + filename + '_marker,tag=boom] run playsound...\n')
            f.write('# execute at @e[tag=' + filename + '_marker,tag=boom] run particle...\n')
            f.write('# execute at @e[tag=' + filename + '_marker,tag=boom] as @e[distance=..3] run EFFEKT HER!\n\n')
            f.write('kill @e[tag=' + filename + '_marker,tag=boom]\n')

    with open(advancementname, "w", encoding="utf-8") as f:
        f.write('{\n')
        f.write('    "criteria": {\n')
        f.write('      "' + item + '": {\n')
        f.write('        "trigger": "minecraft:using_item",\n')
        f.write('        "conditions": {\n')
        f.write('          "item": {\n')
        f.write('            "items": "minecraft:' + item + '",\n')
        f.write('            "components": {\n')
        f.write('              "minecraft:food": {\n')
        f.write('                "nutrition": 0,\n')
        f.write('                "saturation": 0,\n')
        f.write('                "can_always_eat": true\n')
        f.write('              }\n')
        f.write('            }\n')
        f.write('          }\n')
        f.write('        }\n')
        f.write('      }\n')
        f.write('       },\n')
        f.write('       "rewards": {\n')
        f.write('         "function": "m:game/drops/' + category_valid[category] + '/used_' + filename + '"\n')
        f.write('       }\n')
        f.write(' }\n')









# input("Description: ")
# input("Notice: ")


with open(dialogname, "w", encoding="utf-8") as f:
    f.write('{\n')
    f.write('"type": "minecraft:notice",\n')
    f.write('"title": [{"text":"       "},{"color":"#55ee88","text":"KnockBlock Guidebook"}],\n')
    f.write('"body": [\n')
    f.write('    {\n')
    f.write('    "type": "minecraft:item",\n')
    f.write('    "item": {\n')
    f.write('        "id": "minecraft:' + item + '",\n')
    f.write('        "components": {\n')
    f.write('        "minecraft:enchantment_glint_override": true\n')
    f.write('        }\n')
    f.write('    },\n')
    f.write('    "height": 16\n')
    f.write('    },\n')
    f.write('    {\n')
    f.write('    "type": "minecraft:plain_message",\n')
    f.write('    "contents": {"text":"' + name + '","color":"'+ color +'","bold": true,"underlined": true}\n')
    f.write('    },\n')
    f.write('    {\n')
    f.write('    "type": "minecraft:plain_message",\n')
    f.write('    "contents": [' + description + notice + ']\n')
    f.write('    }\n')
    f.write('],\n')
    f.write('"action": {\n')
    f.write('    "label": "Done",\n')
    f.write('    "action": {\n')
    f.write('    "type": "minecraft:show_dialog",\n')
    f.write('    "dialog": "m:' + category_valid[category] + '/' + category_valid[category] + '"\n')
    f.write('    }\n')
    f.write('}\n')
    f.write('}\n')



