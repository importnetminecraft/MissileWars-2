tag @s add BaseChooser
execute as @e[tag=BlackBase] if score @s Game = @a[tag=BaseChooser,limit=1] Game at @s run tp @a[tag=BaseChooser] ~1 51 ~ 0 0
execute as @e[tag=BlackBase] if score @s Game = @a[tag=BaseChooser,limit=1] Game at @s run spawnpoint @a[tag=BaseChooser] ~1 51 ~
tag @s remove BaseChooser