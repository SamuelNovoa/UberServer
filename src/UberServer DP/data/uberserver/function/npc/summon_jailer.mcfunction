summon interaction ~ ~ ~ { \
    width: 0.8f, \
    height: 1.95f, \
    response: 0b, \
    Tags: ["uber.jailer_hitbox"], \
    CustomName: {"translate":"uber.npc.jailer.name", "italic": false}, \
}

summon villager ~ ~ ~ { \
    NoAI: 1b, \
    Invulnerable: 1b, \
    VillagerData: { \
        profession:"minecraft:cartographer", \
        level: 5, \
        type: "minecraft:taiga" \
    }, \
    Tags: ["uber.jailer"], \
    CustomName: {"translate":"uber.npc.jailer.name", "italic": false} \
}