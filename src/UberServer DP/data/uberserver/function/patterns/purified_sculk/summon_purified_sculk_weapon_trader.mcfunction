summon villager ~ ~1 ~ { \
    Invulnerable: 1b, \
    VillagerData: { \
        profession:"minecraft:toolsmith", \
        level: 5, \
        type: "minecraft:snow" \
    }, \
    CustomName: {"translate":"uber.npc.pattern_trader_weapon.name"}, \
    Offers: { \
        Recipes: [ \
            { \
                maxUses: 999999, \
                uses: 0, \
                rewardExp: 0, \
                priceMultiplier: 0.0, \
                buy: { \
                    id: "minecraft:amethyst_shard", \
                    count: 10, \
                    components: { \
                        item_name: {translate: "uber.event.purified_sculk_sample.name"}, \
                        lore: [ \
                            {translate: "uber.event.purified_sculk_sample.lore"}, \
                            {translate: "uber.event.purified_sculk_sample.lore2"}, \
                            {translate: "uber.event.purified_sculk_sample.lore3"} \
                        ], \
                        rarity: "rare", \
                        custom_data: {type: "uber.event", item: "purified_sculk_sample"} \
                    } \
                }, \
                sell: { \
                    id: "minecraft:paper", \
                    count: 1, \
                    components: { \
                        item_name: {translate: "uber.pattern.purified_sculk_weapon_pattern.name"}, \
                        lore: [{translate: "uber.pattern.patterns.lore"}], \
                        rarity: "rare", \
                        custom_model_data: {strings: ["uber.pattern.purified_sculk_weapon_pattern"]}, \
                        custom_data: {type: "uber.pattern", item: "purified_sculk_weapon_pattern"} \
                    } \
                } \
            } \
        ] \
    } \
}
