# Tickets use count
function uberserver:tickets/ticket_tick

# Infinite Ender Pearl
execute as @a at @s run function uberserver:trinkets/infinite_pearl_tick

# Infinite Sculk Vault
execute as @e[type=minecraft:marker,tag=sculk_vault_marker] at @s run function uberserver:events/pepper_recover/sculk_vault_reset

# Castigaos
execute as @a[tag=punished_player] in uberserver:gm_island run tp @s -78 18 -132