$give @s minecraft:compass[ \
  minecraft:custom_name={translate: "uber.event.sculk_egg_compass.name"}, \
  minecraft:lore=[ {translate: "uber.event.sculk_egg_compass.lore"} ], \
  minecraft:rarity= "uncommon", \
  minecraft:lodestone_tracker={ \
    target: {dimension:"minecraft:overworld", pos:$(pos)}, \
    tracked: false \
  } \
] 1