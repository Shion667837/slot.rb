puts "---------------------"
puts "残りコイン数 100"
puts "ポイント 0"
coin = 100
point = 0

loop do
  select = [10, 30, 50, "やめとく"]
  num1 = rand(1..9)
  num2 = rand(6..7)
  num3 = rand(1..9)
  num4 = rand(1..9)
  num5 = rand(6..7)
  num6 = rand(1..9)
  num7 = rand(1..9)
  num8 = rand(6..7)
  num9 = rand(1..9)
  puts "何コイン入れますか？"
  puts "0(10コイン) 1(30コイン) 2(50コイン) 3(やめとく)"
  puts "---------------------"
  bet_number = gets.to_i
  if bet_number == 3
    puts "終了します"
    break
  elsif coin < select[bet_number]
    puts "コインが足りません"
    break
  end
  puts "エンターを3回押しましょう！"
  puts = gets
  puts "----------------------"
  puts "|#{num1}| | |"
  puts "|#{num2}| | |"
  puts "|#{num3}| | |"
  puts = gets
  puts "----------------------"
  puts "|#{num1}|#{num4}| |"
  puts "|#{num2}|#{num5}| |"
  puts "|#{num3}|#{num6}| |"
  puts = gets
  puts "----------------------"
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"
  puts "----------------------"
  if (num2 == 7) && (num5 == 7) && (num8 == 7)
    puts "真ん中に7が揃いました！"
    puts "500ポイント獲得！"
    puts "100コイン獲得！"
    puts "--------------------"
    coin = coin + 100 - select[bet_number]
    point = point + 500
    puts "残りのコイン数 #{coin}"
    puts "ポイント #{point}"
  elsif (num2 == num5) && (num5 == num8)
    puts "真ん中に#{num2}が揃いました！"
    puts "200ポイント獲得！"
    puts "50コイン獲得！"
    puts "--------------------"
    coin = coin + 100 - select[bet_number]
    point = point + 500
    puts "残りのコイン数 #{coin}"
    puts "ポイント #{point}"
  elsif (num1 == num4) && (num4 == num7)
    puts "上に#{num2}が揃いました！"
    puts "200ポイント獲得！"
    puts "50コイン獲得！"
    puts "--------------------"
    coin = coin + 50 - select[bet_number]
    point = point + 200
    puts "残りのコイン数 #{coin}"
    puts "ポイント #{point}"
  elsif (num3 == num6) && (num6 == num9)
    puts "下に#{num3}が揃いました！"
    puts "200ポイント獲得！"
    puts "50コイン獲得！"
    puts "--------------------"
    coin = coin + 50 - select[bet_number]
    point = point + 200
    puts "残りのコイン数 #{coin}"
    puts "ポイント #{point}"
  else
    puts "--------------------"
    coin = coin - select[bet_number]
    puts "残りのコイン数 #{coin}"
    puts "ポイント #{point}"
  end
end