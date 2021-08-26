execute store result score a jw_aa_calc run data get storage jw:aa temp.Pos[0] 100
execute store result score b jw_aa_calc run data get storage jw:aa temp.Pos[1] 100
execute store result score c jw_aa_calc run data get storage jw:aa temp.Pos[2] 100

data modify storage jw:aa Pos set from entity @s ArmorItems[3].tag.jw_aa.Pos
execute store result score x jw_aa_calc run data get storage jw:aa Pos[0] 100
execute store result score y jw_aa_calc run data get storage jw:aa Pos[1] 100
execute store result score z jw_aa_calc run data get storage jw:aa Pos[2] 100

execute store result storage jw:aa Pos[0] double 0.01 run scoreboard players operation x jw_aa_calc += a jw_aa_calc
execute store result storage jw:aa Pos[1] double 0.01 run scoreboard players operation y jw_aa_calc += b jw_aa_calc
execute store result storage jw:aa Pos[2] double 0.01 run scoreboard players operation z jw_aa_calc += c jw_aa_calc
data modify storage jw:aa NBT.Pos set from storage jw:aa Pos