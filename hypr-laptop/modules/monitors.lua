-- ╔═══════════════════════════════════════════════════════╗
-- ║                 modules/monitors.lua                  ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- Display configuration.

local monitors = {
    {
        output = "eDP-1",
        mode   = "1920x1200@60",
        pos    = "0x0",
        scale  = 1,
        ws     = { 1, 2, 3, 4, 5, 6 },
    },
}

for _, m in ipairs(monitors) do
    hl.monitor({
        output   = m.output,
        mode     = m.mode,
        position = m.pos,
        scale    = m.scale or 1,
    })

    for _, w in ipairs(m.ws or {}) do
        hl.workspace_rule({
            workspace = tostring(w),
                          monitor   = m.output,
        })
        end
        end
