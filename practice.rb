
# def police_trouble(a,b)
#   if a && b or !a && !b
#     puts "true"
#   else
#     puts "false"
#   end
# end

# suspect_a = false
# suspect_b = false
# police_trouble(suspect_a,suspect_b)



###
# # 任意の文字に対してn番目の文字を消し、
# # その消した文字を出力するメソッドを作りましょう。

# def missing_char(string, num)
#   string.slice!(num)
#   puts string
# end
# missing_char('kitten', 2)




###
# # 20時から翌朝7時までにオウムに喋られると問題があるのでその場合は「NG」、
# # それ以外は「OK」と出力するメソッドを作成します。
# # オウムが喋る時をture、喋らない時をfalseと入力することにし、時刻も同時に入力します。
# puts "オウムが喋る時をture、喋らない時をfalseと入力してください"
# input = gets.chomp
# puts "時刻を入力してください(ex:1~24)"
# input_time = gets.to_i

# def parrot_trouble(talking, hour)
#   if talking == false
#     puts "OK"
#   else
#     if 20 <= hour || hour < 7
#       puts "NG"
#     else
#       puts "OK"
#     end  
#   end
# end

# parrot_trouble(input, input_time)





####
# # あなたは本を読んでいたところ、残り何ページか知りたくなりました。
# # 本の総ページ数 m と読み終えたページ n が入力されるので、残りのページ数を表示してください。

# input_line = gets.split(" ")
# m = input_line[0].to_i
# n = input_line[1].to_i

# result = m - n
# puts result




###
# 偶数と奇数、どちらが好きですが？
# あなたは会社を代表して 2 つの数字を選ばなくてはなりませんが、偶数好きと奇数好きの溝が深まらないよう、それぞれを 1 つずつ選ばなくてはなりません。
# 候補としてあげられた 2 つの数字が入力されるので、偶数と奇数が両方入っているか確認してください。

# input_line = gets.split(" ")
# m = input_line[0].to_i
# n = input_line[1].to_i

# if m.odd? && n.even? || n.odd? && m.even?
#   puts "YES"
# else
#   puts "NO"
# end

####
# # ある正の整数nが入力されます。
# # 正の整数1から9に整数nをそれぞれを掛けた数を半角スペース区切りで出力して下さい。
# # 例えばn=2の場合
# # 2 4 6 8 10 12 14 16 18
# # となります

# input_line = gets.to_i
# r = []
# (1..9).each do |i|
#   r << i * input_line
# end
# puts r.join(" ")




####
# # ある正の整数aとbがスペース区切りで入力されます。
# # aとbを比較し大きい方の値を出力して下さい。aとbが同じ場合は「eq」と出力して下さい。
# input_line = gets.split(" ")
# a = input_line[0].to_i
# b = input_line[1].to_i
# if a == b
#   puts "eq"
# elsif a > b
#   puts a
# else
#   puts b
# end



###
# 以下のような数列を出力するプログラムを作りましょう。
# 5 8 11 14 17 20 23 26 29 32
# 最初の数字が5で、3ずつ増加していく事がわかります。
# 一般的にこれを初項5、公差3の等差数列といいます。
# このような数列を出力するプログラムを作りましょう。
# 初項 m が与えられ、公差 n が与えられるので 10番目までの数字をスペース区切りで出力するプログラムを作成してください。

# input_line = gets.split(" ")
# n = input_line[1].to_i
# m = input_line[0].to_i - n
# r = []
# 10.times do |i|
# r << ( m += n)
# end
# puts r.join(" ")


###
# n = gets.to_i
# order = []
# i1 = 0
# i2 = 0
# n.times do |i|
#   input_order = gets.chomp
#   order << input_order
# end

# order.each do |x|
#   if x.match(/SET/)
#     x = x.split(" ")
#     if x[1].to_i == 1
#       i1 = x[2].to_i
#     else 
#       i2 = x[2].to_i
#     end
#   elsif x.match(/ADD/)
#     x = x.split(" ")
#     i2 = i1 + x[1].to_i
#   else
#     x = x.split(" ")
#     i2 = i1 - x[1].to_i
#   end
# end

# puts "#{i1} #{i2}"




