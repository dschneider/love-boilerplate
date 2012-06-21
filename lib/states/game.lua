--[[
LÖVE Boilerplate - A template for the LÖVE framework (love2d)

# Game GameState
# Represents the Game GameState

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

game = Gamestate.new()

function game:init()
  camera = Camera:new(0, 0)
  -- initialize your game variables here
end

function game:enter(previous)
  -- whenever you enter the game state this method is called
end

function game:update(dt)
  player:update(dt)
end

function game:draw()
  camera:set()
  -- draw all the game components here, like world, effects, hud ...
  camera:unset()
end

function game:keypressed(key, code)
  -- whatever should be caught when pressing keys
  -- you can also delegate that to the objects, like the player etc.
end