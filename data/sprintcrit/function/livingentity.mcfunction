execute on attacker unless entity @s[type=player] run return fail
tag @s add this
#say Ow
execute on attacker run tag @s add attacker
#execute as @e[tag=attacker] run say I did it
scoreboard players set 15 Temp 15

#Debug text
#execute if score @e[limit=1,tag=attacker] WereSprinting matches 1.. run say they were sprinting
#execute unless score @e[limit=1,tag=attacker] WereSprinting matches 1.. run say they were not sprinting
#execute if score @e[limit=1,tag=attacker] WereFalling matches 1.. run say they were falling
#execute unless score @e[limit=1,tag=attacker] WereFalling matches 1.. run say they were not falling

scoreboard players operation CritDamage Temp = @e[tag=attacker,limit=1] TotalDamageDealt
execute store result storage temp damage float 0.01 run scoreboard players operation CritDamage Temp *= 15 Temp
execute if score @e[limit=1,tag=attacker] WereSprinting matches 1.. if score @e[limit=1,tag=attacker] WereFalling matches 1.. at @e[limit=1,tag=attacker] unless block ~ ~ ~ water unless block ~ ~ ~ lava at @s run function sprintcrit:crit with storage temp
tag @e remove this
tag @e remove attacker