execute at @s align xyz run setblock ~ ~ ~ minecraft:vault

execute at @s align xyz run data merge block ~ ~ ~ { \
    id: "minecraft:vault", \
    config: { \
        loot_table: "uberserver:vaults/sculk_vault", \
        key_item: { \
            id: "minecraft:paper", \
            count: 1, \
            components: { \
                item_name: {translate: "uber.event.sculk_key.name"}, \
                lore: [{translate: "uber.event.sculk_key.lore"}], \
                rarity: "common", \
                custom_data: {type: "uber.event", item: "sculk_key"}, \
                custom_model_data: {strings: ["uber.event.sculk_key"]} \
            } \
        } \
    } \
}

execute at @s align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["sculk_vault_marker"]}