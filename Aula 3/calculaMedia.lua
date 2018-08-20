print("Por favor informe as notas: ")
n1, n2 = io.read("*n", "*n")
media = (n1 + n2)/2
if media >= 5.0 and n1 >= 3.0 and n2 >= 3.0 then
  print ("Aprovado")
else
  print("Por favor informe a nota da P3: ")
  n3 = io.read("*n")
  mediafinal = (n3 + math.max(n1,n2))/2
  if mediafinal >= 5.0 then
    print("Aprovado")
  else
    print("Reprovado")
  end
end
