execute as @e[type=!tnt,type=!area_effect_cloud,x=0] at @s run kill @s[dy=-10,y=-64,gamemode=!spectator]
execute as @a[x=0,gamemode=spectator] at @s run tp @s[dy=-10,y=-64] 0 100 0

execute as @a[scores={Game=1..},x=0] run function missilewars:practice/running_main
function missilewars:item_managers/run_items

kill @e[type=item,x=0]

execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0] at @s run fill ~-63 0 ~ ~63 127 ~1 air
execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0] at @s run particle crimson_spore ~ ~ ~ 60 50 1 100 300
execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0] at @s run tp ~ ~ ~2
execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0] at @s run scoreboard players add @s points 1
execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0,scores={points=63..}] at @s at @e[type=area_effect_cloud,tag=PracticeArea,sort=nearest,limit=1] run function missilewars:practice/basic_area
execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0,scores={points=63..}] at @s run kill @s

execute at @e[type=area_effect_cloud,tag=PracticeArea,x=0] run fill ~-3 ~ ~-3 ~3 ~ ~3 obsidian