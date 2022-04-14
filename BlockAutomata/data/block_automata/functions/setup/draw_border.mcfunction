execute as @e[tag=block_corner] at @s run function block_automata:setup/check_edge

#TODO: Add different border types (always alive, always dead, looping)
#execute at @e[tag=edge_pos_x] run fill ~01 ~00 ~00 ~01 ~00 ~01 minecraft:lime_concrete
#execute at @e[tag=edge_neg_x] run fill ~-1 ~00 ~00 ~-1 ~00 ~01 minecraft:green_concrete
#execute at @e[tag=edge_pos_z] run fill ~00 ~00 ~01 ~01 ~00 ~01 minecraft:light_blue_concrete
#execute at @e[tag=edge_neg_z] run fill ~00 ~00 ~-1 ~01 ~00 ~-1 minecraft:blue_concrete