####
# 今日は大雪、子どもたちはかまくらをつくろうとはしゃいでいます。どれだけの体積の雪が必要かを計算してあげましょう。
# かまくらは 1 辺が r1 (m) の立方体から r2 (m) の立方体分をくり抜く形でつくります (以下の図参照)。このときかまくらの体積 (m^3)は
# r1^3 - r2^3
# で求められます。
# 例)
# r1 = 5, r2 = 2
# → かまくらの体積 = 5^3 - 2^3 = 125 - 8 = 117 m^3

# input_line = gets.split()
# r1 = input_line[0].to_i
# r2 = input_line[1].to_i
# total = r1 ** 3 - r2 ** 3
# puts total



###
# 4 枚のカードを横に並べます。
# 左から 2 枚のカード、右から 2 枚のカードをそれぞれ 2 ケタの整数とみなし、和を計算します。
# あらゆる並べ方を試し、和の最大値（最大スコア）を求めます。
# カード 4 枚に書かれた数が与えられるので、最大スコアを出力してください。
# 入力例 1 の 2, 9, 3, 8 の 4 枚を使う場合、以下の 12 通りの和の最大値 175 が最大スコアとなります。
# カードの 4 枚の並べ方は 4! = 24 通り存在しますが、足し算は順序に依存しないため、12 通りのみ考慮すればよいことに注意してください。
# たとえば、9, 2, 3, 8 の順で並べた場合のスコアは 92 + 38 = 130 となります。

# input_line = gets.split()
# r1 = input_line.max(2)
# r2 = input_line.min(2)
# total1 = [r1[0] + r2[0]].join.to_i
# total2 = [r1[1] + r2[1]].join.to_i
# puts total1 + total2




###
# input_line = gets.chomp

# input_line.gsub!(/A/, '4')
# input_line.gsub!(/E/, '3')
# input_line.gsub!(/G/, '6')
# input_line.gsub!(/I/, '1')
# input_line.gsub!(/O/, '0')
# input_line.gsub!(/S/, '5')
# input_line.gsub!(/Z/, '2')

# puts input_line



# ###
# input_line = gets.split()
# student = input_line[0].to_i
# pscore = input_line[1].to_i
# score = []
# absence = []
# ok = []
# student.times do |i|
#   input = gets.split()
#   score << input[0]
#   absence << input[1]
# end
# absence.each_with_index do |e, i|
#   result = score[i].to_i - e.to_i * 5
#   if result >= pscore || pscore == 0
#     ok << i + 1
#   end
# end

# puts ok


###
# q = gets.to_i
# n = []
# q.times do
#   n << gets.to_i
# end
# n.each do |i|
#   sum = 0
#   i.times do |e|
#     if i % (e + 1) == 0
#       sum += (e + 1)
#     end
#   end
#   sum = sum - i
#   if i == sum
#     puts "perfect"
#   elsif i - sum == 1
#     puts "nearly"
#   else
#     puts "neither"
#   end
# end


###

# n = gets.to_i
# g = gets.chomp
# s_n = []
# result = []
# n.times do
#   input_line = gets.chomp
#   s_n << input_line
# end

# s_n.each do |i|
#   if i.match(/#{g}/)
#     result << i
#   end
# end

# if result.empty?
#   puts "None"
# else
#   puts result
# end


###
# input_line = gets.split()
# n = input_line[0].to_i
# m = input_line[1].to_i
# k_n = []
# tow = []
# n.times do
#   input = gets.to_i
#   k_n << input
# end
# while m > 0 do
#   tow << m % 2
#   m = m.div(2)
# end
# k_n.each do |i|
#   puts tow[i - 1]
# end



###
# 簡易ポーカー
# input = gets.to_i
# nums = []
# input.times do
#   n = gets.split()
#   nums << n
# end

# nums.each do |i|
#   i.each do |e|
#     e = e.to_s.split("")
#     ee = e.group_by(&:itself).map{|key,value|[key,value.count]}.to_h
#     num = ee.values.count(2)
#     res = ee.values.max
#     if num == 2
#       puts "Two Pair"
#     elsif num == 1
#       puts "One Pair"
#     elsif res == 4
#       puts "Four Card"
#     elsif res == 3
#       puts "Three Card"
#     else
#       puts "No Pair"
#     end
#   end
# end



