#> uninstall:system/selected
# @within function
#   uninstall:system/cancel
#   uninstall:system/finish

execute unless score @s RunCheck = @s RunCheck run tellraw @s {"text": "そのコマンドは実行することができません","color": "red"}
execute if score @s RunCheck = @s RunCheck run gamerule sendCommandFeedback true
execute if score @s RunCheck = @s RunCheck run scoreboard objectives remove UninstallWait
execute if score @s RunCheck = @s RunCheck run scoreboard objectives remove UninstallWaitTime
execute if score @s RunCheck = @s RunCheck run scoreboard players reset * RunCheck