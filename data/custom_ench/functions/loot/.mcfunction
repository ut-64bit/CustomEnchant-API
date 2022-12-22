#> custom_ench:loot/
# @within function custom_ench:system/tick
# `
# {Data:{ Custom:[ {Namespace:"custom_ench", Enable:true, Enchant:{ Low:[ { id:"custom_ench:example", Enable:true, Level:5 } ] } } ] }}
# `

#>
# @internal
    #define score_holder $max
    #define score_holder $min
    #define tag Temp.Item

function custom_ench:loot/copy
data remove storage _index.d:custom_ench Data.Loot[].Enable

execute store result score $max Random run data get storage _index.d:custom_ench Data.Loot
scoreboard players set $min Random 0
execute unless score $max Random matches ..0 run scoreboard players remove $max Random 1
function custom_ench:core/uniform

function custom_ench:loot/build_loop

scoreboard players set $min Random 1
execute store result score $max Random run data get storage _index.d:custom_ench Data.Loot[0].Level
function custom_ench:core/uniform

execute store result storage _index.d:custom_ench Data.Loot[0].lvl int 1.0 run scoreboard players get $out Random
data remove storage _index.d:custom_ench Data.Loot[0].Level

data modify storage _index.d:custom_ench Data.Book set from entity @s Item.tag
data modify storage _index.d:custom_ench Data.Book.StoredCustomEnchantments append from storage _index.d:custom_ench Data.Loot[0]
summon item ~ ~ ~ {Tags:["Temp.Item"],Motion:[0d,0.1d,0d],Item:{id:"minecraft:enchanted_book",Count:1b}}
data modify entity @e[tag=Temp.Item,limit=1] Item.tag merge from storage _index.d:custom_ench Data.Book
execute as @e[tag=Temp.Item] run function custom_ench:core/set_lore/
tag @e[tag=Temp.Item] remove Temp.Item

function custom_ench:core/success/consume
