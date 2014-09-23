require 'coach'

describe Coach do 

	let(:coach) { Coach.new }
	let(:passenger) { double :passenger }
	let(:station) { double :station }
	
	# it "should have no passengers upon arrival" do
	# 	expect(coach.passenger_count).to eq(0)
	# end

	# it "should allow passengers to board from station" do
	# 	coach.board(passenger)
	# 	expect(coach.passenger_count).to eq(1)
	# end

	# it "should allow passengers to alight to station" do
	# 	coach.board(passenger)
	# 	expect{ coach.alight(passenger) }.to change{ coach.passenger_count }.by -1
	# end

	# it "should know when it's full" do
	# 	40.times { coach.board(passenger) }
	# 	expect(coach).to be_full
	# end

	# it "should not let more passengers than capacity board" do
	# 	40.times { coach.board(passenger) }
	# 	expect{ coach.board(passenger) }.to raise_error(RuntimeError)
	# end

end