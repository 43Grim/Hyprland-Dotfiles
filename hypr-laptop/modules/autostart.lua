-- ╔═══════════════════════════════════════════════════════╗
-- ║                  modules/autostart.lua                ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- Services launched once when Hyprland starts.

hl.on("hyprland.start", function()
-- ── User Services ───────────────────────────────────────────────────────────
hl.exec_cmd("dbus-update-activation-environment --systemd --all")
hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")

-- ── Auth Services ───────────────────────────────────────────────────────────
hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
hl.exec_cmd("systemctl --user start hyprpolkitagent || /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

-- ── Caelestia Shell Utilities ───────────────────────────────────────────────
hl.exec_cmd("wl-paste --type text  --watch cliphist store")
hl.exec_cmd("wl-paste --type image --watch cliphist store")
hl.exec_cmd("caelestia shell -d")
end)
