class Station

	# attr_accessor :passenger

	def initalize
		@passengers ||= []
		@trains ||= []
	end

	def passengers
		@passengers ||= []
	end

	def passenger_count
		passengers.count
	end

	def empty?
		passenger_count == 0
	end

	def touch_in(passenger)
		passengers << passenger
	end

	def touch_out(passenger)
		passengers.delete(passenger)
	end

	def trains
		@trains ||= []
	end

	def train_count
		trains.count
	end

	def train_arrive(train)
		trains << train
	end

	def train_leave(train)
		trains.delete(train)
	end

end