execute if entity @s[scores={m.MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/tomohawk",posX:0,posY:-7,posZ:-15}
execute if entity @s[scores={m.MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/tomohawk",posX:-1,posY:-5,posZ:-16}
execute if entity @s[scores={m.MissileSet=2}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/thin/tomohawk",posX:0,posY:-8,posZ:-13}
execute if entity @s[scores={m.MissileSet=3}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/flat/tomohawk",posX:-2,posY:-4,posZ:-14}
execute if entity @s[scores={m.MissileSet=4}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/utility/tomohawk",posX:-2,posY:-6,posZ:-19}