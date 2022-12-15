#> custom_ench:core/set_lore/recursion
# @within function
#   custom_ench:core/set_lore/
#   custom_ench:core/set_lore/recursion

data modify storage _index.d:custom_ench Data.First append from storage _index.d:custom_ench Data.Ench[0]
data remove storage _index.d:custom_ench Data.Ench[0]

function custom_ench:core/set_lore/set_name

scoreboard players set $Ench.lvl CE.Temporary -1
function custom_ench:core/set_lore/single_level
execute if score $Ench.lvl CE.Temporary matches -1 store result score $Ench.lvl CE.Temporary run data get storage _index.d:custom_ench Data.First[0].lvl
function custom_ench:core/set_lore/set_level
execute as @e[tag=CE.Item,limit=1] run item modify entity @s container.0 custom_ench:set_lore

data remove storage _index.d:custom_ench Data.First[0]

execute if data storage _index.d:custom_ench Data.Ench[0] run function custom_ench:core/set_lore/recursion