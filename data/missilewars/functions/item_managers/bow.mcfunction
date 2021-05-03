scoreboard players set bowCount m.Variables 1
execute if score @s m.inv_change matches 1 store result score bowCount m.Variables run clear @s #missilewars:bows 0
execute if score bowCount m.Variables matches 0 at @s unless entity @e[type=item,nbt={Item:{id:"minecraft:bow"}},distance=..2] run give @s minecraft:bow{Enchantments:[{lvl: 1s, id:"minecraft:flame"}, {lvl: 4s, id:"minecraft:sharpness"}, {lvl: 1s, id:"minecraft:knockback"}], Unbreakable:1b, display:{Name:'{"text":"Gunblade"}'},CanDestroy:["magenta_wool"]}
execute if score bowCount m.Variables matches 2.. run clear @s #missilewars:bows 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow"},Inventory:[{Slot:-106b,id:"minecraft:firework_rocket"}]}] run replaceitem entity @s weapon.mainhand minecraft:crossbow{Enchantments:[{lvl: 1s, id:"minecraft:flame"}, {lvl: 4s, id:"minecraft:sharpness"}, {lvl: 1s, id:"minecraft:knockback"}], Unbreakable:1b, display:{Name:'{"text":"Rocketblade"}'},CanDestroy:["magenta_wool"]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] unless data entity @s SelectedItem.tag.ChargedProjectiles[0] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_rocket"}]}] run replaceitem entity @s weapon.mainhand minecraft:bow{Enchantments:[{lvl: 1s, id:"minecraft:flame"}, {lvl: 4s, id:"minecraft:sharpness"}, {lvl: 1s, id:"minecraft:knockback"}], Unbreakable:1b, display:{Name:'{"text":"Gunblade"}'}}
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[]}}]}] run replaceitem entity @s weapon.offhand minecraft:bow{Enchantments:[{lvl: 1s, id:"minecraft:flame"}, {lvl: 4s, id:"minecraft:sharpness"}, {lvl: 1s, id:"minecraft:knockback"}], Unbreakable:1b, display:{Name:'{"text":"Gunblade"}'},CanDestroy:["magenta_wool"]}