execute as @a[scores={ticket_used=1..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{type: "uber.ticket", item: "forceload_ticket"}] run function uberserver:tickets/forceload_ticket_used
execute as @a[scores={ticket_used=1..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{type: "uber.ticket", item: "claim_ticket"}] run function uberserver:tickets/claim_ticket_used

scoreboard players set @a ticket_used 0
