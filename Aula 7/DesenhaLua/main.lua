function love.load()
  w, h = love.graphics.getDimensions()
end
function love.draw()
  love.graphics.setBackgroundColor(1,1,1)
  
  love.graphics.setColor(0,0,0)
  love.graphics.circle("line", w/2, h/2, 100)
  
  love.graphics.setColor(0,0,1)
  love.graphics.circle("fill", w/2, h/2, 70)
  love.graphics.circle("fill", w/2 +75, h/2 -75, 20)
  
  love.graphics.setColor(1,1,1)
  love.graphics.circle("fill", w/2 +30, h/2 -35,20)
  
  local fonte = love.graphics.newFont("Arial.ttf",64)
  local texto = love.graphics.newText(fonte,"Lua")
  local tw, th = texto:getDimensions()
  love.graphics.draw(texto, (w-tw)/2,(h-th)/2)
  end
