#> custom_ench:core/set_lore/
# @internal

#> Temp
# @within custom_ench:core/set_lore/**
    #declare score_holder $Ench.lvl
    #declare tag CE.Item

# Init
    data modify storage _index.d:custom_ench Data.SetNBT set from entity @s Item.tag
    data modify storage _index.d:custom_ench Data.SetNBT.id set from entity @s Item.id
    data remove storage _index.d:custom_ench Data.SetNBT.display.Lore[]
    execute if data storage _index.d:custom_ench Data.SetNBT.StoredCustomEnchantments run data modify storage _index.d:custom_ench Data.Ench set from storage _index.d:custom_ench Data.SetNBT.StoredCustomEnchantments
    execute if data storage _index.d:custom_ench Data.SetNBT.CustomEnchantments run data modify storage _index.d:custom_ench Data.Ench set from storage _index.d:custom_ench Data.SetNBT.CustomEnchantments

# Lore
    summon armor_stand 0.0 0.0 0.0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["CE.Item"],HandItems:[{id:"minecraft:paper",Count:1b},{}]}
    execute as @e[tag=CE.Item] run data modify entity @s HandItems[0].id set from storage _index.d:custom_ench Data.SetNBT.id
    function custom_ench:core/set_lore/recursion
    execute as @e[tag=CE.Item] if predicate custom_ench:book unless data storage _index.d:custom_ench Data.SetNBT.StoredCustomEnchantments[1] run function custom_ench:core/set_lore/merge_item
    data modify storage _index.d:custom_ench Data.SetNBT.display.Lore set from entity @e[tag=CE.Item,limit=1] HandItems[0].tag.display.Lore

# Attribute
    execute as @e[tag=CE.Item] if data storage _index.d:custom_ench Data.SetNBT.CustomEnchantments run function #asset:custom_ench/set_attribute
    execute as @e[tag=CE.Item] if data storage _index.d:custom_ench Data.SetNBT.CustomEnchantments run function custom_ench:core/set_lore/set_attribute/
    data modify storage _index.d:custom_ench Data.SetNBT.AttributeModifiers set from entity @e[tag=CE.Item,limit=1] HandItems[0].tag.AttributeModifiers

# Merge
    data modify entity @s Item.tag set from storage _index.d:custom_ench Data.SetNBT

tp @e[tag=CE.Item] 0 -100 0
kill @e[tag=CE.Item]
data remove storage _index.d:custom_ench Data.SetNBT