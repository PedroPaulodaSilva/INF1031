print("Por favor digite dois números: ")
a, b = io.read("*n","*n")
if a > b then
  io.write(a, " é o maior número")
elseif b > a then
  io.write(b, " é o maior número")
else
  print("Os dois números são iguais")
end