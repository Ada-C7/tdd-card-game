

class Card

  attr_reader :value, :suit

  def initialize suit, value

    if [:hearts, :diamonds, :clubs, :spades].include?(suit)
      @suit = suit
    else
      raise ArgumentError.new "The suit must be one of :hearts, :diamonds, :clubs, or :spades"
    end
    @value = value
  end
end
