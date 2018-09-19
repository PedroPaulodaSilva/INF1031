local S = os.time()
local disc
local posicao 

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
    love.graphics.setBackgroundColor(0.75,0.75,0.75)
    discoteca[i] = disc
  end
  
  
  love.graphics.setBackgroundColor(0.75,0.75,0.75)
  
  dt = math.min (w, h)/2000
end

function love.draw ()
  
  for i = #discoteca, 1, -1 do
    if i~= posicao then
      love.graphics.setColor(discoteca[i].color)
      love.graphics.circle("fill",discoteca[i].x,discoteca[i].y,discoteca[i].r)
    else
      love.graphics.setColor(1,0,0)
      love.graphics.circle("fill",discoteca[i].x,discoteca[i].y,discoteca[i].r)
    end
    
  end
  
end


function love.mousepressed (x, y)
  
  for i = #discoteca, 1, -1 do 
    
    if math.sqrt((x - discoteca[i].x)^2 + (y - discoteca[i].y)^2) < discoteca[i].r then
       posicao = i
    end        
  end  
end

function love.keypressed (key)
  local dx, dy = 0, 0
  if love.keyboard.isDown("right") then
    dx = 1
  elseif love.keyboard.isDown("left") then
    dx = -1
  elseif love.keyboard.isDown("up") then
    dy = -1
  elseif love.keyboard.isDown("down") then
    dy = 1
  end
  if posicao ~= nil then
    discoteca[posicao].x = discoteca[posicao].x + 25*dx*dt
    discoteca[posicao].y = discoteca[posicao].y + 25*dy*dt
  end
  
end
