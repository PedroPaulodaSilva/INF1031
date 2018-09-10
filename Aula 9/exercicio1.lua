function raiz (x, n)
  local r = 1 -- estimativa inicial 
  for i = 1, n do
    r = (r + x/r)/2
  end
  return r 
end
print("entre com o número do qual queremos a raiz quadrada: ")
local num = io.read("*n")
print("entre com o número de iterações: ")
local iter = io.read("*n")
print (raiz(num, iter))
