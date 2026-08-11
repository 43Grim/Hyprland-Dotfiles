-- ╔═══════════════════════════════════════════════════════╗
-- ║                modules/decoration.lua                 ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- Borders, blur, shadows, and rounding

hl.config({
    decoration = {
        rounding = 8,
        rounding_power = 2,

        active_opacity   = 1.0,
        inactive_opacity = 0.95,
        fullscreen_opacity = 1.0,

        blur = {
            enabled = true,
          size    = 4,
          passes  = 2,
          vibrancy = 0.2,
          new_optimizations = true,
        },

        shadow = {
            enabled = true,
          range   = 12,
          render_power = 3,
          color   = "rgba(00000055)",
        },
    },
})
