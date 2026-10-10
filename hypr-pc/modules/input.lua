-- ╔═══════════════════════════════════════════════════════╗
-- ║                  modules/input.lua                    ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- Keyboard, mouse and touchpad settings.

hl.config({
    input = {
        -- Keyboard
        kb_layout        = "us",
        numlock_by_default = false,
        repeat_rate      = 35,
        repeat_delay     = 250,

        -- Mouse
        sensitivity      = 0.0,
        accel_profile    = "flat",
        follow_mouse     = 1,
        float_switch_override_focus = 0,
    },
})
