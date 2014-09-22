class Coach

DEFAULT_CAPACITY = 40

	def initialize
		@passengers = []
	end

	# def passengers
	# 	@passengers = []
	# end

	def passenger_count
		@passengers.count
	end

	def capacity
		@capacity = DEFAULT_CAPACITY
	end

	# def capacity=(value)
	# end

	def board(passenger)
		raise "Coach is full" if full?
		@passengers << passenger
	end

	def alight(passenger)
		@passengers.delete(passenger)
	end

	def full?
		passenger_count == capacity
	end

end 