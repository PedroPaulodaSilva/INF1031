function love.draw()
  love.graphics.setBackgroundColor(0.5,0.5,0.5)
  
  local w, h = love.graphics.getDimensions()   
  local datahora= os.date("*t")
  local st = string.format("%d horas, %d minutos e %d segundos", datahora.hour, datahora.min, datahora.sec)
  local fonte  =  love.graphics.newFont("Arial.ttf",32)
  local texto  =  love.graphics.newText(fonte,st)
  local tw, th = texto:getDimensions()
  love.graphics.draw(texto, (w-tw)/2, (h-th)/2)
end
