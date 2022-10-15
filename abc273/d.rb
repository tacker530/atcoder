# D - LRUD Instructions
H,W,R,C = gets.chomp.split.map(&:to_i)
N = gets.chomp.to_i
rc = Array.new(N){|row|
  row = gets.chomp.split.map(&:to_i)
}
pp rc

Q = gets.chomp.to_i
dl = Array.new(N){|row|
  w = gets.chomp.split
  row = [ w[0],w[1].to_i ]
}

pp dl


# 方向、ステップ数、現在位置、壁位置
def move(dest,step,place,rc)
  if    dest == "L" then   w = [0,-1]
  elsif dest == "R" then   w = [0,1]
  elsif dest == "U" then   w = [1,0]
  elsif dest == "D" then   w = [-1,0]
  end

  work = []
  (1..step).each do |i|
    work = [ place[0] + w[0] , place[1] + w[1] ]
    if !rc.include?(work) then # 壁が無ければ
      place = work
    end
  end
  place
end

dl.each do |x|
  puts move(x[0][0],x[0][1],[R,C],rc)
end