require 'train'
require 'station'

describe Train do

	let(:train) { Train.new }
	let(:station) { Station.new }
	let(:coach) { double :coach }
	
		it "should hold coaches" do
			expect(train.coach_count).to eq(0)
			train.add_coach(coach)
			expect(train.coach_count).to eq(1)
		end

		it "should have a default of 6 coaches" do
			expect(train.coach_length).to eq(6)
		end

		it "should know when it is full" do
			expect(train).not_to be_full
			6.times { train.add_coach(coach)}
			expect(train).to be_full
		end
end