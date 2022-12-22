#> custom_ench:loot/tier/1
# @within function custom_ench:loot/copy

data modify storage _index.d:custom_ench Data.Loot append from storage asset:custom_ench Data.Loot.Custom[].Enchant.Low[]
execute unless entity @p[gamemode=creative] run clear @p lapis_lazuli 1
execute unless entity @p[gamemode=creative] run experience add @p -1 levels