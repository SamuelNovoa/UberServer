execute if predicate uberserver:mainhand_pearl run tag @s add uber.infinite_pearl.mainhand
execute if predicate uberserver:offhand_pearl unless predicate uberserver:mainhand_pearl run tag @s add uber.infinite_pearl.offhand

# mainhand
execute if entity @s[tag=uber.infinite_pearl.mainhand] if score @s infinite_enderpearl_use matches 1.. run item replace entity @s weapon.mainhand with ender_pearl[ \
    minecraft:item_name={translate: "uber.trinkets.infinite_pearl.name"}, \
    minecraft:lore=[ \
        {translate: "uber.trinkets.infinite_pearl.lore"}, \
    ], \
    minecraft:rarity="rare", \
    minecraft:custom_model_data={strings: ["uber.trinkets.infinite_pearl"]}, \
    minecraft:use_cooldown={seconds: 10}, \
    minecraft:custom_data={type: "uber.trinkets", item: "infinite_pearl"}, \
    minecraft:enchantments={ \
        infinity: 1 \
    } \
]

# offhand
execute if entity @s[tag=uber.infinite_pearl.offhand] if score @s infinite_enderpearl_use matches 1.. run item replace entity @s weapon.offhand with ender_pearl[ \
    minecraft:item_name={translate: "uber.trinkets.infinite_pearl.name"}, \
    minecraft:lore=[ \
        {translate: "uber.trinkets.infinite_pearl.lore"}, \
    ], \
    minecraft:rarity="rare", \
    minecraft:custom_model_data={strings: ["uber.trinkets.infinite_pearl"]}, \
    minecraft:use_cooldown={seconds: 10}, \
    minecraft:custom_data={type: "uber.trinkets", item: "infinite_pearl"}, \
    minecraft:enchantments={ \
        infinity: 1 \
    } \
]

execute unless predicate uberserver:mainhand_pearl run tag @s remove uber.infinite_pearl.mainhand
execute unless predicate uberserver:offhand_pearl run tag @s remove uber.infinite_pearl.offhand

scoreboard players reset @s infinite_enderpearl_use