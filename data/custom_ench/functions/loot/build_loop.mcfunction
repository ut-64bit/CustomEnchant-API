#> custom_ench:loot/build_loop
# @within function
#   custom_ench:loot/
#   custom_ench:loot/build_loop

execute if score $out Random matches 1.. run data remove storage _index.d:custom_ench Data.Loot[0]

scoreboard players remove $out Random 1
execute if score $out Random matches 1.. run function custom_ench:loot/build_loop