class Coach

DEFAULT_CAPACITY = 40

	def passengers
		@passengers ||= []
	end

	def passenger_count
		passengers.count
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def board(passenger)
		passengers << passenger
	end

	def alight(passenger)
		passengers.pop
	end

	def full?
		passenger_count == capacity
	end

end 