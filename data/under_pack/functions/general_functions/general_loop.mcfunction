#if a gazebo game is active, run its tick function every tick
execute if score gazebo swag matches 1 run function under_pack:gazebo_functions/gazebo_tick

#ghost blocks, I need to make an exception for ghost blocks that should disappear
execute as @e[type=falling_block] run data merge entity @s {Time:5}
#kills chickens when eggs are thrown. Very important.
kill @e[type=chicken]

