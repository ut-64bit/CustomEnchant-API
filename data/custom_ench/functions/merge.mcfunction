#> custom_ench:merge
# @within function custom_ench:core/main

# 初期化処理
    scoreboard players set $lvl CE.Temporary 0
    scoreboard players set $Consume CE.Temporary 1

# 素材のデータ取得
    execute store result score $Add.Count CE.Temporary run data get storage _index.d:custom_ench _.AddItem.Count 1.0

# 強化
    function #asset:custom_ench/merge
