require 'train'

describe Train do

	let(:train) { Train.new }
	let(:coach) { double :coach }
	
		it "should be able to add coaches" do
			train.add_coach(coach)
			expect(train.coach_count).to eq(1)
		end

		it "should be able to remove coaches" do
			train.add_coach(coach)
			expect(train.coach_count).to eq(1)
			train.remove_coach(coach)
			expect(train.coach_count).to eq(0)
		end

		it "should have a capacity of 6 coaches" do
			expect(train.capacity).to eq(6)
		end
 end