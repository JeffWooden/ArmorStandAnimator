tag @s add jw_aa.animating
data modify entity @s ArmorItems[3].tag.jw_aa.temp set from entity @s ArmorItems[3].tag.jw_aa.keyframes
execute as @s at @s run function jw_aa:next