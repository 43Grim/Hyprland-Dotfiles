-- ╔═══════════════════════════════════════════════════════╗
-- ║                   modules/keybinds.lua                ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- All keybindings.

local mainMod     = "SUPER"
local terminal    = "kitty"
local fileManager = "dolphin"
local ipc         = "noctalia msg "

-- ── Core window / app management ────────────────────────────────────────────
hl.bind(mainMod .. " + space",     hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. " + Z",         hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E",         hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + X",         hl.dsp.window.close())
hl.bind(mainMod .. " + F",         hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(mainMod .. " + L",         hl.dsp.exec_cmd(ipc .. "session lock"))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- ── Media & hardware keys ───────────────────────────────────────────────────
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd(ipc .. "volume-up"),     { repeating = true, locked = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd(ipc .. "volume-down"),   { repeating = true, locked = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd(ipc .. "volume-mute"),   { repeating = false, locked = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd(ipc .. "brightness-up"), { repeating = true, locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"), { repeating = true, locked = true })
hl.bind("Delete",                hl.dsp.exec_cmd(ipc .. "mic-mute"),      { repeating = false, locked = true })

-- ── Utilities ───────────────────────────────────────────────────────────────
hl.bind(mainMod .. " + V",         hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))
hl.bind(mainMod .. " + PERIOD",    hl.dsp.exec_cmd(ipc .. 'panel-toggle launcher "/emo "'))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(ipc .. "screenshot-region"))
hl.bind(mainMod .. " + ALT + C",   hl.dsp.exec_cmd(
    "pkill -SIGUSR1 -f '[g]pu-screen-recorder' && notify-send 'Clip Saved!' 'Your last 30 seconds were saved.' -i video-x-generic"
))

-- ── Scratchpad ──────────────────────────────────────────────────────────────
hl.bind(mainMod .. " + C",         hl.dsp.workspace.toggle_special("scratchpad"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.window.move({ workspace = "special:scratchpad" }))

-- ── Workspaces 1-6 ──────────────────────────────────────────────────────────
for i = 1, 6 do
    hl.bind(mainMod .. " + " .. i,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end
