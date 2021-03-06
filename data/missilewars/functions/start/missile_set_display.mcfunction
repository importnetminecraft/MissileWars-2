execute as @s[scores={m.MissileSet=0}] run title @s actionbar ["",{"text": "MissileSet: Normal","color":"black"}]
execute as @s[scores={m.MissileSet=1}] run title @s actionbar ["",{"text": "MissileSet: Old","color":"black"}]
execute as @s[scores={m.MissileSet=2}] run title @s actionbar ["",{"text": "MissileSet: Thin","color":"black"}]
execute as @s[scores={m.MissileSet=3}] run title @s actionbar ["",{"text": "MissileSet: Flat","color":"black"}]

execute if score @s m.MissileSet matches ..-1 run tellraw @s {"text":"Invalid missile set id.","color": "red"}
execute if score @s m.MissileSet matches 4.. run tellraw @s {"text":"Invalid missile set id.","color": "red"}
execute if score @s m.MissileSet matches ..-1 run scoreboard players operation @s m.MissileSet = @s m.PrevMissileSet
execute if score @s m.MissileSet matches 4.. run scoreboard players operation @s m.MissileSet = @s m.PrevMissileSet

execute unless score @s m.PrevMissileSet = @s m.MissileSet run playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 1
scoreboard players operation @s m.PrevMissileSet = @s m.MissileSet