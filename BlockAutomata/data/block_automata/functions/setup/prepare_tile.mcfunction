execute align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["block_corner"]}

# Ensure the sides are even lengths
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:light_gray_concrete
fill ~-1 ~00 ~-1 ~1 ~00 ~1 minecraft:gray_concrete

data modify entity @e[tag=block_corner,sort=nearest,limit=1] data.block_rules set from entity @s data.block_rules

execute as @e[tag=block_corner,sort=nearest,limit=1] positioned ~02 ~00 ~00 if block ~ ~-1 ~ minecraft:light_gray_concrete unless entity @e[tag=block_corner,distance=..1] run function block_automata:setup/prepare_tile
execute as @e[tag=block_corner,sort=nearest,limit=1] positioned ~00 ~00 ~02 if block ~ ~-1 ~ minecraft:light_gray_concrete unless entity @e[tag=block_corner,distance=..1] run function block_automata:setup/prepare_tile
execute as @e[tag=block_corner,sort=nearest,limit=1] positioned ~-2 ~00 ~00 if block ~ ~-1 ~ minecraft:light_gray_concrete unless entity @e[tag=block_corner,distance=..1] run function block_automata:setup/prepare_tile
execute as @e[tag=block_corner,sort=nearest,limit=1] positioned ~00 ~00 ~-2 if block ~ ~-1 ~ minecraft:light_gray_concrete unless entity @e[tag=block_corner,distance=..1] run function block_automata:setup/prepare_tile

