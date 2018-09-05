function love.draw()  
  
  local hora= os.date("*t")  
  local w, h = love.graphics.getDimensions()
  local espessura = 5
  local angulo = 0
  
  love.graphics.translate(w/2,h/2)
  
  love.graphics.setBackgroundColor(0.5,0.5,0.5)  
  love.graphics.setColor(0,0.7,0)
  love.graphics.circle("fill", 0 ,0 , 280)
  
  angulo = (2*math.pi/360) * hora.sec 
  love.graphics.setColor(1,0,0)
  love.graphics.rotate(angulo)
  love.graphics.rectangle("fill", 0, -2.5, 275, espessura)
  love.graphics.rotate(-angulo)
  
  angulo = (2*math.pi/360) * hora.min  
  love.graphics.setColor(0,0,0)
  love.graphics.rotate(angulo)
  love.graphics.rectangle("fill", 0, -2.5, 240, espessura)
  love.graphics.rotate(-angulo)
  
  angulo = (2*math.pi/60) * hora.hour   
  love.graphics.setColor(1,1,0)
  love.graphics.rotate(angulo)
  love.graphics.rectangle("fill", 0, -2.5, 205, espessura)
  love.graphics.rotate(angulo)
  
  love.graphics.setColor(0,0,0)
  love.graphics.circle("fill", 0, 0, espessura)
  
end
