execute store result score random_blue_item drop_item run random value 1..5

execute at @s if score random_blue_item drop_item matches 1 run summon minecraft:skeleton ~ ~ ~ {equipment:{head:{id:"minecraft:spawner",count:1},mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"power":1,"punch":10}}}},Tags:[grenade_mob]}
execute at @s if score random_blue_item drop_item matches 1 run playsound minecraft:entity.skeleton.converted_to_stray master @a ~ ~ ~ 1 1
execute at @s if score random_blue_item drop_item matches 2 run summon minecraft:zombie ~ ~ ~ {equipment:{head:{id:"minecraft:spawner",count:1},mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"sharpness":6,"knockback":15}}}},Tags:[grenade_mob]}
execute at @s if score random_blue_item drop_item matches 2 run playsound minecraft:entity.zombie.hurt master @a ~ ~ ~ 1 0.5
execute at @s if score random_blue_item drop_item matches 3 run summon minecraft:zoglin ~ ~ ~ {Tags:[grenade_mob]}
execute at @s if score random_blue_item drop_item matches 3 run playsound minecraft:entity.zoglin.angry master @a ~ ~ ~ 1 1
execute at @s if score random_blue_item drop_item matches 4 run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,Tags:[grenade_mob]}
execute at @s if score random_blue_item drop_item matches 4 run playsound minecraft:entity.rabbit.attack master @a ~ ~ ~ 1 1
execute at @s if score random_blue_item drop_item matches 5 run summon minecraft:vindicator ~ ~ ~ {equipment:{head:{id:"minecraft:spawner",count:1},mainhand:{id:"minecraft:iron_axe",count:1,components:{"minecraft:enchantments":{"sharpness":1,"knockback":5}}}},Tags:[grenade_mob]}
execute at @s if score random_blue_item drop_item matches 5 run playsound minecraft:entity.vindicator.celebrate master @a ~ ~ ~ 1 0.8
