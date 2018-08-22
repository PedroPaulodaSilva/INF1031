cilindro = function(r,a)
  return (math.pi * r * r * a),(2 * math.pi * r *(r+a))
end
print("Por favor informe o raio e altura: ")
raio, altura = io.read("*n","*n")
volume, area = cilindro(raio,altura)
print("O volume do cilindro é "..volume.."e a área é "..area)