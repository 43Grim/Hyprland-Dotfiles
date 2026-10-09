-- ╔═══════════════════════════════════════════════════════╗
-- ║                 modules/keybinds.lua                  ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- All keybindings. Keep related groups together.

local mainMod     = "SUPER"
local terminal    = "kitty"
local fileManager = "dolphin"
local ipc         = "noctalia msg "

-- ── Core window / app management ────────────────────────────────────────────
hl.bind(mainMod .. " + space",  hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. " + Z",      hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E",      hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + X",      hl.dsp.window.close())
hl.bind(mainMod .. " + F",      hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(mainMod .. " + L",      hl.dsp.exec_cmd(ipc .. "session lock"))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

-- ── Media & hardware keys ───────────────────────────────────────────────────
hl.bind("XF86AudioRaiseVolume",
        hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"),
        { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",
        hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
        { locked = true, repeating = true })
hl.bind("XF86AudioMute",
        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
        { locked = true })
hl.bind("XF86MonBrightnessUp",
        hl.dsp.exec_cmd(ipc .. "brightness-up"),
        { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",
        hl.dsp.exec_cmd(ipc .. "brightness-down"),
        { locked = true, repeating = true })

-- ── Utilities ───────────────────────────────────────────────────────────────
hl.bind(mainMod .. " + V",        hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))
hl.bind(mainMod .. " + PERIOD",   hl.dsp.exec_cmd(ipc .. 'panel-toggle launcher "/emo "'))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(ipc .. "screenshot-region"))

-- ── Scratchpad ──────────────────────────────────────────────────────────────
hl.bind(mainMod .. " + C", hl.dsp.workspace.toggle_special("scratchpad"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.window.move({ workspace = "special:scratchpad" }))

-- ── Workspaces 1-6 ──────────────────────────────────────────────────────────
for i = 1, 6 do
        hl.bind(mainMod .. " + " .. i,           hl.dsp.focus({ workspace = i }))
        hl.bind(mainMod .. " + SHIFT + " .. i,   hl.dsp.window.move({ workspace = i }))
        end
