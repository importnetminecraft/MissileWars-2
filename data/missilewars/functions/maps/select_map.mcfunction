execute store result score Map Constants run data get block -4 100 0 Page
execute if block -4 101 0 minecraft:stone_button[powered=true] unless score PrevMap Constants = Map Constants run function missilewars:maps/load_map
execute if block -4 101 0 minecraft:stone_button[powered=true] run scoreboard players operation PrevMap Constants = Map Constants