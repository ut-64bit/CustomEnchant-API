#> custom_ench:core/success/
# 強化の成功処理
# @within function asset:custom_ench/merge/**

# エンチャントをアイテムに適用
    data modify entity @s Item.tag set from storage _index.d:custom_ench Data.BaseItem
    function custom_ench:core/set_lore/

# 素材を消費
    execute at @s as @e[tag=CE.Add,sort=nearest,limit=1] run function custom_ench:core/success/consume

# ストレージ削除
    data remove storage _index.d:custom_ench Data

# 演出
    playsound minecraft:block.anvil.use block @a ~ ~ ~ 1 1