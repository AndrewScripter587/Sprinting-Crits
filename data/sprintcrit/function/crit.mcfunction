playsound entity.player.attack.crit player @a ~ ~ ~ 1 1 0
#say ow
execute at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["Head","PositioningMarker"]}
execute at @s anchored feet positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["Feet","PositioningMarker"]}

#Math to calculate center(-ish) of body
execute store result score HeadY Temp run data get entity @e[limit=1,sort=nearest,type=marker,tag=Head] Pos[1] 100
execute store result score FeetY Temp run data get entity @e[limit=1,sort=nearest,type=marker,tag=Feet] Pos[1] 100
scoreboard players set 2 Temp 2
scoreboard players operation BodyHeight Temp = HeadY Temp
scoreboard players operation BodyHeight Temp -= FeetY Temp
scoreboard players operation HalfBodyHeight Temp = BodyHeight Temp
scoreboard players operation HalfBodyHeight Temp /= 2 Temp
scoreboard players operation BodyY Temp = FeetY Temp
execute at @s run summon marker ~ ~ ~ {Tags:["Body","PositioningMarker"]}
execute store result entity @e[type=marker,tag=Body,limit=1] Pos[1] double 0.01 run scoreboard players operation BodyY Temp += HalfBodyHeight Temp

execute at @e[type=marker,limit=1,sort=nearest,tag=Body] run particle crit ~ ~0.05 ~ 0 0.4 0 0.5 15
$execute at @s if entity @e[tag=attacker] run damage @s $(damage) player_attack by @e[tag=attacker,limit=1]
$execute unless entity @e[tag=attacker] run damage @s $(damage) player_attack

kill @e[tag=PositioningMarker,type=marker]