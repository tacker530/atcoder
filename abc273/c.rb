# C - (K+1)-th Largest Number
N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
B = A.sort.uniq

C = []

A.each_with_index do |a,i|
  C[i] = B.count{|x| x > a} 
end


N.times do |n|
  puts C.count(n)
end

