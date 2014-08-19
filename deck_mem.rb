class Card
SUITS = %w(Spades Hearts Clubs Diamonds)
RANKS = %W(A K Q J 10 9 8 7 6 5 4 3 2)

attr_accessor :suit, :rank

	def initialize(id)
	
		self.suit = SUITS[id % 4]
		self.rank = RANKS[id % 13]
	
	end

end

class Deck
attr_accessor :cards

	def initialize
		self.cards = (0..51).to_a.shuffle.collect { |id| Card.new(id) }
	end

end

d1 = Deck.new

## Displays each card one by one
# d1.cards.each { |card| puts "#{card.rank} of #{card.suit}" }

puts d1.cards[rand(52)]