tag @s add ActivePlayer
execute unless entity @e[type=area_effect_cloud,tag=BlueBase,x=0] run function missilewars:game_modes/koth/2teams/init_arena
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0] unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] Game = @a[tag=ActivePlayer,x=0,limit=1] Game run function missilewars:game_modes/koth/2teams/init_arena
tag @s remove ActivePlayer
function missilewars:game_modes/2teams/join_auto