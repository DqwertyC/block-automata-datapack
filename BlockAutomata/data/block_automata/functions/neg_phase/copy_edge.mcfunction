# Copy from neg_x to pos_x
execute as @e[tag=edge_pos_x] at @s positioned ~00.0 ~-0.5 ~-0.5 positioned as @e[tag=edge_neg_x,dx=-1000,dy=1,dz=1,limit=1] if block ~-1 ~00 ~00 minecraft:gray_concrete at @s positioned ~01 ~00 ~00 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=edge_pos_x] at @s positioned ~00.0 ~-0.5 ~-0.5 positioned as @e[tag=edge_neg_x,dx=-1000,dy=1,dz=1,limit=1] if block ~-1 ~00 ~-1 minecraft:gray_concrete at @s positioned ~01 ~00 ~-1 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=edge_pos_x] at @s positioned ~00.0 ~-0.5 ~-0.5 positioned as @e[tag=edge_neg_x,dx=-1000,dy=1,dz=1,limit=1] if block ~-1 ~00 ~00 minecraft:yellow_concrete at @s positioned ~01 ~00 ~00 run setblock ~ ~ ~ minecraft:yellow_concrete
execute as @e[tag=edge_pos_x] at @s positioned ~00.0 ~-0.5 ~-0.5 positioned as @e[tag=edge_neg_x,dx=-1000,dy=1,dz=1,limit=1] if block ~-1 ~00 ~-1 minecraft:yellow_concrete at @s positioned ~01 ~00 ~-1 run setblock ~ ~ ~ minecraft:yellow_concrete

# Copy from neg_z to pos_z
execute as @e[tag=edge_pos_z] at @s positioned ~-0.5 ~-0.5 ~00.0 positioned as @e[tag=edge_neg_z,dz=-1000,dy=1,dx=1,limit=1] if block ~00 ~00 ~-1 minecraft:gray_concrete at @s positioned ~00 ~00 ~01 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=edge_pos_z] at @s positioned ~-0.5 ~-0.5 ~00.0 positioned as @e[tag=edge_neg_z,dz=-1000,dy=1,dx=1,limit=1] if block ~-1 ~00 ~-1 minecraft:gray_concrete at @s positioned ~-1 ~00 ~01 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=edge_pos_z] at @s positioned ~-0.5 ~-0.5 ~00.0 positioned as @e[tag=edge_neg_z,dz=-1000,dy=1,dx=1,limit=1] if block ~00 ~00 ~-1 minecraft:yellow_concrete at @s positioned ~00 ~00 ~01 run setblock ~ ~ ~ minecraft:yellow_concrete
execute as @e[tag=edge_pos_z] at @s positioned ~-0.5 ~-0.5 ~00.0 positioned as @e[tag=edge_neg_z,dz=-1000,dy=1,dx=1,limit=1] if block ~-1 ~00 ~-1 minecraft:yellow_concrete at @s positioned ~-1 ~00 ~01 run setblock ~ ~ ~ minecraft:yellow_concrete

# Copy from pos corner to pos corner
execute as @e[tag=edge_pos_z,tag=edge_pos_x] at @s positioned as @e[tag=edge_neg_z,tag=edge_neg_x] if block ~-1 ~00 ~-1 minecraft:gray_concrete at @s positioned ~01 ~00 ~01 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=edge_pos_z,tag=edge_pos_x] at @s positioned as @e[tag=edge_neg_z,tag=edge_neg_x] if block ~-1 ~00 ~-1 minecraft:yellow_concrete at @s positioned ~01 ~00 ~01 run setblock ~ ~ ~ minecraft:yellow_concrete