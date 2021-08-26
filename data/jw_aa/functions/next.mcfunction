data modify storage jw:aa temp set from entity @s ArmorItems[3].tag.jw_aa.temp[-1]
execute if data storage jw:aa temp.Rotation run data modify storage jw:aa temp.Rotation[1] set from entity @s Rotation[1]
execute if data storage jw:aa temp.Pos run function jw_aa:next/position
data modify entity @s {} merge from storage jw:aa temp
execute store result score @s jw_aa_delay run data get storage jw:aa temp.delay
data remove entity @s ArmorItems[3].tag.jw_aa.temp[-1]
scoreboard players remove @s jw_aa_calc 1

execute if score @s jw_aa_delay matches 0 if score @s jw_aa_calc matches 1.. run scoreboard players set @s jw_aa_delay 1
execute if score @s jw_aa_calc matches 0 unless score @s jw_aa_delay matches 1.. run function jw_aa:end