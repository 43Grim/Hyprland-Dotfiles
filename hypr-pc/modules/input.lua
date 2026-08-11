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

        touchpad = {
            natural_scroll        = true,
          disable_while_typing  = false,
          tap_to_click          = true,
          tap_and_drag          = true,
          drag_lock             = false,
          scroll_factor          = 0.6,
          clickfinger_behavior  = true,
          middle_button_emulation = false,
        },
    },
})
