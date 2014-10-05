require 'game'

describe Game do 

	let(:game) {Game.new}
	let(:player) {double :player}
	let(:opponent) {double :opponent}
	let(:rock) {double :rock}

	it "can have a player added" do
		game.add_player(player)
		expect(game.player1).to eq(player)
	end

	it "should have an opponent player" do
		game.add_player(player)
		game.add_player(opponent)
		expect(game.player2).to eq(opponent)
	end

	it "should have options" do
		expect(game.options).not_to be_nil
	end

	it "can add an option" do
		game.add_option(rock)
		expect(game.options).to eq([rock])
	end
end