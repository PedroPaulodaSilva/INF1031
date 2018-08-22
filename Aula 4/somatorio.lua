somatorio = function(n)
  if n == 1 then
    return 1/2
  else return (1/2^n)+ somatorio(n-1)
  end
end
print("Informe n: ")
numero = io.read("*n")
print(somatorio(numero))
    