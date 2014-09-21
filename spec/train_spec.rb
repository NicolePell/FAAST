require 'train'
require 'station'

describe Train do

	let(:train) { Train.new }
	let(:station) { Station.new }
	let(:coach) { double :coach }
	
		it "should be able to add coaches" do
			expect(train.coach_count).to eq(0)
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

		# it "should know when it is full" do
		# 	expect(train).not_to be_full
		# 	6.times { train.add_coach(coach)}
		# 	expect(train).to be_full
		# end
end