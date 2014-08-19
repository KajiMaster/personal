#!/usr/bin/ruby

rps = %w(rock paper scissors)

vs = rps[rand(3)]


	puts "1. Rock"
	puts "2. Paper"
	puts "3. Scissors"
	print "> "
	choice = gets.chomp.to_i - 1
	
	while (choice > 2 && choice < 0) 	
		puts "Must select option 1 thru 3."
		puts "> "
		choice = gets.chomp.to_i - 1
	end

puts "You play:: #{rps[choice].upcase}"
puts "CPU play:: #{vs.upcase}"


if (choice.to_i == 0 && vs == "scissors") or
  (choice.to_i == 1 && vs == "rock") or
  (choice.to_i == 2 && vs == "paper")
  puts "Winner"
elsif (choice.to_i == 0 && vs == "paper") or
		(choice.to_i == 1 && vs == "scissors") or
		(choice.to_i == 2 && vs == "rock")
		puts "!!!!LOOSER!!!!"
else puts "TIE!"
end

#def pick_define(n)
#	if (n == 1) return "rock"
#	elsif (n == 2) return "paper"
#	else (n == 3) return "scissors"
#	end