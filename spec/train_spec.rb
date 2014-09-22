require 'train'

describe Train do

	let(:train) { Train.new }
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


 end

 		# it "should know when it is full" do
		# 	expect(train).not_to be_full
		# 	6.times { train.add_coach(coach)}
		# 	expect(train).to be_full
		# end

		# it "should travel between stations" do
		# 	passenger.touch_in
		# 	expect(passenger).to be_in_station
		# 	coach.board(passenger)
		# 	expect(coach.passenger_count).to eq(1)
		# 	tooting, moorgate = station, station
		# 	train.transfer(tooting, moorgate)
		# 	tooting.train_leave(train)
		# 	moorgate.train_arrive(train)
		# 	expect(tooting.train_count).to eq(0)
		# end