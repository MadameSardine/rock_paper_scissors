require 'paper'

describe Paper do 

	let(:paper) {Paper.new}

	it "should have a name" do
		expect(paper.name).to eq("Paper")
	end
end