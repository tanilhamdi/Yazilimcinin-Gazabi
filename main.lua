
local Player = require("src.player")
local Ground = require("src.groundObj")

local p
local ground

function love.load()
    p = Player.new(100, 200, 42, 300 ,32, 32, 300, 600)
    ground = Ground.new(0, 532, 1000, 50)
end

function love.update(dt)
    p:update(dt, ground)
end

function love.draw()
    p:draw()
    ground:draw()
end
