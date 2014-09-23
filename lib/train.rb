class Train

	def initialize(capacity=6)
		@capacity = capacity
		@coaches = []
	end

	def capacity
		@capacity
	end

	def coach_count
		@coaches.count
	end

	def add_coach(coach)
		@coaches << coach
	end

	def remove_coach(coach)
		@coaches.delete(coach)
	end

	# def transfer(tooting, moorgate)
	# 	tooting.train_leave(self)
	# 	moorgate.train_arrive(self)
	# end


	# def full?
	# 	coach_count == train_length
	# end

end