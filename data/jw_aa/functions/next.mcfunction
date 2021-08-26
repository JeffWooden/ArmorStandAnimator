data modify entity @s Pose set from entity @s ArmorItems[3].tag.jw_aa.temp[0].Pose
execute if data entity @s ArmorItems[3].tag.jw_aa.temp[0].Rot run data modify entity @s Rotation[0] set from entity @s ArmorItems[3].tag.jw_aa.temp[0].Rot
execute if data entity @s ArmorItems[3].tag.jw_aa.temp[0].Pos run function jw_aa:next/position
execute store result score @s jw_aa_delay run data get entity @s ArmorItems[3].tag.jw_aa.temp[0].delay
data remove entity @s ArmorItems[3].tag.jw_aa.temp[0]
scoreboard players remove @s jw_aa_calc 1

execute if score @s jw_aa_delay matches 0 if score @s jw_aa_calc matches 1.. run scoreboard players set @s jw_aa_delay 1
execute if score @s jw_aa_calc matches 0 unless score @s jw_aa_delay matches 1.. run function jw_aa:end