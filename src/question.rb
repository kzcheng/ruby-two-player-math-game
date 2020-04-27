class Question
  attr_accessor :a, :b

  def initialize
    self.a = rand(19) + 1
    self.b = rand(19) + 1
  end
end
