require 'rock'

describe Rock do 

	let(:rock) {Rock.new}

	it "should have a name" do
		expect(rock.name).to eq("Rock")
	end

	it "should beat scissors" do
		expect(rock.beat_scissors).to be true
	end

	it "shouldn't beat paper" do
		expect(rock.beat_paper).to be false
	end
	
end