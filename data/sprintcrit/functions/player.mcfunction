scoreboard players operation @s WereSprinting = @s Sprinting
execute store result score @s Sprinting run attribute @s movement_speed modifier value get sprinting 100
scoreboard players operation @s WereFalling = @s Falling
scoreboard players set @s Falling 0
execute store result score YV Temp run data get entity @s Motion[1] 100
execute unless data entity @s {OnGround:1b} if score YV Temp matches ..-5 run scoreboard players set @s Falling 1
scoreboard players set @s TotalDamageDealt 0
execute store result score Base Temp run attribute @s attack_damage get 100
execute store result score Sharpness Temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:sharpness" 50
execute if score Sharpness Temp matches 1.. run scoreboard players add Sharpness Temp 50
scoreboard players operation Base Temp += Sharpness Temp
execute store result score Smite Temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:smite" 250
execute store result score Bane Temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:bane_of_arthropods" 250
scoreboard players operation @s TotalDamageDealt = Base Temp