execute as @e[tag=iterator] at @s run execute store result score temp Constants run data get block ~ ~ ~ Items[0].Count
execute as @e[tag=iterator] at @s run data remove block ~ ~ ~ Items[0]
function missilewars:custom_missile/set_block
function missilewars:custom_missile/update_observers
execute as @e[tag=mover] at @s run tp ~1 ~ ~

scoreboard players operation temp3 Constants = temp2 Constants
scoreboard players add temp3 Constants 1
scoreboard players operation temp3 Constants %= Length Constants
execute as @e[tag=mover] at @s if score temp3 Constants matches 0 run tp ~-17 ~ ~1
execute as @e[tag=mover] at @s if score temp3 Constants matches 0 run scoreboard players add rows_completed Constants 1
scoreboard players operation rows_completed Constants %= Rows Constants
execute as @e[tag=mover] at @s if score temp3 Constants matches 0 if score rows_completed Constants matches 0 run tp ~ ~1 ~-3

scoreboard players operation temp3 Constants = temp2 Constants
scoreboard players add temp3 Constants 1
scoreboard players operation temp3 Constants %= ChestSize Constants
execute as @e[tag=iterator] at @s if score temp3 Constants matches 0 run tp ~ ~ ~1

scoreboard players add temp2 Constants 1

execute if score temp2 Constants <= Iterations Constants run function missilewars:custom_missile/shoot_missile/270_shoot