execute as @e[x=0,type=item, tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[x=0,type=item, tag=!processed] store result score @s UUID1 run data get entity @s Owner[0]
execute as @e[x=0,type=item,nbt=!{Item:{id:"minecraft:tnt"}},nbt=!{Item:{id:"minecraft:crossbow"}},nbt=!{Item:{id:"minecraft:bow"}},nbt=!{Item:{id:"minecraft:snowball"}},nbt=!{Item:{id:"minecraft:arrow"}},nbt=!{Item:{id:"minecraft:firework_rocket"}},nbt=!{Item:{id:"minecraft:creeper_spawn_egg"}},nbt=!{Item:{id:"minecraft:wolf_spawn_egg"}},nbt=!{Item:{id:"minecraft:ocelot_spawn_egg"}},nbt=!{Item:{id:"minecraft:witch_spawn_egg"}},nbt=!{Item:{id:"minecraft:cave_spider_spawn_egg"}}] run kill @s
execute as @e[x=0,type=minecraft:item,tag=!processed,nbt=!{Item:{id:"minecraft:tnt"}}] run data merge entity @s {PickupDelay:0}
tag @s add Active
execute as @e[x=0,type=minecraft:item,tag=!processed,nbt=!{Item:{id:"minecraft:tnt"}}] if score @s UUID1 = @a[x=0,tag=Active,limit=1] UUID1 as @a[x=0,tag=Active] run function missilewars:main/toggle_place
execute as @e[x=0,type=minecraft:item,tag=!processed,nbt=!{Item:{id:"minecraft:tnt"}}] if score @s UUID1 = @a[x=0,tag=Active,limit=1] UUID1 run tag @s add processed
tag @s remove Active
tag @e[x=0,type=minecraft:item,nbt={Item:{id:"minecraft:tnt"}}] add processed

function missilewars:item_managers/bow