execute store result score a jw_aa_calc run data get entity @s ArmorItems[3].tag.jw_aa.temp[0].Pos[0] 100
execute store result score b jw_aa_calc run data get entity @s ArmorItems[3].tag.jw_aa.temp[0].Pos[1] 100
execute store result score c jw_aa_calc run data get entity @s ArmorItems[3].tag.jw_aa.temp[0].Pos[2] 100

execute store result score x jw_aa_calc run data get entity @s ArmorItems[3].tag.jw_aa.Pos[0] 100
execute store result score y jw_aa_calc run data get entity @s ArmorItems[3].tag.jw_aa.Pos[1] 100
execute store result score z jw_aa_calc run data get entity @s ArmorItems[3].tag.jw_aa.Pos[2] 100

execute store result entity @s Pos[0] double 0.01 run scoreboard players operation x jw_aa_calc += a jw_aa_calc
execute store result entity @s Pos[1] double 0.01 run scoreboard players operation y jw_aa_calc += b jw_aa_calc
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation z jw_aa_calc += c jw_aa_calc