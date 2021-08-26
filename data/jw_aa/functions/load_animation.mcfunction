execute unless data entity @s ArmorItems[3] run item replace entity @s armor.head with oak_button
execute unless data storage jw:aa animation.inverted run function jw_aa:invert_animation
data modify entity @s ArmorItems[3].tag.jw_aa set from storage jw:aa animation