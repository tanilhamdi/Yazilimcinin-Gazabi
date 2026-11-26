local Bullet = {}
Bullet.__index = Bullet 

function Bullet.new(speed, x, y, width, height)
	local self = setmetatable({}, Bullet)
	self.speed = speed
	self.x = x
	self.y = y
	self.width = width 
	self.height = height

	return self
end

function Bullet:update(dt)

	self.x = self.x + self.speed * dt 

end

function Bullet:draw()
	-- drawing bullet
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
	
end

return Bullet
