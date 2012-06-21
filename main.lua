--[[
LÖVE Boilerplate - A template for the LÖVE framework (love2d)

# Main file
# Runs the LÖVE project

Written by Dennis Schneider <http://www.dennis-schneider.com>

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
]]--

-- core libraries
require("lib.core.camera")
require("lib.core.world")
Gui = require ("lib.vendor.quickie")

--animations library
require("lib.vendor.anal")

-- entities like players, enemies, ...
require("lib.entities.player")

-- game states
Gamestate = require('lib.vendor.hump.gamestate')
require("lib.states.game")

function love.load()
  love.graphics.setIcon(love.graphics.newImage("media/images/icon.png"))
  love.graphics.setCaption("GAME NAME")
  love.graphics.setMode(1024, 768, false, true, 0)

  -- will switch to the game gamestate, you could start 
  -- with the intro or main menu here
  Gamestate.switch(game)
end

function love.update(dt)
  Gamestate.update(dt) 
end

function love.keypressed(key)
  Gamestate.keypressed(key, code)
end

function love.draw()
  Gamestate.draw()
end