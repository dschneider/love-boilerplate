--[[
LÖVE Boilerplate - A template for the LÖVE framework (love2d)

# Camera Class
# Represents a camera

Written by Michael Ebens
Source: <http://nova-fusion.com/2011/04/19/cameras-in-love2d-part-1-the-basics/>
Follow this awesome tutorial to learn more about cameras in LÖVE!

Modified by Dennis Schneider <http://www.dennis-schneider.com>
(Transformed it into a class, renamed some variables)

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

Camera = {}

function Camera:new(x, y, scale_x, scale_y, rotation, object)
  if not love then print "This library requires Love2D"; return false; end

  object = object or {} -- create object if user does not provide one
  setmetatable(object, self)
  self.__index = self -- self refers to Camera here

  object.x = x
  object.y = y
  object.scale_x = scale_x or 1
  object.scale_y = scale_y or 1
  object.rotation = rotation or 0
  object.layers = {}

  return object
end

function Camera:set()
  love.graphics.push()
  love.graphics.rotate(-self.rotation)
  love.graphics.scale(1 / self.scale_x, 1 / self.scale_y)
  love.graphics.translate(-self.x, -self.y)
end

function Camera:unset()
  love.graphics.pop()
end

function Camera:getX()
  return self.x
end

function Camera:getY()
  return self.y
end

function Camera:move(dx, dy)
  self.x = self.x + (dx or 0)
  self.y = self.y + (dy or 0)
end

function Camera:rotate(rotation)
  self.rotation = self.rotation + rotation
end

function Camera:scale(sx, sy)
  sx = sx or 1
  self.scale_x = self.scale_x * sx
  self.scale_y = self.scale_y * (sy or sx)
end

function Camera:setPosition(x, y)
  self.x = x or self.x
  self.y = y or self.y
end

function Camera:setScale(sx, sy)
  self.scale_x = sx or self.scale_x
  self.scale_y = sy or self.scale_y
end

function Camera:newLayer(scale, func)
  table.insert(self.layers, { draw = func, scale = scale })
  table.sort(self.layers, function(a, b) return a.scale < b.scale end)
end

function Camera:resetLayers()
  self.layers = {}
end

function Camera:drawLayers()
  local bx, by = self.x, self.y
  
  for _, v in ipairs(self.layers) do
    self.x = bx * v.scale
    self.y = by * v.scale
    camera:set()
    v.draw()
    camera:unset()
  end
end