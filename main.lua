
local Player = require("src.player")

local p

function love.load()
    p = Player.new(100, 200, 42, 300 ,32, 32 );
end

function love.update(dt)
    p:update(dt)
end

function love.draw()
    p:draw()
end
