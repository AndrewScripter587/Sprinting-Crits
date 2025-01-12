#Display a message saying the pack is loading
tellraw @a {"text":"Loading Sprinting Crits","color":"yellow"}

scoreboard objectives add DamageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add DamageDealtAbsorbed minecraft.custom:minecraft.damage_dealt_absorbed
scoreboard objectives add DamageDealtResisted minecraft.custom:minecraft.damage_dealt_resisted
scoreboard objectives add TotalDamageDealt dummy
scoreboard objectives add Sprinting dummy
scoreboard objectives add WereSprinting dummy
scoreboard objectives add Falling dummy
scoreboard objectives add WereFalling dummy
scoreboard objectives add Settings dummy
scoreboard objectives add Temp dummy

tellraw @a {"text":"Sprinting Crits loaded successfully!","color":"green"}