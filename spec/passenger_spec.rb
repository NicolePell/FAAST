require 'passenger'

describe Passenger do

	let!(:passenger) { Passenger.new}
	let(:station) { double :station, enter: true}
	
	it "should not be in the station after we create it" do
		expect(passenger).not_to be_in_station
	end

	it "should be able to touch into station" do
		expect(passenger.touch_in(station)).to be_in_station
	end

	it "should be able to touch out of station" do
		expect(passenger.touch_out(station)).not_to be_in_station
	end

	it "should have travel credit" do
		expect(passenger.travel_credit).to eq(10)
	end

	it "should charge the passenger 2GBP when touching in" do
		expect{passenger.pay_travel_charge}.to change{passenger.travel_credit}.by -2
	end 

end