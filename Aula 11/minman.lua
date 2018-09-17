function minmax(tabela)
  local min, max = tabela[1], tabela[1]
  for i = 2, #tabela do
    if tabela[i] < min then
      min = tabela[i]
    end
    if tabela[i] > max then
      max = tabela[i]
    end
  end
  return min, max
end

local t = {2, 1, 5, 1000, 8, 30, 47}
print("Minimo e máximo: ", minmax(t))
