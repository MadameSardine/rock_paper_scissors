require 'game'

describe Game do 

	let(:game) {Game.new}
	let(:player) {double :player}

	it "can have a player added" do
		game.add_player(player)
		expect(game.player1).to eq(player)
	end

end