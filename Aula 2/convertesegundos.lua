print("Informe o número em segundos: ")
seg = io.read("*n")
dias = math.floor(seg / 86400)
horas = math.floor((seg % 86400) / 3600)
minutos = math.floor(((seg % 86400) % 3600)/ 60)
segundos = math.floor(((seg % 86400) % 3600)% 60)
solucao = string.format("Equivale a %d dias, %d horas, %d minutos e %d segundos", dias, horas, minutos, segundos)
print(solucao)