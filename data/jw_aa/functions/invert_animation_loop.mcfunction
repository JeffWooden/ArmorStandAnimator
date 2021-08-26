scoreboard players remove length jw_aa_calc 1
data modify storage jw:aa temp append from storage jw:aa animation.keyframes[-1]
data remove storage jw:aa animation.keyframes[-1]
execute if score length jw_aa_calc matches 1.. run function jw_aa:invert_animation_loop