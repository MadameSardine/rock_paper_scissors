require 'rock'

describe Rock do 

	let(:rock) {Rock.new}

	it "can beat scissors" do
		expect(rock.beat_scissors).to be true
	end
	
end