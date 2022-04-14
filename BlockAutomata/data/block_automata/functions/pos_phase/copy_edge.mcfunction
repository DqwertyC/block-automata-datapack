# Copy from pos_x to neg_x
execute as @e[tag=edge_neg_x] at @s positioned ~00.0 ~-0.5 ~-0.5 positioned as @e[tag=edge_pos_x,dx=1000,dy=1,dz=1,limit=1] if block ~01 ~00 ~00 minecraft:gray_concrete at @s positioned ~-1 ~00 ~00 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=edge_neg_x] at @s positioned ~00.0 ~-0.5 ~-0.5 positioned as @e[tag=edge_pos_x,dx=1000,dy=1,dz=1,limit=1] if block ~01 ~00 ~01 minecraft:gray_concrete at @s positioned ~-1 ~00 ~01 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=edge_neg_x] at @s positioned ~00.0 ~-0.5 ~-0.5 positioned as @e[tag=edge_pos_x,dx=1000,dy=1,dz=1,limit=1] if block ~01 ~00 ~00 minecraft:yellow_concrete at @s positioned ~-1 ~00 ~00 run setblock ~ ~ ~ minecraft:yellow_concrete
execute as @e[tag=edge_neg_x] at @s positioned ~00.0 ~-0.5 ~-0.5 positioned as @e[tag=edge_pos_x,dx=1000,dy=1,dz=1,limit=1] if block ~01 ~00 ~01 minecraft:yellow_concrete at @s positioned ~-1 ~00 ~01 run setblock ~ ~ ~ minecraft:yellow_concrete

# Copy from pos_z to neg_z
execute as @e[tag=edge_neg_z] at @s positioned ~-0.5 ~-0.5 ~00.0 positioned as @e[tag=edge_pos_z,dz=1000,dy=1,dx=1,limit=1] if block ~00 ~00 ~01 minecraft:gray_concrete at @s positioned ~00 ~00 ~-1 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=edge_neg_z] at @s positioned ~-0.5 ~-0.5 ~00.0 positioned as @e[tag=edge_pos_z,dz=1000,dy=1,dx=1,limit=1] if block ~01 ~00 ~01 minecraft:gray_concrete at @s positioned ~01 ~00 ~-1 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=edge_neg_z] at @s positioned ~-0.5 ~-0.5 ~00.0 positioned as @e[tag=edge_pos_z,dz=1000,dy=1,dx=1,limit=1] if block ~00 ~00 ~01 minecraft:yellow_concrete at @s positioned ~00 ~00 ~-1 run setblock ~ ~ ~ minecraft:yellow_concrete
execute as @e[tag=edge_neg_z] at @s positioned ~-0.5 ~-0.5 ~00.0 positioned as @e[tag=edge_pos_z,dz=1000,dy=1,dx=1,limit=1] if block ~01 ~00 ~01 minecraft:yellow_concrete at @s positioned ~01 ~00 ~-1 run setblock ~ ~ ~ minecraft:yellow_concrete

# Copy from pos corner to neg corner
execute as @e[tag=edge_neg_z,tag=edge_neg_x] at @s positioned as @e[tag=edge_pos_z,tag=edge_pos_x] if block ~01 ~00 ~01 minecraft:gray_concrete at @s positioned ~-1 ~00 ~-1 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=edge_neg_z,tag=edge_neg_x] at @s positioned as @e[tag=edge_pos_z,tag=edge_pos_x] if block ~01 ~00 ~01 minecraft:yellow_concrete at @s positioned ~-1 ~00 ~-1 run setblock ~ ~ ~ minecraft:yellow_concrete