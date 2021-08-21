data modify storage jw:aa temp set from entity @s ArmorItems[3].tag.jw_aa.keyframes
data modify entity @s Pose set from entity @s ArmorItems[3].tag.jw_aa.keyframes[0].Pose
execute store result score @s jw_aa_delay run data get entity @s ArmorItems[3].tag.jw_aa.keyframes[0].delay
data remove entity @s ArmorItems[3].tag.jw_aa.keyframes[0]
execute store result score length jw_aa_calc run data get entity @s ArmorItems[3].tag.jw_aa.keyframes

execute if score @s jw_aa_delay matches 0 if score length jw_aa_calc matches 1.. run function jw_aa:next