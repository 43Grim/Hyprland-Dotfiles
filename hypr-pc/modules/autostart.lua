-- ╔═══════════════════════════════════════════════════════╗
-- ║                  modules/autostart.lua                ║
-- ╚═══════════════════════════════════════════════════════╝
--
-- Services launched once when Hyprland starts.

hl.on("hyprland.start", function()
-- ── Session / environment ───────────────────────────────────────────────
hl.exec_cmd("dbus-update-activation-environment --systemd --all")
hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")

-- ── Auth ────────────────────────────────────────────────────────────────
hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
hl.exec_cmd("hyprpolkitagent")

-- ── User services ───────────────────────────────────────────────────────
hl.on("hyprland.start", function() hl.exec_cmd(os.getenv("HOME") .. "/home/max/.config/hypr/scripts/auto-clip.fish") end)
hl.exec_cmd("easyeffects --gapplication-service")

-- ── Noctalia Shell ──────────────────────────────────────────────────────
hl.exec_cmd("noctalia")
end)
