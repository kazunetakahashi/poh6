n = gets.to_i
t = gets.chomp.split(" ").map{|i| i.to_i}
m = gets.to_i
m.times{
  d = gets.to_i
  now = 0
  visited = Array.new(n){false}
  visited[0] = true
  bl = true
  t[0] = d
  while now != n-1
    now += t[now]
    # puts "now " + now.to_s
    if now < 0 || now >= n || visited[now]
      bl = false
      break
    else
      visited[now] = true
    end
  end
  puts (bl ? "Yes" : "No")
}
