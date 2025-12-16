data modify storage uberserver:sculk_egg_pos pos set value [0,0,0]

execute store result storage uberserver:sculk_egg_pos pos[0] int 1 run data get entity @s Pos[0] 1
execute store result storage uberserver:sculk_egg_pos pos[1] int 1 run data get entity @s Pos[1] 1
execute store result storage uberserver:sculk_egg_pos pos[2] int 1 run data get entity @s Pos[2] 1

function uberserver:events/pepper_recover/sculk_egg_compass_from_storage with storage uberserver:sculk_egg_pos