require 'coach'
require 'passenger'

describe Coach do 

	let(:coach) { Coach.new }
	let(:passenger) {Passenger.new}
	
	it "should have no passengers upon arrival" do
		expect(coach.passenger_count).to eq(0)
	end

	it "should allow passengers to board from station" do
		coach.board(passenger)
		expect(coach.passenger_count).to eq(1)
	end

	it "should allow passengers to alight to station" do
		coach.board(passenger)
		expect(coach.passenger_count).to eq(1)
		coach.alight(passenger)
		expect(coach.passenger_count).to eq(0)
	end

	it "should not allow passengers to board if full" do
		expect(coach).not_to be_full
		40.times { coach.board(passenger) }
		expect(coach).to be_full
	end

end