
local Player = require("src.player")
local Ground = require("src.groundObj")
local Bullet = require("src.bullet")

local p
local ground
local b

function love.load()
    p = Player.new(100, 200, 42, 300 ,32, 32, 300, 600)
    ground = Ground.new(0, 532, 1000, 50)
    b = Bullet.new(700,p.x,p.y,8,4)
    bullets = {}
end

function love.update(dt)
  p:update(dt, ground, Bullet, bullets)
  b:update(dt)

  for i, bullet in ipairs(bullets) do
      bullet:update(dt)
  end

end

function love.draw()
    p:draw()
    ground:draw()
    b:draw()

  for i, bullet in ipairs(bullets) do
      bullet:draw(dt)
  end
end
