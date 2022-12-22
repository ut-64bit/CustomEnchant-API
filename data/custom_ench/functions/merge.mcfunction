#> custom_ench:merge
# @within function custom_ench:core/main

# 初期化処理
    scoreboard players set $lvl CE.Temporary 0
    scoreboard players set $Consume CE.Temporary 1
    execute unless data storage _index.d:custom_ench Data.BaseItem.StoredCustomEnchantments unless data storage _index.d:custom_ench Data.BaseItem.CustomEnchantments run data modify storage _index.d:custom_ench Data.BaseItem.CustomEnchantments set value []
    execute if data storage _index.d:custom_ench Data.BaseItem.StoredCustomEnchantments run data modify storage _index.d:custom_ench Data.Base.Enchantments set from storage _index.d:custom_ench Data.BaseItem.StoredCustomEnchantments
    execute if data storage _index.d:custom_ench Data.BaseItem.CustomEnchantments run data modify storage _index.d:custom_ench Data.Base.Enchantments set from storage _index.d:custom_ench Data.BaseItem.CustomEnchantments
    execute if data storage _index.d:custom_ench Data.AddItem.StoredCustomEnchantments run data modify storage _index.d:custom_ench Data.Add.Enchantments set from storage _index.d:custom_ench Data.AddItem.StoredCustomEnchantments
    execute if data storage _index.d:custom_ench Data.AddItem.CustomEnchantments run data modify storage _index.d:custom_ench Data.Add.Enchantments set from storage _index.d:custom_ench Data.AddItem.CustomEnchantments

# 強化
    function #asset:custom_ench/merge
