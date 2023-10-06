local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")

local screens = {}

local function set_wallpaper(s)
    -- Wallpaper
    if beautiful.wallpaper then
        local wallpaper = beautiful.wallpaper
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end
end

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
screen.connect_signal("property::geometry", set_wallpaper)

awful.screen.connect_for_each_screen(function(s)
    -- Wallpaper
    set_wallpaper(s)

    -- Each screen has its own tag table.
    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])
    -- Optional: setting names and default layouts
    --
    -- local names = { "main", "www", "skype", "gimp", "office", "im", "7", "8", "9" }
    -- local l = awful.layout.suit  -- Just to save some typing: use an alias.
    -- local layouts = { l.floating, l.tile, l.floating, l.fair, l.max,l.floating, l.tile.left, l.floating, l.floating }
    -- awful.tag(names, s, layouts)
  end)

return screens

