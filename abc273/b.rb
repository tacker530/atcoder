# B - Broken Rounding

def func(x,k)
  w = x 
  (1..k).to_a.each do |i|  
    #pp (w.to_f/10**k)
    w = (w.to_f/10**i).round * 10**i
  end
  w
end

X,K  = gets.chomp.split.map(&:to_i)

puts func(X,K)