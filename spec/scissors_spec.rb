require 'scissors'

describe Scissors do
	
	let(:scissors) {Scissors.new}

	it "should beat paper" do
		expect(scissors.beat_paper).to be true
	end
	
end