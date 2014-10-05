require 'paper'

describe Paper do 

	let(:paper) {Paper.new}

	it "should beat rock" do
		expect(paper.beat_rock).to be true
	end
	
end