require 'player'

describe Player do

	let(:player) {Player.new}

	it "should have a name" do
		player.name = "Sandrine"
		expect(player.name).to eq("Sandrine")
	end

end