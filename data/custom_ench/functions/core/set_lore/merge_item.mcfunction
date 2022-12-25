#> custom_ench:core/set_lore/merge_item
# @within function custom_ench:core/set_lore/

function #asset:custom_ench/merge_item
execute as @e[tag=CE.Item,limit=1] run item modify entity @s weapon.mainhand custom_ench:merge_item