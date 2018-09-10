function  primo  (n)
  for  i  =  2, n -1  do
    if  (n  %  i)  ==  0  then
      return  false
    end
  end
  return  true
end
function imprimePrimos(x)
  for i = 2, x-1 do
    if primo(i) == true then
      print(i)
    end
  end
end

function imprimePrimeirosPrimos(n)
  local cont = 0
  local i = 2
  while cont < n do
    if primo(i) == true then
      print(i)
      cont = cont + 1 
    end
    i = i + 1  
  end
end


print("vamos imprimir todos os primos menores que X. Entre com X: ")
x = io.read("*n")
imprimePrimos(x)
print("Vamos imprimir os n primeiros primos. Entre com N: ")
n = io.read("*n")
imprimePrimeirosPrimos(n)
  
