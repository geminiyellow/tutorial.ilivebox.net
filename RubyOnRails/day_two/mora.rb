module Mora
  TYPES = %w(グー, チョキ, パー)
  RESULTS = {0 => '引き分け', 1 => '勝ち', -1 => '負け'}

  def self.poi
    rand(3)
  end

  def self.you_are(one, two)
    return 0 if one == two
    (one - ((two + 3) % 3) == -1 ? 1 : -1)
  end

  def self.hand(poi)
    TYPES[poi]
  end

  def self.result(index)
    RESULTS[index]
  end
end
