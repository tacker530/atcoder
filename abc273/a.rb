# A - A Recursive Function

def func(k)
  if k == 0 then
    1
  else
    k * func( k - 1 )
  end
end

N = gets.chomp.to_i
puts func(N)