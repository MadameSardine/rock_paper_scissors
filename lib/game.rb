class Game

	attr_accessor :player1, :player2, :options

	RULES = {"Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock"}

	def initialize(options=[])
		@options = options
	end

	def add_player(player)
		has_player? ? self.player2 = player : self.player1 = player
	end

	def has_player?
		!player1.nil?
	end

	def has_two_players?
		has_player? && !player2.nil?
	end

	def add_option(option)
		options << option
	end

	def random_option
		options.sample
	end

	def assess_winner(option1, option2)
		if option1 == option2
			"DRAW! Nobody wins"
		elsif RULES[option1] == option2
			"Player 1 wins"
		else
			"Player 2 wins"
		end

	end

end