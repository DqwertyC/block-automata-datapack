execute if score MODE counter matches 0 run function block_automata:controls/run_single
execute if score MODE counter matches 1 if score MUX counter matches 1 run function block_automata:controls/run_single
execute if score MODE counter matches 1 if score MUX counter matches 0 run function block_automata:controls/run_double