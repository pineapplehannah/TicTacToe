#prompt user to pick a square
#replace that square in the board with the players stamp
#check against an array of winning combinations
#if no winning combinations || if number on spaces left on board >= 1
#prompt the next player to take a turn
#else, the game is over 
# if there is a winning combination, determine the winning player and print "Congratulations #{winning player}. You win!"

class Game

	@spaces = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	@player_a = 'X'
	player_b = 'O'

	winning_combos = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
	
	def self.play
		puts "Player A, pick the space on your board where you'd like to mark your #{@player_a}"
		puts " #{@spaces[0]} | #{@spaces[1]} | #{@spaces[2]}\n --------- \n #{@spaces[3]} | #{@spaces[4]} | #{@spaces[5]}\n --------- \n #{@spaces[6]} | #{@spaces[7]} | #{@spaces[8]}"
		choice = gets.chomp
		foo = @spaces.index(choice.to_i)
		@spaces[foo] = 'X'
		@board = " #{@spaces[0]} | #{@spaces[1]} | #{@spaces[2]}\n --------- \n #{@spaces[3]} | #{@spaces[4]} | #{@spaces[5]}\n --------- \n #{@spaces[6]} | #{@spaces[7]} | #{@spaces[8]}"
		puts @board


		#if @spaces.values_at(0, 1, 2 || 3, 4, 5 || 6, 7, 8 || 0, 3, 6 || 1, 4, 7 || 2, 5, 8 || 0, 4, 8 || 2, 4, 6) == ['X', 'X', 'X'] || ['O', 'O', 'O']
		#	puts "game is over. Winner is #{@player_a or @player_b}"
		#else
		#	# play_on (do this loop again. Make this a loop!)
		#end
	end

end

Game.play