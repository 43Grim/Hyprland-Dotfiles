-- ╔═══════════════════════════════════════════════════════╗
-- ║                   modules/rules.lua                   ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- Window rules and workspace assignments.

-- Move specific apps to workspace 3
for _, app in ipairs({ "spotify", "discord" }) do
    hl.window_rule({
        match     = { class = app },
        workspace = "4",
    })
    end

    -- Floating helpers
    hl.window_rule({
        match = { class = "pavucontrol" },
        float = true,
    })

    hl.window_rule({
        match = { class = "blueman-manager" },
        float = true,
    })
