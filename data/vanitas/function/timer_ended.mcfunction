# SCREEN OVERLAY
title @s times 20 100 20
title @s title {"text":"TIME IS UP!","bold":true,"color":"red"}
title @s subtitle {"text":"Your time on this world is over.","bold":false,"color":"white"}
tellraw @a ["", {"selector":"@p", "color":"white", "bold": false},{"text":" has ran out of time!", "bold": true, "color": "red"}]

# SOUND EFFECT
playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1

# TOMBSTONE
fill ~ ~ ~ ~ ~1 ~ cobblestone replace
setblock ~1 ~1 ~ oak_wall_sign[facing=east]{front_text:{messages:['{"text": ""}', '{"selector": "@p"}', '{"text": ""}', '{"text": ""}']}}

# SET GAMEMODE
gamemode spectator @s

tag @s add timer_ended