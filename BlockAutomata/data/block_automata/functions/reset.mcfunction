execute at @e[tag=block_corner] run fill ~-1 ~ -1 ~1 ~ ~1 minecraft:air
kill @e[tag=block_corner]

scoreboard players set MASTER counter 0
scoreboard players set MAX counter 2
scoreboard players set MUX counter 0
scoreboard players set MUXMAX counter 2
scoreboard players set PAUSE counter 1

execute as @a[nbt={SelectedItem:{tag:{BlockReset:1b}}}] run function block_automata:ui/give_seeds