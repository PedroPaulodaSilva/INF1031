function jogada(tentativasrestantes, numerocorreto)
  if tentativasrestantes == 0 then
    print("Suas tentativas terminaram.")    
  else
    print("Forneça seu palpite: ")
    palpite = io.read("*n")
    if palpite == numerocorreto then
      print("0")
      print("Conseguiu em "..tentativasrestantes .."tentativas")
    elseif palpite > numerocorreto then
      print("-1")
      jogada(tentativasrestantes-1,numerocorreto)
    elseif palpite < numerocorreto then
      print("1")
      jogada(tentativasrestantes-1,numerocorreto)
    end
  end
    
end
math.randomseed(os.time())
resposta = math.random(1024)
print("a cola é",resposta)
jogada(20, resposta)
