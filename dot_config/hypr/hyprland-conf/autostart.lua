hl.on("hyprland.start", function()
  -- Set GTK3 theme
  hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'")

  -- Set color scheme for GTK4 apps
  hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")

  hl.exec_cmd("nm-applet")
  hl.exec_cmd("waybar")
  hl.exec_cmd("sway-bg")
  hl.exec_cmd("hyprsunset")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("librewolf")
  hl.exec_cmd("waypaper --restore")
  hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
end)


hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("QT_QPA_PLATFORMTHEME", "gtk2")
hl.env("GTK_COLOR_SCHEME", "dark_mode=yes")
hl.env("FORCE_COLOR", "1")
hl.env("GTK_THEME", "Adwaita:dark")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
-- hl.env("XDG_CONFIG_HOME", "$HOME/.config")
-- hl.env("XDG_DATA_HOME", "$HOME/.local/share")
-- hl.env("XDG_STATE_HOME", "$HOME/.local/state")

hl.config({
  ecosystem = {
    enforce_permissions = false,
  },
})

hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")
