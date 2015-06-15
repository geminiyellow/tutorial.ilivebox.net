alternative = {-1 => ['-1', 'g'], 0 => ['0', 'c'], 1 => ['1', 'p']}
types = {-1 => "グー", 0 => "チョキ", 1 => "パー"}
players = {0 => "Aさん", 1 => "貴方"}
results = {1 => "の勝", 0 => "引き分け"}

10.times do
  player_1 = rand(-1..1)
  player_2 = nil
  
  while player_2.nil?
    puts '-1, 0, 1 を入力してください'
    player_2 = gets.to_s.chomp
    player_2 = alternative.select {|key, values| values.include?(player_2) }
    player_2 = player_2.keys.length > 0 ? player_2.keys.first : nil
  end
    
  result = player_1 - ((player_2 + 3) % 3)
  winner = result == 0 ? nil : (result == -1 ? 0 : 1)
 
  result = winner.nil? ? results[0] : players[winner] + results[1]
  
  puts "Aさん： #{types[player_1]}"
  puts "貴方 ： #{types[player_2]}"
  puts " 勝負： #{result}" 
end