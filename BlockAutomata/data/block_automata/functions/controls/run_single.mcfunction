execute if score MUX counter matches 0 run function block_automata:pos_phase/run_tick
execute if score MUX counter matches 1 run function block_automata:neg_phase/run_tick

scoreboard players add MUX counter 1
scoreboard players operation MUX counter %= MUXMAX counter