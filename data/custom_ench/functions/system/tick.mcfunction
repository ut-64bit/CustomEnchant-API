#> custom_ench:system/tick
# tick
# @within tag/function minecraft:tick

# tag削除
    tag @e[tag=CE.Base] remove CE.Base
    tag @e[tag=CE.Add] remove CE.Add

# tag付与
    execute at @a as @e[type=item,distance=..10] at @s if block ~ ~-0.1 ~ #anvil run function custom_ench:tag

# 処理
    execute as @e[tag=CE.Base] at @s if entity @e[tag=CE.Add,distance=..1.5] run function custom_ench:core/main

# score_holder削除
    scoreboard players reset * CE.Temporary