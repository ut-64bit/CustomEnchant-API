#> custom_ench:core/set_lore/
# @within function custom_ench:core/success/

#> Temp
# @within custom_ench:core/set_lore/**
    #declare score_holder $Ench.lvl
    #declare tag CE.Item

data remove storage _index.d:custom_ench Data.BaseItem.display.Lore[]
execute if data storage _index.d:custom_ench Data.BaseItem.StoredCustomEnchantments run data modify storage _index.d:custom_ench Data.Ench set from storage _index.d:custom_ench Data.BaseItem.StoredCustomEnchantments
execute if data storage _index.d:custom_ench Data.BaseItem.CustomEnchantments run data modify storage _index.d:custom_ench Data.Ench set from storage _index.d:custom_ench Data.BaseItem.CustomEnchantments

summon chest_minecart 0.0 0.0 0.0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["CE.Item"],Items:[{Slot:0b,id:"minecraft:paper",Count:1b}]}

function custom_ench:core/set_lore/recursion
data modify storage _index.d:custom_ench Data.BaseItem.display.Lore set from entity @e[tag=CE.Item,limit=1] Items[{Slot:0b}].tag.display.Lore

tp @e[tag=CE.Item] 0 -100 0
kill @e[tag=CE.Item]