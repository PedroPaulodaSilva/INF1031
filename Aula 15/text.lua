local text = {}

--  inicializar
local cores = {
  
  preto = {0,0,0},
  branco = {1,1,1},
  azul = {0,0,1},
  azulzinho = {0,0,1/2},
  verde = {0,1,0},
  verdinho = {0,1/2,0},
  vermelho = {1,0,0},
  random = {0,0,0}
  
  
}
math.randomseed(os.time())

function text.new(fontname, size, str)
  local meutexto = {}
  local fonte = love.graphics.newFont(fontname .. ".ttf", size)
  local texto = love.graphics.newText(fonte,str)
  meutexto.texto = texto
  meutexto.cor = cores.preto
  meutexto.ancora = "no"
  return meutexto
  
end

function text.setString(obj, str)
end

function text.setColor(obj, r, g, b)
end

function text.setAnchor(obj, value)
end

function text.getDimensions(obj)
  return 200, 200
end

function text.draw(obj, x, y)
end


return text
