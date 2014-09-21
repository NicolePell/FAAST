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

	it "shoule be able to touch out of station" do
		passenger.touch_out
		expect(passenger).not_to be_in_station
	end

end