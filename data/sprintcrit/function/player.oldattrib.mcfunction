scoreboard players operation @s WereSprinting = @s Sprinting
execute store result score @s Sprinting run attribute @s generic.movement_speed modifier value get sprinting 100
scoreboard players operation @s WereFalling = @s Falling
scoreboard players set @s Falling 0
execute store result score YV Temp run data get entity @s Motion[1] 100
execute unless data entity @s {OnGround:1b} if score YV Temp matches ..-5 run scoreboard players set @s Falling 1
scoreboard players operation @s TotalDamageDealt = @s DamageDealt
scoreboard players operation @s TotalDamageDealt += @s DamageDealtAbsorbed
scoreboard players operation @s TotalDamageDealt += @s DamageDealtResisted