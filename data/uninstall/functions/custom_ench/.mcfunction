#> uninstall:custom_ench/
# @private
# @user

scoreboard objectives add RunCheck dummy
scoreboard players set @s RunCheck 0
gamerule sendCommandFeedback false

tellraw @s {"text": "-----------------------------------------------------"}
tellraw @s {"text": ""}
tellraw @s {"text": "本当にCustomEnchantCoreと関連した情報をアンインストールしますか?","color": "red"}
tellraw @s {"text": "アンインストールされるデータパックは以下の通りです。","color": "white"}
function #uninstall:custom_ench/message
tellraw @s {"text": ""}
tellraw @s {"text": "アンインストールを実行しますか?","color": "dark_red","bold": true}
tellraw @s [{"text": ""}]
tellraw @s [" "," "," ",{"text":"[ - YES - ]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score @s UninstallWait = @s UninstallWait run function #uninstall:custom_ench/run"},"hoverEvent":{"action":"show_text","value":{"text":"クリックしてアンインストールする","bold":false}}}," ",{"text":"[ - NO - ]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score @s UninstallWait = @s UninstallWait run scoreboard players set @s UninstallWaitTime 600"},"hoverEvent":{"action":"show_text","value":{"text":"クリックしてキャンセルする","bold":false}}}]
function uninstall:system/selecting