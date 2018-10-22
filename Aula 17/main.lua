msgr = require "mqttLoveLibrary"

local bolas = {}
local pontos = 0
local N = 100
local R = 50
local S = 0   -- semente fixa
local idjogador = '65955259'

local cores = {{102/255,255/255,102/255},
               {255/255,178/255,102/255},
               {160/255,160/255,160/255},
               {255/255,102/255,102/255},
               {76/255, 0, 153/255},
               {200/255, 50/255, 50/255},
               {0,51/255,102/255}}

local function mensagemRecebida(mensagem)
  
    -- mensagem == <350><415><1>
    --apaga a bola
  
end
function love.load ()
  msgr.start(idjogador, "canalunico", mensagemRecebida)
  local w, h = love.graphics.getDimensions()
  -- generate bolas
  math.randomseed(S)
  for i = 1, N do
    local r = math.random(R/10,R)
    local x = math.random(r,w-r)
    local y = math.random(r,h-r)
    local cor = cores[math.random(1, #cores)]
    table.insert(bolas, {r = r, x = x, y = y, cor = cor})
  end
  -- init graphics
  love.graphics.setBackgroundColor(1,1,1)
  local font = love.graphics.newFont("Arial.ttf",24)
  text = love.graphics.newText(font,"")
end

function love.draw ()
  for i = 1, #bolas do
    love.graphics.setColor(bolas[i].cor[1],bolas[i].cor[2],bolas[i].cor[3])
    love.graphics.circle("fill",bolas[i].x,bolas[i].y,bolas[i].r)
  end
  text:set(string.format("Pontos: %.1f",pontos))
  love.graphics.setColor(0,0,0)
  love.graphics.draw(text,0,0)
end

function love.mousepressed (x, y, bt)
  
  
  
  
  for i = #bolas, 1, -1 do
    if math.sqrt((x-bolas[i].x)^2 + (y-bolas[i].y)^2) < bolas[i].r then
      pontos = pontos + R / bolas[i].r
      table.remove(bolas,i)
      break
    end
  end
end



function love.update(dt)
  msgr.checkMessages()
end

