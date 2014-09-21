require 'station'
require 'passenger'

describe Station do

	let(:station){ Station.new }
	let(:passenger){ double :passenger }
	let(:train) { double :train }
	let(:coach) { double :coach }

	it "should let passenger touch in" do
		expect(station.passenger_count).to eq(0)
		station.touch_in(passenger)
		expect(station.passenger_count).to eq(1)
	end
	
	it "should let passenger touch out" do
		station.touch_in(passenger)
		station.touch_out(passenger)
		expect(station.passenger_count).to eq(0)
	end

	it "should allow a train to arrive at the station" do
		expect(station.train_count).to eq(0)
		station.train_arrive(train)
		expect(station.train_count).to eq(1)
	end

	it "should allow a train to leave the station" do
		station.train_arrive(train)
		station.train_leave(train)
		expect(station.train_count).to eq(0)
	end

	it "should know when there are no passengers inside" do
		expect(station.passenger_count).to eq(0)
	end

end