function block_automata:ui/check_controls

execute as @e[tag=automata_area_seed] at @s run function block_automata:setup/initialize
execute if entity @e[tag=automata_swap_seed] run function block_automata:ui/toggle_tile

execute if score PAUSE counter matches 0 if score MASTER counter matches 0 run function block_automata:controls/run_tick
execute if score PAUSE counter matches 0 run scoreboard players add MASTER counter 1
execute if score PAUSE counter matches 0 run scoreboard players operation MASTER counter %= MAX counter

execute if score PAUSE counter matches 1 run title @a actionbar {"text":"Paused","color":"dark_red"}
execute if score PAUSE counter matches 0 run title @a actionbar {"text":"Running","color":"dark_green"}