#> custom_ench:core/set_lore/set_attribute/base
# @within function custom_ench:core/set_lore/

execute unless data storage _index.d:custom_ench Data.SetNBT.AttributeModifiers[{Name:"CustomEnch.Base"}] run data remove storage _index.d:custom_ench Data.SetNBT.AttributeModifiers[{Name:"CustomEnch.Base"}]
item modify entity @s weapon.mainhand custom_ench:attribute/sword/netherite
item modify entity @s weapon.mainhand custom_ench:attribute/sword/diamond
item modify entity @s weapon.mainhand custom_ench:attribute/sword/golden
item modify entity @s weapon.mainhand custom_ench:attribute/sword/iron
item modify entity @s weapon.mainhand custom_ench:attribute/sword/stone
item modify entity @s weapon.mainhand custom_ench:attribute/sword/wooden