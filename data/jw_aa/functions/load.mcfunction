scoreboard objectives add jw_aa_calc dummy
scoreboard players set #installed jw_aa_calc 0
execute unless score #installed jw_aa_calc matches 1 run function jw_aa:install