execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-8 ^1 ^-1 ^8 ^3 ^1 minecraft:air
scoreboard players set @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount 0
clear @s tnt
playsound minecraft:entity.generic.explode block @a[x=0] ~ ~ ~ 1
execute at @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] run particle minecraft:explosion_emitter ^ ^2 ^ 0 0 0 100 7