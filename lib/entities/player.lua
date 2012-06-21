--[[
LÖVE Boilerplate - A template for the LÖVE framework (love2d)

# Player Class
# Represents the player

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

Player = {}

function Player:new(x, y, object)
  if not love then print "This library requires Love2D"; return false; end

  object = object or {} -- create object if user does not provide one
  setmetatable(object, self)
  self.__index = self -- self refers to Player here

  object.x = x
  object.y = y
  object.lives = 5
  object.jumping = false
  object.scaling = 1.0
  object.image = love.graphics.newImage("media/images/player.png")

  return object
end

function Player:draw()
  love.graphics.draw(self.image, self.x, self.y, 0, self.scaling, self.scaling, 0, 0)
end

function Player:update(dt)
  -- update the state of your player
end

function Player:jump()
  -- insert the code for jumping in here
  self.jumping = true
end

function Player:getLives()
  return self.lives
end

function Player:decreaseLives()
  self.lives = self.lives - 1
end

function Player:isJumping()
  return self.jumping
end