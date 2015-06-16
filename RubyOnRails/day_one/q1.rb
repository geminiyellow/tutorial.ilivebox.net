types = {-1 => "グー", 0 => "チョキ", 1 => "パー"}
10.times do 
  puts types[rand(-1..1)]
end