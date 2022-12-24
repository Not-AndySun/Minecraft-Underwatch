#carrot on a stick detection
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{lumberjump:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberjump:1b}}},scores={reset=1..}] as @s[nbt={Inventory:[{Slot:1b,tag:{lumberjump:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberjump:1b}}},scores={reset=1..}] run function under_pack:lumberjack_functions/lumberjack_jump
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{lumberthrow:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberthrow:1b}}},scores={reset=1..}] as @s[nbt={Inventory:[{Slot:2b,tag:{lumberthrow:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberthrow:1b}}},scores={reset=1..}] run function under_pack:lumberjack_functions/lumberjack_throw
#gives the arrow (axe) velocity for lumberjack_throw
#red
execute as @e[tag=lumberarrow,tag=red] store result entity @s Motion[0] double 0.005 run scoreboard players get @s LumberjackMotionX
execute as @e[tag=lumberarrow,tag=red] store result entity @s Motion[1] double 0.005 run scoreboard players get @s LumberjackMotionY
execute as @e[tag=lumberarrow,tag=red] store result entity @s Motion[2] double 0.005 run scoreboard players get @s LumberjackMotionZ
#blue
execute as @e[tag=lumberarrow,tag=blue] store result entity @s[team=uBlue] Motion[0] double 0.005 run scoreboard players get @s[team=uBlue] LumberjackMotionX
execute as @e[tag=lumberarrow,tag=blue] store result entity @s[team=uBlue] Motion[1] double 0.005 run scoreboard players get @s[team=uBlue] LumberjackMotionY
execute as @e[tag=lumberarrow,tag=blue] store result entity @s[team=uBlue] Motion[2] double 0.005 run scoreboard players get @s[team=uBlue] LumberjackMotionZ
#jump cooldown
execute if score @s movement matches ..120 run scoreboard players add @s movement 1
execute if score @s movement matches 120 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Strong Jump","color":"blue"}'},lumberjump:1b} 1
#throw cooldown
execute if score @s ability1 matches ..200 run scoreboard players add @s ability1 1
execute if score @s ability1 matches 200 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Axe Throw","color":"green"}'},lumberthrow:1b} 1
function under_pack:lumberjack_functions/lumberjack_cooldown

