# TICK TIMER
scoreboard players add @s timer_tick 1

execute if score @s timer_tick matches 20 run scoreboard players remove @s timer_seconds 1
execute if score @s timer_tick matches 20 run scoreboard players set @s timer_tick 0


# TIMER CALCULATIONS
scoreboard players operation @s hours = @s timer_seconds
scoreboard players operation @s minutes = @s timer_seconds
scoreboard players operation @s seconds = @s timer_seconds

scoreboard players operation @s hours /= $const_3600 timer_seconds
scoreboard players operation @s minutes %= $const_3600 timer_seconds
scoreboard players operation @s minutes /= $const_60 timer_seconds
scoreboard players operation @s seconds %= $const_60 timer_seconds


# TIMER FORMATTING
scoreboard players operation @s f0_hours = @s hours
scoreboard players operation @s f0_hours /= $const_10 timer_seconds
scoreboard players operation @s f1_hours = @s hours
scoreboard players operation @s f1_hours %= $const_10 timer_seconds

scoreboard players operation @s f0_minutes = @s minutes
scoreboard players operation @s f0_minutes /= $const_10 timer_seconds
scoreboard players operation @s f1_minutes = @s minutes
scoreboard players operation @s f1_minutes %= $const_10 timer_seconds

scoreboard players operation @s f0_seconds = @s seconds
scoreboard players operation @s f0_seconds /= $const_10 timer_seconds
scoreboard players operation @s f1_seconds = @s seconds
scoreboard players operation @s f1_seconds %= $const_10 timer_seconds


# TIMER DISPLAY
title @s actionbar ["", {"score":{"name":"@s","objective":"f0_hours"}}, {"score":{"name":"@s","objective":"f1_hours"}}, ":", {"score":{"name":"@s","objective":"f0_minutes"}}, {"score":{"name":"@s","objective":"f1_minutes"}}, ":", {"score":{"name":"@s","objective":"f0_seconds"}}, {"score":{"name":"@s","objective":"f1_seconds"}}]
execute if score @s timer_tick matches 0 run function vanitas:timer_alerts