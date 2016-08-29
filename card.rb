class Card

  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck

  def initialize
    @cards = []
    @rank = ['Ace',2,3,4,5,6,7,8,9,10,'Jack','Queen','King']
    @suit = [:spades, :diamonds, :clubs, :hearts]
    @rank.each do |r|
      @suit.each do |s|
        @cards << Card.new(r,s)
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end

  def deal
    @cards.shift
  end

end

deck = Deck.new
deck.shuffle
deck.deal 
deck.output

