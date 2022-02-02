class Player

  def initialize(name)
    @name = name
    @life = 3
  end

  attr_accessor :life
  attr_reader :name
end