require 'station'

describe Station do

	let(:station){ Station.new }
	# !bang allows same passenger to be tested throughout
	let!(:passenger){ double :passenger }
	let(:train) { double :train }
	let(:coach) { double :coach, :board => true}

	it "should let passenger touch in" do
		expect{ station.touch_in(passenger) }.to change { station.passenger_count }.by 1
	end
	
	it "should let passenger touch out" do
		station.touch_in(passenger)
		expect{ station.touch_out(passenger) }.to change { station.passenger_count }.by -1
	end

	it "should allow a train to arrive at the station" do
		expect{ station.train_arrive(train) }.to change { station.train_count }.by 1
	end

	it "should allow a train to leave the station" do
		station.train_arrive(train)
		expect{ station.train_leave(train) }.to change { station.train_count }.by -1
	end

	it "should know when there are no passengers inside" do
		expect(station.passenger_count).to eq(0)
	end

	it "should release passenger to train" do
		station.touch_in(passenger)
		expect{station.release(passenger) }.to change { station.passenger_count}.by -1
	end
end