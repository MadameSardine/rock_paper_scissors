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

	it "knows when it has a player" do
		game.add_player(player)
		expect(game.has_player?).to be(true)
	end

	it "knows when it has 2 players" do
		game.add_player(player)
		game.add_player(opponent)
		expect(game.has_two_players?).to be(true)
	end

	it "knows that rock beats scissors" do
		expect(game.assess_winner("Rock", "Scissors")).to eq("Player 1 wins")
	end

	it "knows that scissors beats paper" do
		expect(game.assess_winner("Scissors", "Paper")).to eq("Player 1 wins")
	end

	it "knows that paper beats rock" do
		expect(game.assess_winner("Paper", "Rock")).to eq("Player 1 wins")
	end

	it "knows that scissors is beaten by rock" do
		expect(game.assess_winner("Scissors", "Rock")).to eq("Player 2 wins")
	end

	it "knows that rock is beaten by paper" do
		expect(game.assess_winner("Rock", "Paper")).to eq("Player 2 wins")
	end

	it "knows that paper is beaten by scissors" do
		expect(game.assess_winner("Paper", "Scissors")).to eq("Player 2 wins")
	end

	it "knows when there is a draw" do
		expect(game.assess_winner("Rock", "Rock")).to eq("DRAW! Nobody wins")
	end
end