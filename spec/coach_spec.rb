require 'coach'

describe Coach do 

	let(:coach) { Coach.new }
	let(:passenger) { double :passenger, touch_in: true, touch_out: false }
	let(:station) { double :station, :release => true , :arrive => true }
	
	it "should have no passengers upon arrival" do
		expect(coach.passenger_count).to eq(0)
	end

	it "should allow passengers to board from station" do
		coach.board(passenger, station)
		expect(coach.passenger_count).to eq(1)
	end

	it "should allow passengers to alight to station" do
		coach.board(passenger, station)
		expect{ coach.alight(passenger, station) }.to change{ coach.passenger_count }.by -1
	end

	it "should know when it's full" do
		40.times { coach.board(passenger, station) }
		expect(coach).to be_full
	end

	it "should not let more passengers than capacity board" do
		40.times { coach.board(passenger, station) }
		expect{ coach.board(passenger, station) }.to raise_error(RuntimeError)
	end

