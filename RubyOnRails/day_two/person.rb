class Person
  def initialize(name, height, weight)
    @name = name
    @height = height.to_f
    @weight = weight.to_f
  end

  attr_reader :name
  attr_accessor :height
  attr_accessor :weight

  def bmi
    (@weight / ((@height / 100) ** 2)).round(1)
  end

  def judge
    if bmi < 18.5
      'やせ'
    elsif bmi < 25
      '標準'
    elsif bmi < 30
      '肥満'
    else
      '高度肥満'
    end
  end
end
