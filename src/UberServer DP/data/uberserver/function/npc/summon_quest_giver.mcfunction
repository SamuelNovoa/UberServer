summon interaction ~ ~ ~ { \
    width: 0.8f, \
    height: 1.95f, \
    response: 0b, \
    Tags: ["uber.quest_giver_hitbox"], \
    CustomName: {"translate":"uber.npc.quest_giver.name", "italic": false}, \
}

summon villager ~ ~ ~ { \
    NoAI: 1b, \
    Invulnerable: 1b, \
    VillagerData: { \
        profession:"minecraft:cartographer", \
        level: 5, \
        type: "minecraft:jungle" \
    }, \
    Tags: ["uber.quest_giver"], \
    CustomName: {"translate":"uber.npc.quest_giver.name", "italic": false} \
}