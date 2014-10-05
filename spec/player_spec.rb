require 'player'

describe Player do

	let(:player) {Player.new}
	let(:rock) {double :rock}

	it "should have a name" do
		player.name = "Sandrine"
		expect(player.name).to eq("Sandrine")
	end

	it "should select an option" do
		player.select(rock)
		expect(player.option).to eq(rock)
	end

end