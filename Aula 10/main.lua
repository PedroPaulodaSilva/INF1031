function love.load()
  tamanho = 1000
  love.window.setMode(tamanho,tamanho)
  end

function love.draw()
  
  desenhaTabuleiro()  
  pecasPretas()
  pecasBrancas()
end

function desenhaTabuleiro()
  love.graphics.setBackgroundColor(210/255,105/255,30/255) 
  
  for i = 1, 8 do
    
    for j = 1, 8 do
      if ((i+j) % 2 == 0 ) then
        love.graphics.setColor(0,0.5,0)
        love.graphics.rectangle("fill",0,0,tamanho/8,tamanho/8)
      end
      love.graphics.translate(tamanho/8,0)       
    end
    love.graphics.translate(-tamanho,tamanho/8)
  end
  love.graphics.translate(0,-tamanho)
end

function pecasPretas()
  for i = 1, 3 do
    for j = 1, 8 do
      if((i+j)%2==0) then
        love.graphics.setColor(0,0,0)
        love.graphics.circle("fill",62,62,tamanho/25)
      end
      love.graphics.translate(tamanho/8,0)
    end
    love.graphics.translate(-tamanho,tamanho/8)
  end
  love.graphics.translate(0,-tamanho*4/8)
end

function pecasBrancas()
  love.graphics.translate(0,tamanho*6/8)
  for i = 1, 3 do
    for j = 1, 8 do
      if((i+j)%2~=0) then
        love.graphics.setColor(1,1,1)
        love.graphics.circle("fill",62,62,tamanho/25)
      end
      love.graphics.translate(tamanho/8,0)
    end
    love.graphics.translate(-tamanho,tamanho/8)
  end
  love.graphics.translate(0,-tamanho)
end
