summon villager ~ ~ ~ { \
    NoAI: 1b, \
    Invulnerable: 1b, \
    VillagerData: { \
        profession:"minecraft:cartographer", \
        level: 5, \
        type: "minecraft:savanna" \
    }, \
    CustomName: {"translate":"uber.npc.ticket_trader.name"}, \
    Offers: { \
        Recipes: [ \
            { \
                maxUses: 999999, \
                uses: 0, \
                rewardExp: 0, \
                priceMultiplier: 0.0, \
                buy: { \
                    id: "minecraft:test_instance_block", \
                    count: 3, \
                    components: { \
                        item_name: {translate: "uber.item.silver_coin"}, \
                        rarity: "common", \
                        custom_model_data: {strings: ["uber.coin.silver"]}, \
                        custom_data: {item: "uber.coin", coin: "silver"} \
                    } \
                }, \
                sell: { \
                    id: "minecraft:carrot_on_a_stick", \
                    count: 1, \
                    components: { \
                        item_name: {translate: "uber.ticket.claim.name"}, \
                        lore: [{translate: "uber.ticket.lore"}], \
                        rarity: "rare", \
                        custom_model_data: {strings: ["uber.ticket.claim"]}, \
                        custom_data: {type: "uber.ticket", item: "claim_ticket"} \
                    } \
                } \
            }, \
            { \
                maxUses: 999999, \
                uses: 0, \
                rewardExp: 0, \
                priceMultiplier: 0.0, \
                buy: { \
                    id: "minecraft:jigsaw", \
                    count: 3, \
                    components: { \
                        item_name: {translate: "uber.item.gold_coin"}, \
                        rarity: "common", \
                        custom_model_data: {strings: ["uber.coin.gold"]}, \
                        custom_data: {item: "uber.coin", coin: "gold"} \
                    } \
                }, \
                sell: { \
                    id: "minecraft:carrot_on_a_stick", \
                    count: 1, \
                    components: { \
                        item_name: {translate: "uber.ticket.forceload.name"}, \
                        lore: [{translate: "uber.ticket.lore"}], \
                        rarity: "rare", \
                        custom_model_data: {strings: ["uber.ticket.forceload"]}, \
                        custom_data: {type: "uber.ticket", item: "forceload_ticket"} \
                    } \
                } \
            } \
        ] \
    } \
}