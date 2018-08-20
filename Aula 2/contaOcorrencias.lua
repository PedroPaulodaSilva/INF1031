print("Informe uma linha de texto e um caracter por favor")
linha, carac = io.read("*l", "*l")
linha, ocorreu = string.gsub(linha, carac, carac)
print (string.format("Foram encontradas %d ocorrencias no texto", ocorreu))