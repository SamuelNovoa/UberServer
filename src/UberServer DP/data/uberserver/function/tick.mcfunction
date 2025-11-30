execute as @a[scores={ticket_used=1..}] at @s if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick", components: {"minecraft:custom_model_data": {strings:["uber.ticket.claim"]}}} run function uberserver:tickets/claim_ticket_used
execute as @a[scores={ticket_used=1..}] at @s if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick", components: {"minecraft:custom_model_data": {strings:["uber.ticket.forceload"]}}} run function uberserver:tickets/forceload_ticket_used

scoreboard players set @a ticket_used 0