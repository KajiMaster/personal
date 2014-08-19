class Card
SUITS = %w(Spades Hearts Clubs Diamonds)
RANKS = %W(A K Q J 10 9 8 7 6 5 4 3 2)

# class variables
@@suit_value = Hash[ SUITS.each_with_index.to_a]
@@rank_value = Hash[ RANKS.each_with_index.to_a]

attr_reader :suit, :rank

	def initialize(rank,suit)
		@rank = rank
		@suit = suit

	#	self.suit = SUITS[id % 4]
	#	self.rank = RANKS[id % 13]
	
	end

	def to_s
		"#{@rank} #{@suit}"
	end

	def <=>(card)
		(@@suit_value[@suit] <=> @@suit_value[card.suit]).nonzero? or \
         @@rank_value[@rank] <=> @@rank_value[card.rank]
    end

end

class Deck
#attr_accessor :cards

	
	def initialize
		#@cards = (0..51).to_a.shuffle.collect { |id| Card.new(id) }
		@deck = Array.new
		for suit in Card::SUITS
			for rank in Card::RANKS
				@deck << Card.new(rank,suit)
			end
		end
	end

	def to_s
		"[#{@cards.join(", ")}]"
	end

	def shuffle!
		@deck.shuffle!
		self
	end

	def draw(*num)
		@deck.pop(*num)
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

d1 = Deck.new.shuffle!
puts card = d1.draw
hand01 = d1.draw(7)
hand02 = d1.draw(7)
hand03 = d1.draw(7)
hand04 = d1.draw(7)
hand05 = d1.draw(7)
hand06 = d1.draw(7)
hand07 = d1.draw(7)
hand08 = d1.draw(7)


puts hand01.sort.join(", ")
puts hand02.sort.join(", ")
puts hand03.sort.join(", ")
puts hand04.sort.join(", ")
puts hand05.sort.join(", ")
puts hand06.sort.join(", ")
puts hand07.sort.join(", ")
puts hand08.sort.join(", ")

# d1.cards.each { |card| in_play.push ("#{card.rank} of #{card.suit}") }
#d1.cards.each_with_index { |card, index| puts card }
#player1 = Player.new


#hand = cards.draw(7)
#puts hand.join(", ")

## Displays each card one by one
#d1.cards.select{ |num| puts "#{num.rank} of #{card.suit}" }



#puts "#{cards.rank} of #{cards.suit}"
