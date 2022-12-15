#> uninstall:system/selecting
# @within function uninstall:**/

execute unless score @s RunCheck = @s RunCheck run tellraw @s {"text": "そのコマンドは実行することができません","color": "red"}

execute if score @s RunCheck = @s RunCheck run scoreboard objectives add UninstallWait dummy
execute if score @s RunCheck = @s RunCheck run scoreboard objectives add UninstallWaitTime custom:play_time
execute if score @s RunCheck = @s RunCheck run scoreboard players set @s UninstallWait 1