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

########################################################################

##### future player.rb; taken from rubyquest rb

# James Browning
# Joey DeLorenzo
# Player.rb

# This class stores the player object, and keeps track of his stats.

# require "QuestObject"

class Player
      
   # Create player at level 1.
   def initialize(name)
      @name = name
      @level = 1
      @hp = 20
      @mp = 10
      @items = []
   end
   
   # Taken from http://stackoverflow.com/questions/1489183/colorized-ruby-output
   ## def colorize(text, color_code)
   ##    "\e[#{color_code}m#{text}\e[0m"
   ## end
   ## 
   ## def red(text); colorize(text, 31); end	
   ## def green(text); colorize(text, 32); end
   ## def pink(text); colorize(text, 35); end
   ## def yellow(text); colorize(text, 33); end
   ## def magenta(text); colorize(text, 45); end
   ## def cyan(text); colorize(text, 36); end
   
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
   
   ## def prepItem(i)
   ##    puts "%s"  % @items[i].getName()
   ## end
   
   ## def removeItem(i)
   ##    @items.delete_at(i)
   ## end
   
   # Returns the Player's health.
   def getHealth()
      return @hp
   end
   
   # Return a number based on two times the player level +/- 2.
   def attack(q)
      if q == 0
         return @level * 2 + rand(3) - rand(3)
      elsif q == 1
         return 30
      elsif q == 2
         return 10
      elsif q == 9000
         return 9000
      end
   end
   
   ## # Pick up a QuestObject from a Room.
   ## def pickUp(i)
   ##    @items << i	
   ## end
   ## 
   ## def getSizeOfPack()
   ##    return @items.size
   ## end
   ## 
   ## def useObject(i)
   ##    if i.getName() == "Herb" or "Vial"
   ##    elsif i.getName() == "Knife"
   ##    end
   ## end
   ## 
   ##def useItem(battle)
   ##   if @items.size == 0
   ##      puts `clear`
   ##      puts "\nYour inventory is empty, there is nothing to use!"
   ##      puts "\n"
   ##      return 0;
   ##   elsif
   ##      checkItems()
   ##   end
   ##
   ##   system("stty raw -echo")
   ##   @answer = STDIN.getc
   ##   system("stty -raw echo")
   ##
   ##   @answer = @answer.chr.to_i - 1
   ##   
   ##   if @items[@answer].getCUsability() == false and battle == true
   ##      puts `clear`
   ##      puts "\n\nThis isn't combat usable!"
   ##      return 0
   ##
   ##   elsif @items[@answer].getName() == "Herb" or @items[@answer].getName() == "Vial" 
   ##      if @items[@answer].getFAttr() == "Green"
   ##         @hp = @hp + 5
   ##         puts `clear`
   ##         puts red("Your HP has increased by 5!")
   ##      elsif @items[@answer].getFAttr() == "Yellow"
   ##         @hp = @hp + 10
   ##         puts `clear`
   ##         puts red("Your HP has increased by 10!")
   ##      elsif @items[@answer].getFAttr() == "Red"
   ##         @hp = @hp + 15
   ##         puts `clear`
   ##         puts red("Your HP has increased by 15!")
   ##      elsif @items[@answer].getFAttr() == "Max"
   ##         @hp = @hp + 15
   ##         puts `clear`
   ##         puts red("Your HP has increased by 15!")
   ##      elsif @items[@answer].getFAttr() == "Large"
   ##         @hp = @hp + 10
   ##         puts `clear`
   ##         puts red("Your HP has increased by 10!")
   ##      elsif @items[@answer].getFAttr() == "Small"
   ##         @hp = @hp +5
   ##         puts `clear`
   ##         puts red("Your HP has increased by 15!")
   ##      end
   ##      
   ##      if @items[@answer].getSAttr() == "Wilted"
   ##         @hp = @hp - 5
   ##         puts cyan("Wilted Herb deducts five HP from gain!")
   ##      elsif @items[@answer].getSAttr() == "Purple"
   ##         @level = @level + 1
   ##         puts magenta("Plus 1 Attack Boost!")
   ##      elsif @items[@answer].getSAttr() == "Yellow"
   ##         @level = @level + 2
   ##         puts yellow("Plus 2 Attack Boost!")
   ##      end
   ##      @items.delete_at(@answer)
   ##      return 0;
   ##      
   ##   elsif @items[@answer].getName() == "Knife"
   ##      if @items[@answer].getFAttr() == "Sharp"
   ##         if battle
   ##            @items.delete_at(@answer)
   ##            return 1
   ##         else 
   ##            puts `clear`
   ##            puts "You can only use this in battle!"
   ##         end
   ##      else
   ##         if battle            
   ##            @items.delete_at(@answer)
   ##            return 2
   ##         else 
   ##            puts `clear`
   ##            puts "You can only use this in battle!"
   ##         end
   ##      end
   ##      
   ##   elsif @items[@answer].getName() == "Body"
   ##      puts `clear`
   ##      puts green('Body reanimates, the Zombie leaves a gold, shinny object')
   ##      puts green('in the heat of battle. You pick it up and it feels very familar.')
   ##      puts green('It\'s bad guy slaying time')
   ##      puts red("Tuba has been added to your inventory!")
   ##      puts "\n\n\n\n"
   ##      x = QuestObject.new
   ##      x.makeTuba()
   ##      @items[@answer] = x
   ##      if battle
   ##         puts "You attack with the Tuba!"
   ##         return 9000;
   ##      end
   ##      
   ##      
   ##   elsif @items[@answer].getName() == "Tuba"
   ##      if battle
   ##         return 9000
   ##      else 
   ##         puts `clear`
   ##         puts "You play a sweet harmony."
   ##      end
   ##      
   ##   elsif @items[@answer].getName() == "Key"
   ##      puts `clear`
   ##      puts "The key's usefulness is mysterious to all."
   ##   end
   ##end
   ##
      
   
   
   
   
   
   # Output the content of the Player's inventory to the screen.
   ######  def checkItems()
   ######     x = 1
   ######     if @items.size == 0
   ######        puts "\nYour inventory is empty"
   ######        puts "\nYour current HP is: %i" % @hp
   ######        return false
   ######     else
   ######        puts "\nYour inventory contains: "
   ######        for item in @items
   ######           print "\t %i." % x
   ######           item.inspect()
   ######           x = x + 1
   ######        end
   ######        puts "\nYour current HP is: %i" % @hp
   ######        return true
   ######     end
   ######  end
   
   def getHp()
      return @hp
   end
end


########################################################################

#### 			END PLAYER.RB CODE ADDED AND MODIFEID FROM RUBYQUEST #####

#########################################################################




d1 = Deck.new.shuffle!
puts card = d1.draw
hand01 = d1.draw(7)
hand02 = d1.draw(7)
hand03 = d1.draw(7)


puts hand01.sort.join(", ")
puts hand02.sort.join(", ")
puts hand03.sort.join(", ")
puts hand04.sort.join(", ")

# d1.cards.each { |card| in_play.push ("#{card.rank} of #{card.suit}") }
#d1.cards.each_with_index { |card, index| puts card }
#player1 = Player.new


#hand = cards.draw(7)
#puts hand.join(", ")

## Displays each card one by one
#d1.cards.select{ |num| puts "#{num.rank} of #{card.suit}" }



#puts "#{cards.rank} of #{cards.suit}"
