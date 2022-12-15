#> uninstall:custom_ench/message
# @within tag/function uninstall:**/message

execute unless score @s RunCheck = @s RunCheck run tellraw @s {"text": "そのコマンドは実行することができません","color": "red"}
execute if score @s RunCheck = @s RunCheck run tellraw @s [" "," ",{"text": "▶ CustomEnchantCore","italic": true}]