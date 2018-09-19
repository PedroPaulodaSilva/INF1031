local S = os.time()
local disc

function love.load ()
  local w, h = love.graphics.getDimensions()
  math.randomseed(S)
    
  discoteca = {}  --o nome dessa tabela linda é discoteca
  
  for i = 1, 150 do
    local r = math.random(10,40)
    local x = math.random(r,w-r)
    local y = math.random(r,h-r)
    local color = {math.random(0,1), math.random(0,1), math.random(0,1)}
    disc = {x = x, y = y, r = r, color = color}
    discoteca[i] = disc
  end
  
  
  love.graphics.setBackgroundColor(0.75,0.75,0.75)
end

function love.draw ()
  
  for i = 1, 150 do
    love.graphics.setColor(discoteca[i].color)
    love.graphics.circle("fill",discoteca[i].x,discoteca[i].y,discoteca[i].r)
  end
  
end
