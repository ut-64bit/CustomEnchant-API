#> custom_ench:core/main
# @within function custom_ench:system/tick

# storage作成
    data merge storage _index.d:custom_ench {Data:{BaseItem:{},AddItem:{}}}
    data modify storage _index.d:custom_ench Data.BaseItem merge from entity @s Item.tag
    data modify storage _index.d:custom_ench Data.AddItem merge from entity @e[tag=CE.Add,sort=nearest,limit=1] Item.tag

# 強化
    function custom_ench:merge

# storage削除
    data remove storage _index.d:custom_ench Data