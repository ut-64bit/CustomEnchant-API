#> custom_ench:system/load
# load
# @within tag/function minecraft:load

scoreboard objectives add CE.Temporary dummy
scoreboard objectives add XP.Level level
scoreboard objectives add Random dummy

scoreboard players set $lcg_a Random 1630111353
scoreboard players set $lcg_c Random 1623164762
scoreboard players set $lcg_m Random 2147483647
scoreboard players set $8 Random 8
execute unless score $lcg Random = $lcg Random store result score $lcg Random run seed

function #asset:custom_ench/data_set