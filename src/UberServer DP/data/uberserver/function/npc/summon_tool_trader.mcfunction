summon villager ~ ~ ~ { \
    NoAI: 1b, \
    Invulnerable: 1b, \
    VillagerData: { \
        profession:"minecraft:weaponsmith", \
        level: 5, \
        type: "minecraft:snow" \
    }, \
    CustomName: {"translate":"uber.npc.pattern_trader_tool.name"}, \
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
                        item_name: {translate: "uber.pattern.sculk_tool_pattern.name"}, \
                        lore: [{translate: "uber.pattern.patterns.lore"}], \
                        rarity: "rare", \
                        custom_model_data: {strings: ["uber.pattern.sculk_tool_pattern"]}, \
                        custom_data: {type: "uber.pattern", item: "sculk_tool_pattern"} \
                    } \
                } \
            } \
        ] \
    } \
}

