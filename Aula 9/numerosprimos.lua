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
  for i = 2, n do
    if primo(i) == true then
      

print("vamos imprimir todos os primos menores que X. Entre com X: ")
x = io.read("*n")
imprimePrimos(x)

  
