#> uninstall:system/finish
# @within tag/function uninstall:**/run

execute unless score @s RunCheck = @s RunCheck run tellraw @s {"text": "そのコマンドは実行することができません","color": "red"}

execute if score @s RunCheck = @s RunCheck run tellraw @s {"text": "アンインストールが完了しました"}
execute if score @s RunCheck = @s RunCheck run tellraw @s {"text": ""}
execute if score @s RunCheck = @s RunCheck run tellraw @s {"text": "-----------------------------------------------------"}
execute if score @s RunCheck = @s RunCheck run function uninstall:system/selected