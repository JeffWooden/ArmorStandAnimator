data modify storage jw:aa temp set from entity @s ArmorItems[3].tag.jw_aa.temp
data modify entity @s Pose set from entity @s ArmorItems[3].tag.jw_aa.temp[0].Pose
execute store result score @s jw_aa_delay run data get entity @s ArmorItems[3].tag.jw_aa.temp[0].delay
data remove entity @s ArmorItems[3].tag.jw_aa.temp[0]
execute store result score length jw_aa_calc run data get entity @s ArmorItems[3].tag.jw_aa.temp

execute if score @s jw_aa_delay matches 0 if score length jw_aa_calc matches 1.. run scoreboard players set @s jw_aa_delay 1
execute if score length jw_aa_calc matches 0 unless score @s jw_aa_delay matches 1.. run function jw_aa:end