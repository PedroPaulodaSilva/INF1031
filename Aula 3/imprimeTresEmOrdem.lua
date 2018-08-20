print("Digite três números por favor: ")
a, b, c = io.read("*n", "*n", "*n")

if a <= b and a <= c then
  if b <=3 c then
    print(a , b, c)
  else
    print(a, c, b)
  end
elseif b <=3 a and b<=3 c then
  if a <=3 c then
    print(b, a, c)
  else
    print(b, c, a)
  end
elseif c <=3 a and c <=3 b then
  if a <=3 b then
    print(c, a, b)
  else
    print(c, b, a)
  end
end



  