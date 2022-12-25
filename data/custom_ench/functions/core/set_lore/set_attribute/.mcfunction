#> custom_ench:core/set_lore/set_attribute/
# @within function custom_ench:core/set_lore/

execute if data storage _index.d:custom_ench Data.SetNBT.AttributeModifiers[{Name:"CustomEnch.Base"}] run data remove storage _index.d:custom_ench Data.SetNBT.AttributeModifiers[{Name:"CustomEnch.Base"}]

# Sword
    execute if predicate custom_ench:sword run function custom_ench:core/set_lore/set_attribute/sword

# Pickaxe
    execute if predicate custom_ench:pickaxe run function custom_ench:core/set_lore/set_attribute/pickaxe

# Axe
    execute if predicate custom_ench:axe run function custom_ench:core/set_lore/set_attribute/axe

# Shovel
    execute if predicate custom_ench:shovel run function custom_ench:core/set_lore/set_attribute/shovel

# Hoe
    execute if predicate custom_ench:hoe run function custom_ench:core/set_lore/set_attribute/hoe

# Helmet
    execute if predicate custom_ench:helmet run function custom_ench:core/set_lore/set_attribute/helmet

# Chestplate
    execute if predicate custom_ench:chestplate run function custom_ench:core/set_lore/set_attribute/chestplate

# Leggings
    execute if predicate custom_ench:leggings run function custom_ench:core/set_lore/set_attribute/leggings

# Boots
    execute if predicate custom_ench:boots run function custom_ench:core/set_lore/set_attribute/boots