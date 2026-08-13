-- ╔═══════════════════════════════════════════════════════╗
-- ║                   modules/env.lua                     ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- Environment variables for Wayland, toolkits, cursors and
-- overall session configuration.

local home = os.getenv("HOME") or ""

if hl and type(hl.exec) == "function" then
    hl.exec("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    end

-- ── XDG / Session ───────────────────────────────────────────────────────────
hl.env("XDG_CURRENT_DESKTOP",  "Hyprland")
hl.env("XDG_SESSION_TYPE",     "wayland")
hl.env("XDG_SESSION_DESKTOP",  "Hyprland")

hl.env("XDG_DATA_DIRS", table.concat({
    home .. "/.local/share/flatpak/exports/share",
    "/var/lib/flatpak/exports/share",
    "/usr/share",
    "/usr/local/share",
}, ":"))

-- ── Toolkits ────────────────────────────────────────────────────────────────
hl.env("GDK_BACKEND",          "wayland,x11")
hl.env("QT_QPA_PLATFORM",      "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("SDL_VIDEODRIVER",      "wayland")
hl.env("CLUTTER_BACKEND",      "wayland")
hl.env("_JAVA_AWT_WM_NONREPARENTING", "1")

-- ── Theming ─────────────────────────────────────────────────────────────────
hl.env("GTK_THEME",     "Arc-Dark")
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE",  "24")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_SIZE",  "24")

-- ── Core Hyprland settings that belong with the environment ─────────────────
return {
    misc = {
        disable_hyprland_logo   = true,
        disable_splash_rendering = true,
        focus_on_activate       = true,
        enable_swallow          = true,
        swallow_regex           = "^(kitty|foot|alacritty)$",
    },

    general = {
        gaps_in     = 5,
        gaps_out    = 10,
        border_size = 2,
        layout      = "dwindle",
        resize_on_border = true,
    },
}
