-- This module is used to select which commands/applications
-- should run during the launch of Awesome (or every reload)

-- Modules loaded:
local awful = require("awful")

-- Defining this as a module:
local autostart = {}

-- List of commands to run:
autostart.commands = {
	"picom",
	"feh --bg-fill ~/.config/wallpaper/wallpaper.png",
	"killall polybar; polybar complete &"
}

-- Function to loop through each command
for _, command in pairs(autostart.commands) do
	awful.spawn.with_shell(command)
end

return autostart
