require 'passenger'

describe Passenger do

	let(:passenger) { Passenger.new}
	
	it "should not be in the station after we create it" do
		expect(passenger).not_to be_in_station
	end

	it "should be able to touch into station" do
		passenger.touch_in
		expect(passenger).to be_in_station
	end

	it "should be able to touch out of station" do
		passenger.touch_out
		expect(passenger).not_to be_in_station
	end

	it "should have travel credit" do
		expect(passenger.travel_credit).to eq(10)
	end

	it "should charge passenger when tapping in" do
		passenger.entry_charge
		expect(passenger.travel_credit).to eq(8)
	end
 
end