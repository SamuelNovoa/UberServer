scoreboard objectives add ticket_used minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add claim_ticket_used dummy
scoreboard objectives add forceload_ticket_used dummy

tellraw @a {"translate": "if_you_see_this_message_then_you_need_to_download_the_resource_pack_from_modrinth"}
