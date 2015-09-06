# coding: utf-8
n = gets.to_i
x = 0.0
y = 0.0
n.times{
  s = gets.chomp.split(" ").map{|i| i.to_f}
  case s[0].to_i
  when 1
    x = x + s[1]
  when 2
    y = y + s[1]
  when 3
    x, y = x - s[1]*x/(x+y), y - s[1]*y/(x+y) # ここがポイント！
    # x = x - s[1]*x/(x+y) と書いた後、
    # y = y - s[1]*y/(x+y) を書くと、間違い。後者では更新後のxが使用されている。
  end
}
puts (100*y/(x+y)).floor
