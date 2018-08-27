function  palindrome  (s)
  local  len = string.len(s)
  if  len  ==  0  then  
    return  true
  else
    local first = string.sub(s, 1, 1)
    local last = string.sub(s, len)
    if first == last then
      return palindrome(string.sub(s,2, len-1))  
      
    else
      return false
    end
  end
end
local  st  =  io.read ("*l")
if  palindrome  ( st )  then 
  print  (" palindrome ")
else  
  print  (" not a palindrome ")
end
