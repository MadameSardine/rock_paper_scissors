require 'rock'

describe Rock do 

	let(:rock) {Rock.new}

	it "can beat scissors" do
		expect(rock.beat_scissors).to be true
	end

	it "can't beat paper" do
		expect(rock.beat_paper).to be false
	end

	it "can't beat rock" do
		expect(rock.beat_rock).to be false
	end
	
end