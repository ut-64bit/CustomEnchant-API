#> uninstall:custom_ench/run
# @within tag/function uninstall:**/run

#> Internal
# @private
    #declare objective CE.Temporary
    #declare storage _index.d:custom_ench
    #declare storage asset:custom_ench

execute unless score @s RunCheck = @s RunCheck run tellraw @s {"text": "そのコマンドは実行することができません","color": "red"}
execute if score @s RunCheck = @s RunCheck run scoreboard objectives remove CE.Temporary
execute if score @s RunCheck = @s RunCheck run data remove storage _index.d:custom_ench Data
execute if score @s RunCheck = @s RunCheck run data remove storage asset:custom_ench Data

execute if score @s RunCheck = @s RunCheck run schedule clear uninstall:system/finish
execute if score @s RunCheck = @s RunCheck run schedule function uninstall:system/finish 1t

execute if score @s RunCheck = @s RunCheck run datapack disable "file/CustomEnchant-Core"