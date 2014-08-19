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

########################################################################
##### future player.rb; taken from rubyquest rb
# James Browning# Joey DeLorenzo# Player.rb
# This class stores the player object, and keeps track of his stats.

class Player
      
   # Create player at level 1.
   def initialize(name, deck_cards, num_delt)
      @name = name
      @level = 1
      @hp = 20
      @hand = hand
      @deck_cards = deck_cards
      @num_delt = num_delt
   end
      
   # Return Player's name
   def getName()
      return @name
   end
   
   def getLevel()
      return @level
   end
   # Subtract the damage taken from the Player's total HP
   def takeHit(x)
      @hp = @hp - x
      return @hp
   end
      # Returns the Player's health.
   def getHealth()
      return @hp
   end  
   def hand(*num_delt)
      @deck_cards.draw(*num_delt)
   end     
   def getHp()
      return @hp
   end
end
########################################################################
#### 			END PLAYER.RB CODE ADDED AND MODIFEID FROM RUBYQUEST #####
#########################################################################
d1 = Deck.new.shuffle!
puts card = d1.draw

player1 = Player.new("Blake", d1, 7)
player2 = Player.new("Tiffany", d1, 7)

hand01 = player1.hand(7)

puts hand01.sort.join(", ")