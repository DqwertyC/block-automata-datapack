scoreboard objectives add current_state dummy
scoreboard objectives add state_output dummy
scoreboard objectives add counter dummy

scoreboard players set MASTER counter 0
scoreboard players set MAX counter 2
scoreboard players set MUX counter 0
scoreboard players set MUXMAX counter 2

# MODE 0 - Display after every phase
# MODE 1 - Only display after both phases
scoreboard players set MODE counter 0

scoreboard players set PAUSE counter 1
scoreboard players set PAUSEMAX counter 2