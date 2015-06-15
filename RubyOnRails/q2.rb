types = {-1 => "グー", 0 => "チョキ", 1 => "パー"}
players = {0 => "Aさん", 1 => "Bさん"}
results = {1 => "の勝", 0 => "引き分け"}

10.times do
  player_1 = rand(-1..1)
  player_2 = rand(-1..1)  
  result = player_1 - ((player_2 + 3) % 3)
  winner = result == 0 ? nil : (result == -1 ? 0 : 1)
 
  result = winner.nil? ? results[0] : players[winner] + results[1]
  
  puts "Aさん： #{types[player_1]}"
  puts "Bさん： #{types[player_2]}"
  puts " 勝負： #{result}" 
end