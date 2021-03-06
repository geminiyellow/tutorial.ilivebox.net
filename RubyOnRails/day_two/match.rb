require './player'

class Match
  def initialize
    @player_a = Player.new('Aさん')
    @player_b = Player.new('Bさん')
  end

  def start(count)
    count = count < 1 ? 1 : count
    count.times do |round|
      puts "#{round + 1}回戦"
      puts "#{@player_a.name}: #{@player_a.poi} vs. #{@player_b.name}: #{@player_b.poi}"
      puts "勝負 : #{@player_a.name}の#{@player_a.vs(@player_b)}"
    end
  end
end

puts '今度何回試しますか？'
Match.new.start(gets.to_i)
