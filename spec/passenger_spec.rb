require 'passenger'

describe Passenger do

	let!(:passenger) { Passenger.new}
	let(:station) { double :station }
	
	it "should not be in the station after we create it" do
		expect(passenger).not_to be_in_station
	end

	it "should be able to touch into station" do
		expect(passenger.touch_in).to be_in_station
	end

	it "should be able to touch out of station" do
		expect(passenger.touch_out).not_to be_in_station
	end

	# it "should have travel credit" do
	# 	expect(passenger.travel_credit).to eq(10)
	# end

	# it "should not be able to touch in without credit" do
	# 	expect(passenger.travel_credit(1)).to eq(1)
	# end

	# it "should charge passenger when tapping in" do
	# 	passenger.entry_charge
	# 	expect(passenger.travel_credit).to eq(8)
	# end
 
end