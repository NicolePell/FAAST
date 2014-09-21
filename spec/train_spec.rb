require 'train'

describe Train do

	let(:train) { Train.new }
	let(:station) { Station.new }
	let(:coach) { double :coach }
	
		it "should hold coaches" do
			expect(train.coach_count).to eq(0)
			train.add_coach(coach)
			expect(train.coach_count).to eq(1)
		end


end