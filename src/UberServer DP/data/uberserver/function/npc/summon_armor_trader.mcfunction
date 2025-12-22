summon villager ~ ~ ~ { \
    NoAI: 1b, \
    Invulnerable: 1b, \
    VillagerData: { \
        profession:"minecraft:armorer", \
        level: 5, \
        type: "minecraft:snow" \
    }, \
    Tags: ["uber.armor_trader"], \
    CustomName: {"translate":"uber.npc.pattern_trader_armor.name", "italic": false}, \
    Offers: { \
        Recipes: [ \
            { \
                maxUses: 999999, \
                uses: 0, \
                rewardExp: 0, \
                priceMultiplier: 0.0, \
                buy: { \
                    id: "minecraft:echo_shard", \
                    count: 10, \
                    components: { \
                        item_name: {translate: "uber.event.sculk_sample.name"}, \
                        lore: [ \
                            {translate: "uber.event.sculk_sample.lore"}, \
                            {translate: "uber.event.sculk_sample.lore2"}, \
                            {translate: "uber.event.sculk_sample.lore3"} \
                        ], \
                        rarity: "rare", \
                        custom_model_data: {strings: ["uber.event.sculk_sample"]}, \
                        custom_data: {type: "uber.event", item: "sculk_sample"} \
                    } \
                }, \
                sell: { \
                    id: "minecraft:paper", \
                    count: 1, \
                    components: { \
                        item_name: {translate: "uber.pattern.sculk_armor_pattern.name"}, \
                        lore: [{translate: "uber.pattern.patterns.lore"}], \
                        rarity: "rare", \
                        custom_model_data: {strings: ["uber.pattern.sculk_armor_pattern"]}, \
                        custom_data: {type: "uber.pattern", item: "sculk_armor_pattern"} \
                    } \
                } \
            }, \
            { \
                maxUses: 999999, \
                uses: 0, \
                rewardExp: 0, \
                priceMultiplier: 0.0, \
                buy: { \
                    id: "minecraft:test_instance_block", \
                    count: 4, \
                    components: { \
                        item_name: {translate: "uber.item.silver_coin"}, \
                        rarity: "common", \
                        custom_model_data: {strings: ["uber.coin.silver"]}, \
                        custom_data: {item: "uber.coin", coin: "silver"} \
                    } \
                }, \
                buyB: { \
                    id: "minecraft:test_block", \
                    count: 4, \
                    components: { \
                        item_name: {translate: "uber.item.copper_coin"}, \
                        rarity: "common", \
                        custom_model_data: {strings: ["uber.coin.copper"]}, \
                        custom_data: {item: "uber.coin", coin: "copper"} \
                    } \
                }, \
                sell: { \
                    id: "minecraft:paper", \
                    count: 1, \
                    components: { \
                        item_name: {translate: "uber.pattern.minimal_diamond_armor_pattern.name"}, \
                        lore: [{translate: "uber.pattern.patterns.lore"}], \
                        custom_model_data: {strings: ["uber.pattern.minimal_diamond_armor_pattern"]}, \
                        custom_data: {type: "uber.pattern", item: "minimal_diamond_armor_pattern"} \
                    } \
                } \
            }, \
            { \
                maxUses: 999999, \
                uses: 0, \
                rewardExp: 0, \
                priceMultiplier: 0.0, \
                buy: { \
                    id: "minecraft:test_instance_block", \
                    count: 4, \
                    components: { \
                        item_name: {translate: "uber.item.silver_coin"}, \
                        rarity: "common", \
                        custom_model_data: {strings: ["uber.coin.silver"]}, \
                        custom_data: {item: "uber.coin", coin: "silver"} \
                    } \
                }, \
                buyB: { \
                    id: "minecraft:test_block", \
                    count: 4, \
                    components: { \
                        item_name: {translate: "uber.item.copper_coin"}, \
                        rarity: "common", \
                        custom_model_data: {strings: ["uber.coin.copper"]}, \
                        custom_data: {item: "uber.coin", coin: "copper"} \
                    } \
                }, \
                sell: { \
                    id: "minecraft:paper", \
                    count: 1, \
                    components: { \
                        item_name: {translate: "uber.pattern.minimal_netherite_armor_pattern.name"}, \
                        lore: [{translate: "uber.pattern.patterns.lore"}], \
                        custom_model_data: {strings: ["uber.pattern.minimal_netherite_armor_pattern"]}, \
                        custom_data: {type: "uber.pattern", item: "minimal_netherite_armor_pattern"} \
                    } \
                } \
            } \
        ] \
    } \
}
