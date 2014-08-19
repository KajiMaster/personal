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
		@cards = (0..51).to_a.shuffle.collect { |id| Card.new(id) }
	end

	def to_s
		"[#{@cards.join(", ")}]"
	end

	def draw(*num)
		@cards.pop(*num)
	end
end

# class Hand
# attr_accessor :hands
# 
# 	def initialize
# 		self.hands = in_play[0..6]
#
# end	
# end

# class Player
# 	attr_accessor :hands
# 
# 	def intialize(n)
# 		self.hands = Array.new
# 		n.times { self.hands << Deck.draw }
# 	end
# end

d1 = Deck.new

hand = 
# d1.cards.each { |card| in_play.push ("#{card.rank} of #{card.suit}") }
d1.cards.each_with_index { |card, index| puts card }
#player1 = Player.new


hand = cards.draw(7)
puts hand.join(", ")

## Displays each card one by one
#d1.cards.select{ |num| puts "#{num.rank} of #{card.suit}" }



#puts "#{cards.rank} of #{cards.suit}"