###
# input = gets.split()
# a = input[0]
# op = input[1]
# b = input[2]
# c = input[4]
# if op == "+"
#   if c == "x"
#     puts a.to_i + b.to_i
#   elsif b == "x"
#     puts c.to_i - a.to_i
#   else
#     puts c.to_i - b.to_i
#   end
# else
#   if c == "x"
#     puts a.to_i - b.to_i
#   elsif b == "x"
#     puts a.to_i - c.to_i
#   else
#     puts b.to_i + c.to_i
#   end
# end



###
# n = gets.to_i
# f_n = []
# n.times do
#   input_line = gets.to_i
#   f_n << input_line
# end
# result = (1 - f_n[0]).abs
# f_n.each_with_index do |i, index|
#   result += (i.to_i - f_n[index+1].to_i).abs
#   break if index == n-2
# end
# puts result



###
# # 受験結果
# n = gets.to_i
# ary = []
# judg = 0
# n.times do
#   input_line = gets.split()
#   ary << input_line
# end
# ary.each do |i|
#   t_i = i[0]
#   e = i[1].to_i
#   m = i[2].to_i
#   s = i[3].to_i
#   j = i[4].to_i
#   g = i[5].to_i
#   if t_i == "s"
#     judg += 1  if  m + s >= 160 && e+m+s+j+g >= 350
#   else
#     judg += 1  if  j + g >= 160 && e+m+s+j+g >= 350
#   end
# end
# puts judg


###
# input = gets.split()
# a = input[0].split("").reverse
# b = input[1].split("").reverse

# fi = (a[0].to_i + b[0].to_i).digits[0] if a.include?(a[0]) || b.include?(b[0])
# se = (a[1].to_i + b[1].to_i).digits[0] if a.include?(a[1]) || b.include?(b[1])
# th = (a[2].to_i + b[2].to_i).digits[0] if a.include?(a[2]) || b.include?(b[2])

# puts "#{th}"+"#{se}"+"#{fi}"


###
# input = gets.split()
# n = input[0].to_i
# t = input[1].split("")
# s_1 = input[2].split("")
# num = 0

# if s_1 == t
#   puts num
# else
#   n.times do
#     s_1 = s_1.rotate
#     num += 1
#     break if s_1 == t
#   end
#   puts num
# end


###お食事
# input = gets.split()
# m = input[0].to_i
# n = input[1].to_i
# c_m = []
# a = []
# m.times do
#   input1 = gets.to_i
#   c_m << input1
# end
# n.times do
#   input2 = gets.split()
#   a << input2
# end
# result = []
# a.each do |x|
#   sum = 0
#   x.each_with_index do |e, i|
#     sum += (e.to_i * c_m[i] / 100).floor
#   end
#   result << sum
# end
# puts result


###ハイアンドロー・カードゲーム
# index = gets.split()
# a = index[0].to_i
# b = index[1].to_i
# n = gets.to_i
# cards = []
# n.times do
#   num = gets.chomp()
#   cards << num
# end
# cards.each do |i|
#   i = i.split(" ")
#   if a > i[0].to_i
#     puts "High"
#   elsif a == i[0].to_i
#     if i[1].to_i > b
#       puts "High"
#     else
#       puts "Low"
#     end
#   else
#     puts "Low"
#   end
# end


###
# input = gets.split()
# price = input[0].to_f
# p1 = input[1].to_f
# sum = price
# while price > 0 do
#   discount = price * p1 / 100
#   price = (price - discount).floor
#   sum += price
# end
# puts sum.to_i



###単語テストの採点
# n = gets.to_i
# ary = []
# result = 0
# n.times do
#   input = gets.split()
#   ary << input
# end

# ary.each do |e|

#   re = 0
#   e[0].split("").zip(e[1].split("")) do |i,k|
#     re += 1 if i != k
#   end
#   if e[0].length != e[1].length
#     result += 0
#   elsif re == 1
#     result += 1
#   elsif e[0] == e[1]
#     result += 2
#   else
#     result += 0
#   end
# end
# puts result




###
# input = gets.split()
# day = input[0].split("/")
# time = input[1].split(":")
# result = []
# if time[0].to_i > 23
#   result = time[0].to_i.divmod(24)
#   day[1] = (result[0] + day[1].to_i).to_s
#   day =day.join("/")
#   time[0] = sprintf("%0.2d", (result[1] + 0)).to_s
#   time =time.join(":")
#   puts day + " " + time
# else
#   puts input.join(" ")
# end



###