-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
local errors = require("modules.errors")
-- }}}

-- {{{ Variable definitions
local variables = require("modules.variables")
-- }}}


-- {{{ Screens
local screens = require("modules.screens")
-- }}}

-- {{{ Mouse bindings
local mouse = require("modules.mouse")
-- }}}

-- {{{ Key bindings
local keybindings = require("modules.keybindings")
-- }}}

-- {{{ Rules
local rules = require("modules.rules")
-- }}}

-- {{{ Signals
local signals = require("modules.signals")
-- }}}

-- {{{ Autostart Scripts
local autostart = require("modules.autostart")
-- }}}
