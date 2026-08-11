-- ╔═══════════════════════════════════════════════════════╗
-- ║                   modules/gestures.lua                ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- Window touchpad gestures

-- ── Gestures ────────────────────────────────────────────────────────────────
hl.config({
    gestures = {
        workspace_swipe_distance              = 300,
        workspace_swipe_invert                = true,
        workspace_swipe_cancel_ratio          = 0.3,
        workspace_swipe_min_speed_to_force    = 30,
        workspace_swipe_create_new            = true,
        workspace_swipe_direction_lock        = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_forever               = false,
    },
})

hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "workspace",
})
