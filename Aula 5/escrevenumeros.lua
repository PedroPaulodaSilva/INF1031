function escrevenumeros(n)
  if n == 1 then
    print (1)
  else
    print (n)
    escrevenumeros(n-1)
  end
end
print("Insira um número n")
n = io.read("*n")
escrevenumeros(n)
