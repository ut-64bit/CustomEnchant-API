#> custom_ench:loot/tier/2
# @within function custom_ench:loot/copy

data modify storage _index.d:custom_ench Data.Loot append from storage asset:custom_ench Data.Loot.Custom[].Enchant.Medium[]
execute unless entity @p[gamemode=creative] run clear @p lapis_lazuli 2
execute unless entity @p[gamemode=creative] run experience add @p -2 levels