execute if entity @e[type=potion,nbt={Item:{tag:{BlockReset:1b}}}] run function block_automata:reset

execute if entity @e[type=potion,nbt={Item:{tag:{BlockSlower:1b}}}] run scoreboard players add MAX counter 1
execute if score MAX counter matches 10.. run scoreboard players set MAX counter 10

execute if entity @e[type=potion,nbt={Item:{tag:{BlockPause:1b}}}] run function block_automata:controls/toggle_pause

execute if entity @e[type=potion,nbt={Item:{tag:{BlockFaster:1b}}}] run scoreboard players remove MAX counter 1
execute if score MAX counter matches ..1 run scoreboard players set MAX counter 1

execute if entity @e[type=potion,nbt={Item:{tag:{BlockTick:1b}}}] run function block_automata:controls/run_tick

kill @e[type=potion,nbt={Item:{tag:{BlockReset:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{BlockSlower:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{BlockFaster:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{BlockPause:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{BlockTick:1b}}}]