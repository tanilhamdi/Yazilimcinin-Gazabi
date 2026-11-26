
local Ground = {}
Ground.__index = Ground


function Ground.new(x, y, width, height)
    local self = setmetatable({}, Ground)
    self.x = x
    self.y = y
    self.height = height
    self.width = width

    return self
end


function Ground:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end


return Ground
