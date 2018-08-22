pot = function(x,k)
  if k == 0 then
    return 1
  else 
    return x * pot(x,k-1)
  end
end

print("Informe a base e o expoente: ")
base, expoente = io.read("*n","*n")
print(pot(base,expoente))