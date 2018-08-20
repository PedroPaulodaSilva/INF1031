print("Digite três números por favor: ")
a, b, c = io.read("*n", "*n", "*n")
maior = a
if a > b then
  maior = a
  if c > a then
  maior = c
end
end
if b > a then
  maior = b
  if c > b then
    maior = c
  end
end
if c > a then
  maior = c
  if b > c then
    maior = b
  end
end

print("O maior dos números é: ", maior, "\n")