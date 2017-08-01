module MathGame
  class Player
    attr_accessor :name
    attr_accessor :life

    def initialize(name, life)
      @name = name
      @life = life
    end
  end
end