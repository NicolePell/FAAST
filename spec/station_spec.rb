require 'station'

describe Station do

	let(:station){ Station.new }
	let(:passenger){ double :passenger }

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
end