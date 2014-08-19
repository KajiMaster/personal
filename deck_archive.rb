class Card
	RANKS = %w(A K Q J 10 9 8 7 6 5 4 3 2)
	SUITS= %w(heart spade club diamond)
	
	attr_accessor :rank, :suit

	def initialize(id)
		self.rank = RANKS[id % 13]
		self.suit = SUITS[id % 4]
	end
end

class Deck
	attr_accessor :cards
		def initialize
		self.cards = (0..51).to_a.collect { |id| Card.new(id) }
			p cards
	end

end

d = Deck.new

d.cards.each do |card|
  puts "#{card.rank} #{card.suit}"
end

## d.cards.each do |card| puts "#{card.rank} #{card.suit}" end

####### 
####### compare = Array.new
####### @compare = compare
####### 
####### deck = Array.new
####### @deck = deck
####### 
####### suit.map { |suit| rank.map { |rank| @deck.push(rank + " of " + suit) } }
####### 
####### picked = Array.new
####### @picked = picked
####### 
####### 
####### deck = deck.shuffle
####### puts deck[0..6]
####### 
####### #sets the picked cards all to not used; fresh deck
####### 52.times { @picked.push (false)}
####### 
####### puts @picked[0..1]
####### 
####### #new_deck.map { |x| current_deck.push (x) }
####### 
####### #current_deck 
####### 
####### def card_picker()
####### 	#card is picked
####### 	pick = rand(52)
####### 
####### 	#if the card hasn't been picked set it to picked and return card value
####### 	unless @picked[pick]
####### 		@picked[pick] = true
####### 		puts @deck[pick]
####### 	else
####### 		card_picker
####### 	end
####### end
####### 
####### def duplicate_check(n)
####### 	
####### 		 if @compare.include?(n) 
####### 		 	then puts "DUPLICATE CHECK FAILED" 
####### 		 else 
####### 		 	@compare.push(n)
####### 		 end
####### 		end
####### 
####### puts @compare