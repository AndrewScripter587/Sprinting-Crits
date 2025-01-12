execute as @a at @s run function sprintcrit:player
execute as @a at @s run function sprintcrit:player.oldattrib
execute as @e[nbt={HurtTime:10s}] at @s run function sprintcrit:livingentity
scoreboard players reset @e DamageDealt
scoreboard players reset @e DamageDealtAbsorbed
scoreboard players reset @e DamageDealtResisted
scoreboard players reset @e TotalDamageDealt