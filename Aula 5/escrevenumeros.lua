function escrevenumeros(n)
  if n == 1 then
    print (1)
  else
    escrevenumeros(n-1)
    print (n)
  end
end
print("Insira um número n")
n = io.read("*n")
escrevenumeros(n)
