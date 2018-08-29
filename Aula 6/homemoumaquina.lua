function jogadaHumano(tentativasrestantes, numerocorreto, tentou)
  if tentativasrestantes == 0 then
    print("Suas tentativas terminaram.")    
  else
    print("Forneça seu palpite: ")
    palpite = io.read("*n")
    if palpite == numerocorreto then
      tentou = tentou + 1
      print("0")
      print("Conseguiu em "..tentou .." tentativas")
    elseif palpite > numerocorreto then
      print("-1")
      jogadaHumano(tentativasrestantes-1,numerocorreto,tentou+1)
    elseif palpite < numerocorreto then
      print("1")
      jogadaHumano(tentativasrestantes-1,numerocorreto,tentou+1)
    end
  end
    
end


function jogadaCPU(tentativasrestantes,chute, tamanho, tentou)
  if tentativasrestantes == 0 then
    print("Suas tentativas acabaram")
  end
  errei = tamanho /2
  print("O palpite do computador é: ", chute)  
  teste = io.read("*n")
  if teste == 0 then
    tentou = tentou + 1
    print("Uhul vitoria das maquinas em "..tentou.." tentativas")
  elseif teste == 1 then
    print("Puts, é menor")
    tentou = tentou + 1
    chute = chute + errei
    jogadaCPU(tentativasrestantes-1,chute, tamanho/2, tentou)
  elseif teste == -1 then
    tentou = tentou + 1
    print("Puts, é maior grr")
    chute = chute - errei
    jogadaCPU(tentativasrestantes-1,chute, tamanho/2, tentou)
  end
end

math.randomseed(os.time())
resposta = math.random(1024)

print("Quem tentará adivinhar?")
tenta = io.read("*n")
if tenta == 0 then
 jogadaHumano(20, resposta)
else 
 jogadaCPU(20,512, 512, 0)
 end
