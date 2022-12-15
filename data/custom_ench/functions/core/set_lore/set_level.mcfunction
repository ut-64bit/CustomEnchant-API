#> custom_ench:core/set_lore/set_level
# @within function custom_ench:core/set_lore/recursion

data modify storage _index.d:custom_ench Data.Level set value ""
execute if score $Ench.lvl CE.Temporary matches 01 run data modify storage _index.d:custom_ench Data.Level set value "I"
execute if score $Ench.lvl CE.Temporary matches 02 run data modify storage _index.d:custom_ench Data.Level set value "II"
execute if score $Ench.lvl CE.Temporary matches 03 run data modify storage _index.d:custom_ench Data.Level set value "III"
execute if score $Ench.lvl CE.Temporary matches 04 run data modify storage _index.d:custom_ench Data.Level set value "IV"
execute if score $Ench.lvl CE.Temporary matches 05 run data modify storage _index.d:custom_ench Data.Level set value "V"
execute if score $Ench.lvl CE.Temporary matches 06 run data modify storage _index.d:custom_ench Data.Level set value "VI"
execute if score $Ench.lvl CE.Temporary matches 07 run data modify storage _index.d:custom_ench Data.Level set value "VII"
execute if score $Ench.lvl CE.Temporary matches 08 run data modify storage _index.d:custom_ench Data.Level set value "VIII"
execute if score $Ench.lvl CE.Temporary matches 09 run data modify storage _index.d:custom_ench Data.Level set value "IX"
execute if score $Ench.lvl CE.Temporary matches 10 run data modify storage _index.d:custom_ench Data.Level set value "X"
execute if score $Ench.lvl CE.Temporary matches 11.. store result storage _index.d:custom_ench Data.Level int 1.0 run scoreboard players get $Ench.lvl CE.Temporary