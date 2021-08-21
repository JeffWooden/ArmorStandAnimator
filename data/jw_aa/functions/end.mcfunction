tag @s remove jw_aa.animating
execute if predicate jw_aa:reset_to_default run data modify entity @s Pose set from entity @s ArmorItems[3].tag.jw_aa.defaultPose
execute if predicate jw_aa:looping run function jw_aa:start