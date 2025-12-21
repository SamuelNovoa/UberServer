# Tickets use count
# function uberserver:tickets/ticket_tick

# Infinite Ender Pearl
execute as @a at @s run function uberserver:trinkets/infinite_pearl_tick

# Castigaos
execute as @a[tag=punished_player] in uberserver:gm_island run tp @s -78 18 -132

# Pepper Recover Event
# Infinite Sculk Vault
execute if score uberserver pepper_recovery_event_state matches 1 as @e[type=minecraft:marker,tag=sculk_vault_marker] at @s run function uberserver:events/pepper_recover/sculk_vault_reset

# Sculk Egg Compass Restock
execute if score uberserver pepper_recovery_event_state matches 1 run function uberserver:events/pepper_recover/compass_chest