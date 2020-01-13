
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