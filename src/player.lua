local Player = {}
Player.__index = Player

--Constructor
function Player.new(hp, speed, x, y, width, height, jumpPower, gravity)

    local self = setmetatable({}, Player)
    self.hp = hp
    self.speed = speed
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.jumpPower = jumpPower
    self.gravity = gravity
    self.vy = 0

    return self
end

function shoot(b)
	0
end

function Player:update(dt, ground)
    local kd = love.keyboard

    local isGround = checkCollision(self, ground)

    if isGround == true then
        self.y = ground.y - self.height
        self.vy = 0
    end

    --Player Controlls
    if kd.isDown("d") then self.x = self.x + self.speed * dt end
    if kd.isDown("a") then self.x = self.x - self.speed * dt end
    if kd.isDown("w") and isGround == true then
        self.vy = -self.jumpPower
    end
    --Bullet
    if kd.isDown("space") then new 


    print("[DEBUG] isGround: " .. tostring(isGround))

    --Gravity Force
    self.vy = self.vy + self.gravity * dt
    self.y = self.y + self.vy * dt


end


function checkCollision(a, b)
    return a.x < b.x + b.width and
           b.x < a.x + a.width and
           a.y < b.y + b.height and
           b.y < a.y + a.height
end



function Player:draw()
    --Drawing Player
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end




return Player
