require 'scissors'

describe Scissors do
	
	let(:scissors) {Scissors.new}

	it "should have a name" do
		expect(scissors.name).to eq("Scissors")
	end
end