function mdc(x,y)
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
