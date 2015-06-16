require './Mora'

class Player
  attr_reader :hand
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def poi
    @hand = Mora.poi
    Mora.hand(@hand)
  end

  def vs(rival)
     Mora.result(Mora.you_are(@hand, rival.hand))
  end
end
