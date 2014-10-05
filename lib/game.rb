class Game

	attr_accessor :player1, :player2, :options

	def initialize(options=[])
		@options = options
	end

	def add_player(player)
		self.player1 ? self.player2 = player : self.player1 = player
	end

	def add_option(option)
		options << option
	end

	def random_option
		options.sample
	end

end