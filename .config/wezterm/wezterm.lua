local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- 1. Шрифт (обязательно укажите название точно, как в системе)
config.font = wezterm.font("Monocraft")
config.color_scheme = "Tokyo Night"
-- 2. Критически важно для пиксельных шрифтов:
-- Отключаем сложное сглаживание, чтобы пиксели не "мылились"
--config.freetype_load_target = "Mono"
--config.freetype_render_target = "Mono"

-- 3. Лигатуры включены по умолчанию, но можно задать явно:
config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" }

-- 4. Корректировка размера (пиксельные шрифты часто выглядят мелко)
config.font_size = 12.0 -- Попробуйте 14.0-18.0 для четкости
config.enable_tab_bar = false
-- 5. Если лигатуры все еще "пляшут", попробуйте отключить кернинг:
-- config.font_rules = { ... } (обычно не требуется для Monocraft)

return config
