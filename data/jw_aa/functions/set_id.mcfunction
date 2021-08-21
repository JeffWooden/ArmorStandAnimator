scoreboard players add #max jw_aa_id 1
scoreboard players operation @s jw_aa_id = #max jw_aa_id
# summon marker ~ ~ ~ {Tags:["jw_aa.link","new"]}
# scoreboard players operation @e[tag=jw_aa.link,tag=new,limit=1,sort=nearest] jw_aa_id = #max jw_aa_id
# tag @e[tag=jw_aa.link,tag=new,limit=1,sort=nearest] remove new