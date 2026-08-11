-- ╔═══════════════════════════════════════════════════════╗
-- ║                 modules/monitors.lua                  ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- Configures display outputs, resolutions, positions,
-- and workspace assignments to specific monitors.

local monitors = {
    { output = "HDMI-A-1", mode = "1920x1080@74.97", pos = "0x180", ws = {4, 5, 6} },
    { output = "DP-2", mode = "2560x1440@164.83", pos = "1920x0", ws = {1, 2, 3} },
}

for _, m in ipairs(monitors) do
    hl.monitor({ output = m.output, mode = m.mode, position = m.pos, scale = 1 })
    for _, w in ipairs(m.ws) do
        hl.workspace_rule({ workspace = tostring(w), monitor = m.output })
        end
        end
