scoreboard players set @s current_state 0

execute if block ~-1 ~00 ~00 #block_automata:alive run scoreboard players add @s current_state 8
execute if block ~-1 ~00 ~-1 #block_automata:alive run scoreboard players add @s current_state 4
execute if block ~00 ~00 ~00 #block_automata:alive run scoreboard players add @s current_state 2
execute if block ~00 ~00 ~-1 #block_automata:alive run scoreboard players add @s current_state 1

function block_automata:read_rule

execute positioned ~-1 ~00 ~00 if block ~ ~ ~ #block_automata:replaceable unless score @s state_output matches 8.. run setblock ~ ~ ~ minecraft:gray_concrete
execute positioned ~-1 ~00 ~00 if block ~ ~ ~ #block_automata:replaceable if score @s state_output matches 8.. run setblock ~ ~ ~ minecraft:yellow_concrete
execute if score @s state_output matches 8.. run scoreboard players remove @s state_output 8

execute positioned ~-1 ~00 ~-1 if block ~ ~ ~ #block_automata:replaceable unless score @s state_output matches 4.. run setblock ~ ~ ~ minecraft:gray_concrete
execute positioned ~-1 ~00 ~-1 if block ~ ~ ~ #block_automata:replaceable if score @s state_output matches 4.. run setblock ~ ~ ~ minecraft:yellow_concrete
execute if score @s state_output matches 4.. run scoreboard players remove @s state_output 4

execute positioned ~00 ~00 ~00 if block ~ ~ ~ #block_automata:replaceable unless score @s state_output matches 2.. run setblock ~ ~ ~ minecraft:gray_concrete
execute positioned ~00 ~00 ~00 if block ~ ~ ~ #block_automata:replaceable if score @s state_output matches 2.. run setblock ~ ~ ~ minecraft:yellow_concrete
execute if score @s state_output matches 2.. run scoreboard players remove @s state_output 2

execute positioned ~00 ~00 ~-1 if block ~ ~ ~ #block_automata:replaceable unless score @s state_output matches 1.. run setblock ~ ~ ~ minecraft:gray_concrete
execute positioned ~00 ~00 ~-1 if block ~ ~ ~ #block_automata:replaceable if score @s state_output matches 1.. run setblock ~ ~ ~ minecraft:yellow_concrete