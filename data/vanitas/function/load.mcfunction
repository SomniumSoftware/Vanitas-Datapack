# TIMER VARIABLES
scoreboard objectives add timer_seconds dummy "Time Remaining"
scoreboard objectives add timer_tick dummy "Tick Timer"

scoreboard objectives add hours dummy
scoreboard objectives add minutes dummy
scoreboard objectives add seconds dummy

# FORMATTING VARIABLES
scoreboard objectives add f0_hours dummy
scoreboard objectives add f1_hours dummy
scoreboard objectives add f0_minutes dummy
scoreboard objectives add f1_minutes dummy
scoreboard objectives add f0_seconds dummy
scoreboard objectives add f1_seconds dummy

scoreboard players set $const_3600 timer_seconds 3600
scoreboard players set $const_60 timer_seconds 60
scoreboard players set $const_10 timer_seconds 10