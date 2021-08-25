tag @s add jw_aa.animating
data modify entity @s ArmorItems[3].tag.jw_aa.temp set from entity @s ArmorItems[3].tag.jw_aa.keyframes
execute if predicate jw_aa:reset_to_default run data modify entity @s ArmorItems[3].tag.jw_aa.defaultPose set from entity @s Pose
execute if predicate jw_aa:reset_to_default run data modify entity @s ArmorItems[3].tag.jw_aa.Pos set from entity @s Pos
execute as @s at @s run function jw_aa:next