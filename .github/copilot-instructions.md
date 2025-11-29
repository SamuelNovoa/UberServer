# UberServer Minecraft Pack Development Guide

## Project Overview
This is a dual Minecraft pack project (datapack + resource pack) for Minecraft 1.21+ that adds a custom currency system, custom items, and chest loot modifications. Both packs work together to create custom items using vanilla blocks as item containers with custom models.

## Architecture & Key Components

### Dual-Pack System
- **Datapack (`src/UberServer DP/`)**: Pack format 88, handles game logic, loot tables, recipes, and functions
- **Resource Pack (`src/UberServer RP/`)**: Pack format 69, provides custom models, textures, and translations
- Both must be deployed together - datapack warns users if resource pack is missing

### Custom Item Pattern
Custom items are created by repurposing vanilla blocks/items as item containers with custom models:

**Coins use technical blocks:**
- Copper: `test_block` → model `uber.coin.copper`
- Silver: `test_instance_block` → model `uber.coin.silver`  
- Gold: `jigsaw` → model `uber.coin.gold`
- Platinum: `structure_block` → model `uber.coin.platinum`

**Items use existing items:**
- Ancient Bow: `bow` → model `uber.item.ancient_bow`
- Ancient Shovel: `netherite_shovel` → model `uber.item.ancient_shovel`
- Sculk samples: `echo_shard`/`amethyst_shard` with custom NBT

### Item Definition Components
Every custom item requires 3-part synchronization:

1. **Datapack function** (e.g., `coins/copper.mcfunction`):
   ```mcfunction
   give @s test_block[item_name={"translate":"uber.item.copper_coin"},rarity="common",custom_model_data={"strings":["uber.coin.copper"]},custom_data={"item":"uber.coin","coin":"copper"}]
   ```

2. **Resource pack model** (e.g., `assets/minecraft/items/test_block.json`):
   ```json
   {
     "model": {
       "type": "minecraft:select",
       "property": "minecraft:custom_model_data",
       "cases": [
         { "when": "uber.coin.copper", "model": { "type": "minecraft:model", "model": "item/copper" } }
       ],
       "fallback": { "type": "minecraft:model", "model": "block/test_block" }
     }
   }
   ```

3. **Translation key** (e.g., `assets/minecraft/lang/en_us.json`):
   ```json
   { "uber.item.copper_coin": "Copper Coin" }
   ```

**Critical:** All three must use the same CMI string identifier (e.g., `uber.coin.copper`) and translation key.

## Development Workflows

### Building Packs
Run `python compile.py` to generate distributable `.zip` files in `build/`:
- Creates `build/UberServer DP.zip` (datapack)
- Creates `build/UberServer RP.zip` (resource pack)
- Both use ZIP_DEFLATED compression

### Testing in Minecraft
1. Build both packs with `compile.py`
2. Install datapack: Copy to `world/datapacks/`
3. Install resource pack: Add to options menu or server resource pack
4. Reload with `/reload` command
5. Test items with functions: `/function uberserver:coins/copper`

### File Organization
- Vanilla overrides: `data/minecraft/loot_table/chests/` modifies base game loot tables
- Custom content: `data/uberserver/` namespace for all custom functionality
- Load hook: `data/minecraft/tags/function/load.json` registers `uberserver:load`

## Important Conventions

### Loot Table Integration
Vanilla chest loot tables add custom coin pools as first entry with 50% chance:
```json
{
  "pools": [
    {
      "rolls": { "min": 1, "max": 2 },
      "conditions": [{ "condition": "minecraft:random_chance", "chance": 0.5 }],
      "entries": [{ "type": "minecraft:loot_table", "value": "uberserver:chests/coins_loot" }]
    },
    // ...vanilla pools follow
  ]
}
```

### Recipe System
Coins use shapeless crafting for conversion:
- 9 copper → 1 silver
- 9 silver → 1 gold  
- 9 gold → 1 platinum
- Reverse with `down_*_coin.json` recipes

### Multi-Language Support
Provide translations in `assets/minecraft/lang/`:
- `en_us.json` (English)
- `es_es.json` (Spanish)
- `ru_ru.json` (Russian)
- `uk_ua.json` (Ukrainian)

### NBT Data Pattern
Custom items store metadata in `custom_data`:
```json
"custom_data": {
  "item": "uber.coin",      // Item category
  "coin": "copper"          // Specific type
}
```

Use `custom_data~{key:value}` for matching in commands.

## Common Pitfalls

1. **Model mismatches**: Ensure CMI string in function matches resource pack item model file
2. **Missing fallbacks**: Always provide fallback models in resource pack to prevent invisible items
3. **Translation keys**: Use `translate` in `item_name`, not raw text
4. **Technical blocks**: Don't use `barrier` or `light` - they have rendering issues
5. **Pack formats**: DP uses 88, RP uses 69 - they're different for 1.21+

## Key Files Reference

- `compile.py` - Build automation script
- `src/UberServer DP/data/uberserver/function/load.mcfunction` - Initialization entry point
- `src/UberServer DP/data/uberserver/loot_table/chests/coins_loot.json` - Base coin loot pool
- `src/UberServer RP/assets/minecraft/items/*.json` - Item model overrides (bow, jigsaw, structure_block, etc.)
- `src/UberServer RP/assets/minecraft/lang/en_us.json` - English translations (base reference)
