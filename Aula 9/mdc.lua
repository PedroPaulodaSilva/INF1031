function mdc1(x,y)
  r = x % y
  if r == 0 then
    return y
  end
  
  x = y
  y = r
  r = x % y
  
  while r ~= 0 do
    x = y
    y = r
    r = x % y
  end
  
  return y
end

function mdc2(x,y)
  r = x % y
  if r == 0 then
    return y
  end
  return mdc2(y,r)
end

--print(mdc1(1800,2020))
--print(mdc2(1800,2020))

print("Forneça dois números para descobrir o MDC: ")
a, b = io.read("*n","*n")
print("Olha que mdc iterativo bonito:")
print(mdc1(a,b))
print("Agora o mdc recursivo igualmente bonito:")
print(mdc2(a,b))
