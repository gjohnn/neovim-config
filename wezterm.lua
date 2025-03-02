local wezterm = require 'wezterm'

return {
  -- Habilitar transparencia
  window_background_opacity = 0.8, -- Puedes ajustar el valor entre 0 (totalmente transparente) y 1 (totalmente opaco)

  -- Configurar splits
  keys = {
    -- Split hacia abajo
    {key="D", mods="CTRL|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    -- Split hacia arriba
    {key="W", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneByIndex=0}},
    -- Split hacia la derecha
    {key="S", mods="CTRL|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    -- Split hacia la izquierda
    {key="A", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneByIndex=0}},
  },

  -- Otras configuraciones de apariencia
  color_scheme = "OneHalfDark", -- Puedes cambiar el esquema de colores aquí
  font = wezterm.font("JetBrains Mono"), -- Puedes ajustar la fuente a tu preferencia
  font_size = 12.0, -- Tamaño de la fuente
}
