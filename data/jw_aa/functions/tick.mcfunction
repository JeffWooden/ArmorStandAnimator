execute as @e[type=armor_stand] unless score @s jw_aa_id matches 1.. at @s run function jw_aa:set_id

scoreboard players remove @e[type=armor_stand,tag=jw_aa.animating] jw_aa_delay 1
execute as @e[type=armor_stand,tag=jw_aa.animating,scores={jw_aa_delay=..0}] at @s run function jw_aa:next