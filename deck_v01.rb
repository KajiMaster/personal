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


########################
#####           ########
##### OUTPUT	########
##### 			########
########################


####  #<Card:0x00000000b0db00>
####  #<Card:0x00000000b0dad8>
####  #<Card:0x00000000b0dab0>
####  #<Card:0x00000000b0da88>
####  #<Card:0x00000000b0da60>
####  #<Card:0x00000000b0da38>
####  #<Card:0x00000000b0da10>
####  #<Card:0x00000000b0d9e8>
####  #<Card:0x00000000b0d9c0>
####  #<Card:0x00000000b0d998>
####  #<Card:0x00000000b0d970>
####  #<Card:0x00000000b0d948>
####  #<Card:0x00000000b0d920>
####  #<Card:0x00000000b0d8f8>
####  #<Card:0x00000000b0d8d0>
####  #<Card:0x00000000b0d8a8>
####  #<Card:0x00000000b0d880>
####  #<Card:0x00000000b0d858>
####  #<Card:0x00000000b0d830>
####  #<Card:0x00000000b0d808>
####  #<Card:0x00000000b0d7e0>
####  #<Card:0x00000000b0d7b8>
####  #<Card:0x00000000b0d790>
####  #<Card:0x00000000b0d768>
####  #<Card:0x00000000b0d740>
####  #<Card:0x00000000b0d718>
####  #<Card:0x00000000b0d6f0>
####  #<Card:0x00000000b0d6c8>
####  #<Card:0x00000000b0d6a0>
####  #<Card:0x00000000b0d678>
####  #<Card:0x00000000b0d650>
####  #<Card:0x00000000b0d628>
####  #<Card:0x00000000b0d600>
####  #<Card:0x00000000b0d5d8>
####  #<Card:0x00000000b0d5b0>
####  #<Card:0x00000000b0d588>
####  #<Card:0x00000000b0d560>
####  #<Card:0x00000000b0d538>
####  #<Card:0x00000000b0d510>
####  #<Card:0x00000000b0d4e8>
####  #<Card:0x00000000b0d4c0>
####  #<Card:0x00000000b0d498>
####  #<Card:0x00000000b0d470>
####  #<Card:0x00000000b0d448>
####  #<Card:0x00000000b0d420>
####  #<Card:0x00000000b0d3f8>
####  #<Card:0x00000000b0d3d0>
####  #<Card:0x00000000b0d3a8>
####  #<Card:0x00000000b0d380>
####  #<Card:0x00000000b0d358>
####  #<Card:0x00000000b0d330>
####  #<Card:0x00000000b0d308>