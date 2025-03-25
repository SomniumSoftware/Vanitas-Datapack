# TIMER
execute as @a if entity @s[tag=!timer_ended] run function vanitas:timer

# TIMER ENDED
execute as @a at @s[tag=!timer_ended] if score @s timer_seconds matches 0 if score @s timer_tick matches 0 run function vanitas:timer_ended
execute as @a if entity @s[tag=timer_ended, scores={timer_seconds=1..}] run tag @s remove timer_ended

# FORCE GAMEMODE
execute as @a unless entity @s[gamemode=spectator] if entity @s[tag=timer_ended] run gamemode spectator @s