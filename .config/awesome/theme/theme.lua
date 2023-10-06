---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font          = "JetBrains Nerd Font Mono 10"

theme.bg_normal     = "#282828"
theme.bg_focus      = "#ebdbb2"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#ebdbb2"
theme.fg_focus      = "#282828"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = 6
theme.border_width  = 2
theme.border_normal = "#928374"
theme.border_focus  = "#ebdbb2"
theme.border_marked = "#91231c"

theme.wallpaper = "/home/rodrigo/.config/wallpaper/wallpaper.png"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
