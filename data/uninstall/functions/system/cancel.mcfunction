#> uninstall:system/cancel
# @within advancement uninstall:cancel

execute unless score @s RunCheck = @s RunCheck run tellraw @s {"text": "そのコマンドは実行することができません","color": "red"}

execute if score @s RunCheck = @s RunCheck run advancement revoke @s only uninstall:cancel

execute if score @s RunCheck = @s RunCheck run tellraw @s {"text": "アンインストールをキャンセルしました"}
execute if score @s RunCheck = @s RunCheck run tellraw @s {"text": "-----------------------------------------------------"}

execute if score @s RunCheck = @s RunCheck run function uninstall:system/selected