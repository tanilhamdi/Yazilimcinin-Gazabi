local Player = {}
Player.__index = Player

function Player.new(hp, speed, x, y, width, height)
    local self = setmetatable({}, Player)
    self.hp = hp
    self.speed = speed
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    return self
end

function Player:update(dt)
    local kd = love.keyboard
    if kd.isDown("d") then self.x = self.x + self.speed * dt end
    if kd.isDown("a") then self.x = self.x - self.speed * dt end
end

function Player:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

return Player
