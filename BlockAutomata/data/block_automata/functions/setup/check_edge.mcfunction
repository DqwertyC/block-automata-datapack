# check if we're an edge tile
execute unless block ~02 ~-1 ~00 minecraft:light_gray_concrete run tag @s add edge_pos_x
execute unless block ~-2 ~-1 ~00 minecraft:light_gray_concrete run tag @s add edge_neg_x
execute unless block ~00 ~-1 ~02 minecraft:light_gray_concrete run tag @s add edge_pos_z
execute unless block ~00 ~-1 ~-2 minecraft:light_gray_concrete run tag @s add edge_neg_z