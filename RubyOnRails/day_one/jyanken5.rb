TYPES = {-1=>'グー', 0=>'チョキ', 1=>'パー'}

def init_members(n = 5)
  (0..n-1).map { |x| {'name'=>x, 'value'=>rand(-1..1)}}
end

def win(one, two)
  (one - ((two + 3) % 3) == -1 ? one : two)
end  

def level_up(members)
  group = members.group_by {|member| member['value']}
  group.keys.length == 2 ? group[win(group.keys[0], group.keys[1])] : members
end  

def once_again(members)
  winner = members.to_a.length <= 1 ? members : members.each {|member| member['value'] = rand(-1..1)}
  output_round_result(winner)
  winner
end  

def output_round_result(members)
  result = ""
  for member in members
    result = result + "#{member['name']}.#{TYPES[member['value']]} "
  end
  puts result
end

def main()
  puts '今回参加者計何人ですか'
  members = init_members(gets.to_i)
  output_round_result(members)
  while members.length > 1
    members = once_again(level_up(members))
  end
  puts "勝： #{members.first['name']}さん - #{TYPES[members.first['value']]}"  
end

main()