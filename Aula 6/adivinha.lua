function jogada(tentativasrestantes, numerocorreto, tentou)
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
      jogada(tentativasrestantes-1,numerocorreto,tentou+1)
    elseif palpite < numerocorreto then
      print("1")
      jogada(tentativasrestantes-1,numerocorreto,tentou+1)
    end
  end
    
end
math.randomseed(os.time())
resposta = math.random(1024)

jogada(20, resposta,0)
