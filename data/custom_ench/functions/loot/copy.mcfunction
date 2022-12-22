#> custom_ench:loot/copy
# @within function custom_ench:loot/

#>
# @private
    #define score_holder $Lapis.Count
    #define score_holder $XP.Level
    #define score_holder $Tier

# Score

# Tier
    scoreboard players set $Tier CE.Temporary 0
    execute if entity @p[gamemode=creative] run scoreboard players set $Tier CE.Temporary 1
    execute if score $XP.Level CE.Temporary matches 10.. if score $Lapis.Count CE.Temporary matches 1.. run scoreboard players set $Tier CE.Temporary 1
    execute if score $XP.Level CE.Temporary matches 20.. if score $Lapis.Count CE.Temporary matches 2.. run scoreboard players set $Tier CE.Temporary 2
    execute if score $XP.Level CE.Temporary matches 30.. if score $Lapis.Count CE.Temporary matches 3.. run scoreboard players set $Tier CE.Temporary 3

execute if score $Tier CE.Temporary matches 1 run function custom_ench:loot/tier/1
execute if score $Tier CE.Temporary matches 2 run function custom_ench:loot/tier/2
execute if score $Tier CE.Temporary matches 3 run function custom_ench:loot/tier/3

data remove storage _index.d:custom_ench Data.Loot[{Enable:false}]