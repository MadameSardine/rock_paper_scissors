require 'rock'

describe Rock do 

	let(:rock) {Rock.new}

	it "should have a name" do
		expect(rock.name).to eq("Rock")
	end
end