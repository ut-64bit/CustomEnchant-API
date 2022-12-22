#> custom_ench:system/tick
# tick
# @within tag/function minecraft:tick

#>
# @private
    #define score_holder $XP.Level
    #define score_holder $Lapis.Count

# tag削除
    tag @e[tag=CE.Base] remove CE.Base
    tag @e[tag=CE.Add] remove CE.Add
    tag @e[tag=CE.Book] remove CE.Book

# tag付与
    execute as @e[type=item] at @s if entity @a[distance=..10] if data entity @s {Item:{Count:1b}} if block ~ ~-0.1 ~ #anvil run function custom_ench:tag
    execute as @e[type=item] at @s if entity @a[distance=..10] if data entity @s {Item:{id:"minecraft:book"}} unless data entity @s Item.tag.StoredCustomEnchantments if block ~ ~-0.7 ~ enchanting_table run tag @s add CE.Book
    execute store result score $XP.Level CE.Temporary run experience query @p levels
    execute store result score $Lapis.Count CE.Temporary run clear @p lapis_lazuli 0

# 処理
    execute as @e[tag=CE.Base] at @s unless entity @p[gamemode=creative] if score $XP.Level CE.Temporary matches 5.. if entity @e[tag=CE.Add,distance=..1.5] run function custom_ench:core/main
    execute as @e[tag=CE.Base] at @s if entity @p[gamemode=creative] run function custom_ench:core/main
    execute as @e[tag=CE.Book] at @s unless entity @p[gamemode=creative] if score $XP.Level CE.Temporary matches 10.. if score $Lapis.Count CE.Temporary matches 1.. run function custom_ench:loot/
    execute as @e[tag=CE.Book] at @s if entity @p[gamemode=creative] run function custom_ench:loot/

# score_holder削除
    scoreboard players reset * CE.Temporary

    data remove storage _index.d:custom_ench Data