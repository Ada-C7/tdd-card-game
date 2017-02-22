
require_relative 'spec_helper'
require_relative '../card'

describe Card do
  before do
    @card = Card.new(:hearts, 11)
  end

  describe "Checking Card value" do
    it "has value of 11" do
      @card.value.must_equal 11
    end
  end

  describe "Checking Card suit" do
    it "has value :hearts" do
      @card.suit.must_equal :hearts
    end

    it "Errors out if given an invalid suit" do
      proc { Card.new( :pokemon, 11 ) }.must_raise ArgumentError
    end

  end

  it "to_s works properly" do
    @card.to_s.must_equal "Jack of Hearts"

  end

end
