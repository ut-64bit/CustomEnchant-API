#> custom_ench:tag
# @within function custom_ench:system/tick

particle electric_spark ~ ~0.4 ~ 0.1 0.1 0.1 0 1 normal @a
execute unless entity @e[tag=CE.Base,distance=..1.5] run tag @s add CE.Base
execute unless entity @s[tag=CE.Base] unless entity @e[tag=CE.Add,distance=..1.5] if entity @e[tag=CE.Base,distance=..1.5] run tag @s add CE.Add