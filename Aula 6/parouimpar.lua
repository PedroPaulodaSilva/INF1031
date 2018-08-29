print (" Par  (0)  ou  ímpar  (1)? ")
e  =  io.read("*n")       --  escolha  do  usuário
print (" Entre  com  valor :  ")
u  =  io.read("*n")       --  número  do  usuário
math.randomseed(os.time())
c  =  math.random(0,5)   --  número  do  computador
print(" Número  do  computador :")
print(c)
if  (u+c) % 2 == e then
  print (" usuário  ganhou !")
else
  print (" computador  ganhou !")
end
