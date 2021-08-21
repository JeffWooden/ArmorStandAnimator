tellraw @a ["",{"text":"Armor Stand Animator","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"Helps creators to easily animate armor stands.","color":"gray","italic":false}}},{"text":" >> "},{"text":"Datapack successfully installed","color":"green"},{"text":"."}]
scoreboard players set #installed jw_aa_calc 1

##  Scoreboards
scoreboard objectives add jw_aa_id dummy
scoreboard objectives add jw_aa_delay dummy
scoreboard objectives add jw_aa_time dummy

## Storage
data merge storage jw:aa {temp:"",animation:""}