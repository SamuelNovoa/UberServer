data modify entity @s equipment.offhand set value { \
    id: "tipped_arrow", \
    components: { \
        potion_contents: { \
            custom_effects: [ \
                { id: darkness, duration: 1000 } \
            ] \
        } \
    } \
}